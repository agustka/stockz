import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stockz/application/overview/overview_cubit.dart';
import 'package:stockz/domain/analysis_rules/f_score.dart';
import 'package:stockz/domain/chart/entities/impulse_macd.dart';
import 'package:stockz/domain/company/entities/company.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/stock_listing/entities/stock_listings.dart';
import 'package:stockz/infrastructure/company/repository/i_company_repository.dart';
import 'package:stockz/infrastructure/stock_listings/repository/i_stock_listings_repository.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
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
  List<Company> _companies = [];

  @override
  void initState() {
    super.initState();
    final List<String> tickers = [
      'MO',
      'AMCX',
      'ARCT',
      'ASRT',
      'BTMD',
      'BKE',
      'BBW',
      'CARG',
      'CPRX',
      'LNG',
      'COLL',
      'CCSI',
      'CROX',
      'CVS',
      'EVRI',
      'GTX',
      'GPOR',
      'HRB',
      'HRMY',
      'HSII',
      'HPQ',
      'IMMR',
      'IDCC',
      'JILL',
      'JAKK',
      'MAN',
      'MCFT',
      'MED',
      'MLI',
      'NATH',
      'OCUP',
      'OMC',
      'MD',
      'PRDO',
      'PLTK',
      'PINC',
      'RCMT',
      'RMNI',
      'SCYX',
      'SMLR',
      'SPRO',
      'STGW',
      'SURG',
      'TPR',
      'TH',
      'TZOO',
      'UIS',
      'UNTC',
      'VYGR',
      'ZYME',
    ];

    /*getIt<IStockListingsRepository>().getStockListings().then(
      (Payload<StockListings> value) {
        print(value);
      },
    );*/

    getIt<ICompanyRepository>().getCompanies(tickers: tickers).then((List<Company> companies) {
      final List<Company> fscores = companies.toList()
        ..sort(
          (Company left, Company right) {
            return FScore(company: left).getFScore().compareTo(FScore(company: right).getFScore());
          },
        );
      setState(() {
        _companies = fscores;
      });
    });
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
          return StScaffold(
            child: MacdChart(companies: _companies),
          );
        },
      ),
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
                  StText(company.profile.getNameOrSymbol(), TextType.medium),
                  StText(company.getScoreSummary(), TextType.small),
                  StText(trade.getSummary(), TextType.medium),

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
