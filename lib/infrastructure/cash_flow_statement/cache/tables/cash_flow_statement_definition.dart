import 'package:drift/drift.dart';

@DataClassName("CashFlowStatementTableRow")
class CashFlowStatementTableRowDefinition extends Table {
  TextColumn get date => text()();
  TextColumn get symbol => text()();
  TextColumn get reportedCurrency => text().nullable()();
  TextColumn get cik => text().nullable()();
  TextColumn get fillingDate => text().nullable()();
  TextColumn get acceptedDate => text().nullable()();
  TextColumn get calendarYear => text().nullable()();
  TextColumn get period => text().nullable()();
  IntColumn get netIncome => integer().nullable()();
  IntColumn get depreciationAndAmortization => integer().nullable()();
  IntColumn get deferredIncomeTax => integer().nullable()();
  IntColumn get stockBasedCompensation => integer().nullable()();
  IntColumn get changeInWorkingCapital => integer().nullable()();
  IntColumn get accountsReceivables => integer().nullable()();
  IntColumn get inventory => integer().nullable()();
  IntColumn get accountsPayables => integer().nullable()();
  IntColumn get otherWorkingCapital => integer().nullable()();
  IntColumn get otherNonCashItems => integer().nullable()();
  IntColumn get netCashProvidedByOperatingActivities => integer().nullable()();
  IntColumn get investmentsInPropertyPlantAndEquipment => integer().nullable()();
  IntColumn get acquisitionsNet => integer().nullable()();
  IntColumn get purchasesOfInvestments => integer().nullable()();
  IntColumn get salesMaturitiesOfInvestments => integer().nullable()();
  IntColumn get otherInvestingActivites => integer().nullable()();
  IntColumn get netCashUsedForInvestingActivites => integer().nullable()();
  IntColumn get debtRepayment => integer().nullable()();
  IntColumn get commonStockIssued => integer().nullable()();
  IntColumn get commonStockRepurchased => integer().nullable()();
  IntColumn get dividendsPaid => integer().nullable()();
  IntColumn get otherFinancingActivites => integer().nullable()();
  IntColumn get netCashUsedProvidedByFinancingActivities => integer().nullable()();
  IntColumn get effectOfForexChangesOnCash => integer().nullable()();
  IntColumn get netChangeInCash => integer().nullable()();
  IntColumn get cashAtEndOfPeriod => integer().nullable()();
  IntColumn get cashAtBeginningOfPeriod => integer().nullable()();
  IntColumn get operatingCashFlow => integer().nullable()();
  IntColumn get capitalExpenditure => integer().nullable()();
  IntColumn get freeCashFlow => integer().nullable()();
  TextColumn get link => text().nullable()();
  TextColumn get finalLink => text().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol, date};
}
