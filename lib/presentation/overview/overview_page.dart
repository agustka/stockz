import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:stockz/application/overview/overview_cubit.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart';
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart';
import 'package:stockz/infrastructure/company_profile/repository/i_company_profile_repository.dart';
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
    final tickers2 = ["AAPL"];

    for (final String ticker in tickers2) {
      getIt<IBalanceSheetStatementRepository>().getBalanceSheetStatements(ticker: ticker).then(
        (Payload<BalanceSheetStatements> payload) {
          payload.fold(
            (Failure failure) {
              Logger().e(failure);
            },
            (BalanceSheetStatements value) {
              Logger().i(value);
            },
          );
        },
      );
      getIt<ICashFlowStatementRepository>().getCashFlowStatements(ticker: ticker).then(
        (Payload<CashFlowStatements> payload) {
          payload.fold(
            (Failure failure) {
              Logger().e(failure);
            },
            (CashFlowStatements value) {
              Logger().i(value);
            },
          );
        },
      );
      getIt<ICompanyProfileRepository>().getCompanyProfile(ticker: ticker).then(
        (Payload<CompanyProfile> payload) {
          payload.fold(
            (Failure failure) {
              Logger().e(failure);
            },
            (CompanyProfile value) {
              Logger().i(value);
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
