import 'package:drift/drift.dart';

@DataClassName("BalanceSheetStatementTableRow")
class BalanceSheetStatementTableRowDefinition extends Table {
  TextColumn get date => text()();
  TextColumn get symbol => text()();
  TextColumn get reportedCurrency => text().nullable()();
  TextColumn get cik => text().nullable()();
  TextColumn get fillingDate => text().nullable()();
  TextColumn get acceptedDate => text().nullable()();
  TextColumn get calendarYear => text().nullable()();
  TextColumn get period => text().nullable()();
  IntColumn get cashAndCashEquivalents => integer().nullable()();
  IntColumn get shortTermInvestments => integer().nullable()();
  IntColumn get cashAndShortTermInvestments => integer().nullable()();
  IntColumn get netReceivables => integer().nullable()();
  IntColumn get inventory => integer().nullable()();
  IntColumn get otherCurrentAssets => integer().nullable()();
  IntColumn get totalCurrentAssets => integer().nullable()();
  IntColumn get propertyPlantEquipmentNet => integer().nullable()();
  IntColumn get goodwill => integer().nullable()();
  IntColumn get intangibleAssets => integer().nullable()();
  IntColumn get goodwillAndIntangibleAssets => integer().nullable()();
  IntColumn get longTermInvestments => integer().nullable()();
  IntColumn get taxAssets => integer().nullable()();
  IntColumn get otherNonCurrentAssets => integer().nullable()();
  IntColumn get totalNonCurrentAssets => integer().nullable()();
  IntColumn get otherAssets => integer().nullable()();
  IntColumn get totalAssets => integer().nullable()();
  IntColumn get accountPayables => integer().nullable()();
  IntColumn get shortTermDebt => integer().nullable()();
  IntColumn get taxPayables => integer().nullable()();
  IntColumn get deferredRevenue => integer().nullable()();
  IntColumn get otherCurrentLiabilities => integer().nullable()();
  IntColumn get totalCurrentLiabilities => integer().nullable()();
  IntColumn get longTermDebt => integer().nullable()();
  IntColumn get deferredRevenueNonCurrent => integer().nullable()();
  IntColumn get deferredTaxLiabilitiesNonCurrent => integer().nullable()();
  IntColumn get otherNonCurrentLiabilities => integer().nullable()();
  IntColumn get totalNonCurrentLiabilities => integer().nullable()();
  IntColumn get otherLiabilities => integer().nullable()();
  IntColumn get capitalLeaseObligations => integer().nullable()();
  IntColumn get totalLiabilities => integer().nullable()();
  IntColumn get preferredStock => integer().nullable()();
  IntColumn get commonStock => integer().nullable()();
  IntColumn get retainedEarnings => integer().nullable()();
  IntColumn get accumulatedOtherComprehensiveIncomeLoss => integer().nullable()();
  IntColumn get othertotalStockholdersEquity => integer().nullable()();
  IntColumn get totalStockholdersEquity => integer().nullable()();
  IntColumn get totalEquity => integer().nullable()();
  IntColumn get totalLiabilitiesAndStockholdersEquity => integer().nullable()();
  IntColumn get minorityInterest => integer().nullable()();
  IntColumn get totalLiabilitiesAndTotalEquity => integer().nullable()();
  IntColumn get totalInvestments => integer().nullable()();
  IntColumn get totalDebt => integer().nullable()();
  IntColumn get netDebt => integer().nullable()();
  TextColumn get link => text().nullable()();
  TextColumn get finalLink => text().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol, date};
}
