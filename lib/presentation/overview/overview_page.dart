import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:stockz/application/overview/overview_cubit.dart';
import 'package:stockz/domain/company/entities/company.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/company/repository/i_company_repository.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

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
    final List<String> tickers = [
      'MO',
      /*'AMCX',
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
      'ZYME',*/
    ];

    for (final String ticker in tickers) {
      getIt<ICompanyRepository>().getCompany(symbol: ticker).then(
        (Payload<Company> payload) {
          payload.fold(
            (Failure failure) {
              Logger().e(failure);
            },
            (Company value) {
              final double fScore = value.getPiotroskiFScore();
              print("${value.profile.companyName.get} (${value.profile.symbol.get}): F score: $fScore");
              print("${value.profile.companyName.get} (${value.profile.symbol.get}): EMA: ${value.chart.historical.first}");
            },
          );
        },
      );
    }
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
            child: _getBody(context),
          );
        },
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return StRefreshIndicator(
      onRefresh: () async {
        context.read<OverviewCubit>().getData(forceGet: true);
      },
      child: const SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
