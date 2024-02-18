import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/tables/cash_flow_statement_definition.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'cash_flow_statement_dao.g.dart';

@DriftAccessor(
  tables: [
    CashFlowStatementTableRowDefinition,
  ],
)
@injectable
class CashFlowStatementDao extends DatabaseAccessor<DriftDb> with _$CashFlowStatementDaoMixin {
  CashFlowStatementDao(super.db);

  Future<List<CashFlowStatementTableRow>> getCashFlowStatements({required String ticker}) async {
    return (select(cashFlowStatementTableRowDefinition)
          ..where(
            ($CashFlowStatementTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
          ))
        .get();
  }

  Future<void> addCashFlowStatements({
    required List<CashFlowStatementModel> statements,
    required String ticker,
    required int ttlSeconds,
  }) async {
    final List<CashFlowStatementModel> cloneList = statements.toList();
    return batch(
      (Batch batch) {
        batch.deleteWhere(
          cashFlowStatementTableRowDefinition,
          ($CashFlowStatementTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
        );
        batch.insertAll(
          cashFlowStatementTableRowDefinition,
          cloneList
              .map(
                (CashFlowStatementModel statement) => CashFlowStatementTableRowDefinitionCompanion.insert(
                  date: statement.date!,
                  symbol: statement.symbol!,
                  reportedCurrency: Value(statement.reportedCurrency),
                  cik: Value(statement.cik),
                  fillingDate: Value(statement.fillingDate),
                  acceptedDate: Value(statement.acceptedDate),
                  calendarYear: Value(statement.calendarYear),
                  period: Value(statement.period),
                  netIncome: Value(statement.netIncome),
                  depreciationAndAmortization: Value(statement.depreciationAndAmortization),
                  deferredIncomeTax: Value(statement.deferredIncomeTax),
                  stockBasedCompensation: Value(statement.stockBasedCompensation),
                  changeInWorkingCapital: Value(statement.changeInWorkingCapital),
                  accountsReceivables: Value(statement.accountsReceivables),
                  inventory: Value(statement.inventory),
                  accountsPayables: Value(statement.accountsPayables),
                  otherWorkingCapital: Value(statement.otherWorkingCapital),
                  otherNonCashItems: Value(statement.otherNonCashItems),
                  netCashProvidedByOperatingActivities: Value(statement.netCashProvidedByOperatingActivities),
                  investmentsInPropertyPlantAndEquipment: Value(statement.investmentsInPropertyPlantAndEquipment),
                  acquisitionsNet: Value(statement.acquisitionsNet),
                  purchasesOfInvestments: Value(statement.purchasesOfInvestments),
                  salesMaturitiesOfInvestments: Value(statement.salesMaturitiesOfInvestments),
                  otherInvestingActivites: Value(statement.otherInvestingActivites),
                  netCashUsedForInvestingActivites: Value(statement.netCashUsedForInvestingActivites),
                  debtRepayment: Value(statement.debtRepayment),
                  commonStockIssued: Value(statement.commonStockIssued),
                  commonStockRepurchased: Value(statement.commonStockRepurchased),
                  dividendsPaid: Value(statement.dividendsPaid),
                  otherFinancingActivites: Value(statement.otherFinancingActivites),
                  netCashUsedProvidedByFinancingActivities: Value(statement.netCashUsedProvidedByFinancingActivities),
                  effectOfForexChangesOnCash: Value(statement.effectOfForexChangesOnCash),
                  netChangeInCash: Value(statement.netChangeInCash),
                  cashAtEndOfPeriod: Value(statement.cashAtEndOfPeriod),
                  cashAtBeginningOfPeriod: Value(statement.cashAtBeginningOfPeriod),
                  operatingCashFlow: Value(statement.operatingCashFlow),
                  capitalExpenditure: Value(statement.capitalExpenditure),
                  freeCashFlow: Value(statement.freeCashFlow),
                  link: Value(statement.link),
                  finalLink: Value(statement.finalLink),
                  expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
