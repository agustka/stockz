import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stockz/application/overview/overview_cubit.dart';
import 'package:stockz/domain/chart/entities/impulse_macd.dart';
import 'package:stockz/domain/company/entities/company.dart';
import 'package:stockz/domain/exchange_listing/value_objects/exchange_symbol_value_object.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/presentation/core/widgets/text/st_feature_heading.dart';
import 'package:stockz/setup.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class OverviewPage extends StatefulWidget {
  static Widget creator(_) => const OverviewPage();

  const OverviewPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OverviewPageState();
  }
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OverviewCubit>(
      create: (BuildContext context) => getIt<OverviewCubit>()..getData(forceGet: false),
      child: BlocBuilder<OverviewCubit, OverviewState>(
        builder: (BuildContext context, OverviewState state) {
          switch (state.status) {
            case OverviewStatus.loading:
              return const Center(child: StDotLoader());
            case OverviewStatus.loaded:
              return _OverviewContent(exchanges: state.exchanges);
          }
        },
      ),
    );
  }
}

class _OverviewContent extends StatelessWidget {
  final List<ExchangeSymbolValueObject> exchanges;

  const _OverviewContent({super.key, required this.exchanges});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StFeatureHeading(text: S.of(context).overview_stock_exchanges, subText: S.of(context).overview_stock_exchanges_explanation,),
        Expanded(
          child: StRefreshIndicator(
            onRefresh: () async {
              context.read<OverviewCubit>().getData(forceGet: true);
            },
            child: ListView.separated(
              itemCount: exchanges.length,
              separatorBuilder: (BuildContext context, int index) {
                return const StDivider();
              },
              itemBuilder: (BuildContext context, int index) {
                return StListTile(
                  onTap: () {
                    context.read<OverviewCubit>().gotoExchange(exchangeSymbol: exchanges[index].get);
                  },
                  leading: StSvg(
                    exchanges[index].getExchangeFlag(),
                    width: 24,
                    height: 24,
                  ),
                  leadingText: exchanges[index].getExchangeName(),
                  leadingTextStyle: StTheme.of(context).fonts.body16.bold,
                  subLeadingText: exchanges[index].getExchangeCountry(),
                  trailingText: exchanges[index].get,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class MacdChart extends StatefulWidget {
  final List<Company> companies;

  const MacdChart({required this.companies});

  @override
  State<StatefulWidget> createState() {
    return _MacdChartState();
  }
}

class _MacdChartState extends State<MacdChart> {
  int _selectedCompany = 0;

  @override
  Widget build(BuildContext context) {
    return StScaffold(
      appBar: const StAppBar(),
      child: widget.companies.isEmpty ? _loadingContent() : _loadedContent(),
    );
  }

  Widget _loadingContent() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _loadedContent() {
    final Company company = widget.companies[_selectedCompany];
    final TradeRecommendation trade =
        company.chart.calculateImpulseMacd().checkTradeOpportunity(sharesOwned: 0, prices: company.chart.historical);

    return Column(
      children: [
        Row(
          children: [
            IconButton(onPressed: _prevCompany, icon: const Icon(Icons.chevron_left), iconSize: 34),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StText(company.profile.getNameOrSymbol(), style: StTheme.of(context).fonts.body16),
                  StText(company.getScoreSummary(), style: StTheme.of(context).fonts.body16),
                  StText(trade.getSummary(), style: StTheme.of(context).fonts.body16),
                ],
              ),
            ),
            IconButton(onPressed: _nextCompany, icon: const Icon(Icons.chevron_right), iconSize: 34),
          ],
        ),
        Expanded(
          child: SfCartesianChart(
            series: [
              company.chart.createPriceLineSeries(dampen: 0.3),
              company.chart.createEmaLineSeries(14, dampen: 0.3),
              ...company.chart.calculateImpulseMacd().getSeries(),
            ],
          ),
        ),
      ],
    );
  }

  void _prevCompany() {
    setState(() {
      _selectedCompany--;
      if (_selectedCompany < 0) {
        _selectedCompany = widget.companies.length - 1;
      }
    });
  }

  void _nextCompany() {
    setState(() {
      _selectedCompany++;
      if (_selectedCompany >= widget.companies.length) {
        _selectedCompany = 0;
      }
    });
  }
}
