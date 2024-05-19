import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/chart/entities/chart.dart';
import 'package:stockz/domain/company/entities/company.dart';
import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/income_statement/entities/income_statements.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart';
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart';
import 'package:stockz/infrastructure/chart/repository/i_chart_repository.dart';
import 'package:stockz/infrastructure/company/repository/i_company_repository.dart';
import 'package:stockz/infrastructure/company_profile/repository/i_company_profile_repository.dart';
import 'package:stockz/infrastructure/income_statement/repository/i_income_statement_repository.dart';

@LazySingleton(as: ICompanyRepository)
class CompanyRepository implements ICompanyRepository {
  final IBalanceSheetStatementRepository _balanceSheetRepo;
  final ICashFlowStatementRepository _cashFlowRepo;
  final ICompanyProfileRepository _companyProfileRepo;
  final IIncomeStatementRepository _incomeRepo;
  final IChartRepository _chartRepo;

  CompanyRepository(
    this._balanceSheetRepo,
    this._cashFlowRepo,
    this._companyProfileRepo,
    this._incomeRepo,
    this._chartRepo,
  );

  @override
  Future<Payload<Company>> getCompany({
    required String symbol,
    bool forceGet = false,
  }) async {
    final List<Future<Payload>> futures = [];

    futures.add(_balanceSheetRepo.getBalanceSheetStatements(symbol: symbol));
    futures.add(_cashFlowRepo.getCashFlowStatements(symbol: symbol));
    futures.add(_companyProfileRepo.getCompanyProfile(symbol: symbol));
    futures.add(_incomeRepo.getIncomeStatements(symbol: symbol));
    futures.add(
      _chartRepo.getChart(
        symbol: symbol,
        from: DateTime.now().subtract(const Duration(days: 120)),
        to: DateTime.now(),
      ),
    );

    final List<dynamic> results = await Future.wait(futures);

    final Payload<BalanceSheetStatements> balanceSheetPayload = results.first as Payload<BalanceSheetStatements>;
    final Payload<CashFlowStatements> cashflowPayload = results[1] as Payload<CashFlowStatements>;
    final Payload<CompanyProfile> profilePayload = results[2] as Payload<CompanyProfile>;
    final Payload<IncomeStatements> incomePayload = results[3] as Payload<IncomeStatements>;
    final Payload<Chart> chartPayload = results[4] as Payload<Chart>;

    final bool allFailed =
        balanceSheetPayload.failed && cashflowPayload.failed && profilePayload.failed && incomePayload.failed;
    if (allFailed) {
      return Payload.failure(const Failure.serviceError(message: "All requests failed"));
    }

    final BalanceSheetStatements balanceSheet = balanceSheetPayload.getOr(const BalanceSheetStatements.invalid());
    final CashFlowStatements cashflow = cashflowPayload.getOr(const CashFlowStatements.invalid());
    final CompanyProfile profile = profilePayload.getOr(const CompanyProfile.invalid());
    final IncomeStatements income = incomePayload.getOr(const IncomeStatements.invalid());
    final Chart chart = chartPayload.getOr(const Chart.invalid());

    return Payload.success(
      Company(
        profile: profile,
        balanceSheetStatements: balanceSheet,
        cashFlowStatements: cashflow,
        incomeStatements: income,
        chart: chart,
      ),
    );
  }
}
