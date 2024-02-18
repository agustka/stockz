import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/cache/tables/balance_sheet_statement_definition.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'balance_sheet_statement_dao.g.dart';

@DriftAccessor(
  tables: [
    BalanceSheetStatementTableRowDefinition,
  ],
)
@injectable
class BalanceSheetStatementDao extends DatabaseAccessor<DriftDb> with _$BalanceSheetStatementDaoMixin {
  BalanceSheetStatementDao(super.db);

  Future<List<BalanceSheetStatementTableRow>> getBalanceSheetStatements({required String ticker}) async {
    return (select(balanceSheetStatementTableRowDefinition)
          ..where(
            ($BalanceSheetStatementTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
          ))
        .get();
  }

  Future<void> addBalanceSheetStatements({
    required List<BalanceSheetStatementModel> statements,
    required String ticker,
    required int ttlSeconds,
  }) async {
    final List<BalanceSheetStatementModel> cloneList = statements.toList();
    return batch(
      (Batch batch) {
        batch.deleteWhere(
          balanceSheetStatementTableRowDefinition,
          ($BalanceSheetStatementTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
        );
        batch.insertAll(
          balanceSheetStatementTableRowDefinition,
          cloneList
              .map(
                (BalanceSheetStatementModel statement) => BalanceSheetStatementTableRowDefinitionCompanion.insert(
                  date: statement.date!,
                  symbol: statement.symbol!,
                  reportedCurrency: Value(statement.reportedCurrency),
                  cik: Value(statement.cik),
                  fillingDate: Value(statement.fillingDate),
                  acceptedDate: Value(statement.acceptedDate),
                  calendarYear: Value(statement.calendarYear),
                  period: Value(statement.period),
                  cashAndCashEquivalents: Value(statement.cashAndCashEquivalents),
                  shortTermInvestments: Value(statement.shortTermInvestments),
                  cashAndShortTermInvestments: Value(statement.cashAndShortTermInvestments),
                  netReceivables: Value(statement.netReceivables),
                  inventory: Value(statement.inventory),
                  otherCurrentAssets: Value(statement.otherCurrentAssets),
                  totalCurrentAssets: Value(statement.totalCurrentAssets),
                  propertyPlantEquipmentNet: Value(statement.propertyPlantEquipmentNet),
                  goodwill: Value(statement.goodwill),
                  intangibleAssets: Value(statement.intangibleAssets),
                  goodwillAndIntangibleAssets: Value(statement.goodwillAndIntangibleAssets),
                  longTermInvestments: Value(statement.longTermInvestments),
                  taxAssets: Value(statement.taxAssets),
                  otherNonCurrentAssets: Value(statement.otherNonCurrentAssets),
                  totalNonCurrentAssets: Value(statement.totalNonCurrentAssets),
                  otherAssets: Value(statement.otherAssets),
                  totalAssets: Value(statement.totalAssets),
                  accountPayables: Value(statement.accountPayables),
                  shortTermDebt: Value(statement.shortTermDebt),
                  taxPayables: Value(statement.taxPayables),
                  deferredRevenue: Value(statement.deferredRevenue),
                  otherCurrentLiabilities: Value(statement.otherCurrentLiabilities),
                  totalCurrentLiabilities: Value(statement.totalCurrentLiabilities),
                  longTermDebt: Value(statement.longTermDebt),
                  deferredRevenueNonCurrent: Value(statement.deferredRevenueNonCurrent),
                  deferredTaxLiabilitiesNonCurrent: Value(statement.deferredTaxLiabilitiesNonCurrent),
                  otherNonCurrentLiabilities: Value(statement.otherNonCurrentLiabilities),
                  totalNonCurrentLiabilities: Value(statement.totalNonCurrentLiabilities),
                  otherLiabilities: Value(statement.otherLiabilities),
                  capitalLeaseObligations: Value(statement.capitalLeaseObligations),
                  totalLiabilities: Value(statement.totalLiabilities),
                  preferredStock: Value(statement.preferredStock),
                  commonStock: Value(statement.commonStock),
                  retainedEarnings: Value(statement.retainedEarnings),
                  accumulatedOtherComprehensiveIncomeLoss: Value(statement.accumulatedOtherComprehensiveIncomeLoss),
                  othertotalStockholdersEquity: Value(statement.othertotalStockholdersEquity),
                  totalStockholdersEquity: Value(statement.totalStockholdersEquity),
                  totalEquity: Value(statement.totalEquity),
                  totalLiabilitiesAndStockholdersEquity: Value(statement.totalLiabilitiesAndStockholdersEquity),
                  minorityInterest: Value(statement.minorityInterest),
                  totalLiabilitiesAndTotalEquity: Value(statement.totalLiabilitiesAndTotalEquity),
                  totalInvestments: Value(statement.totalInvestments),
                  totalDebt: Value(statement.totalDebt),
                  netDebt: Value(statement.netDebt),
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
