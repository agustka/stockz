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
  TextColumn get netIncome => text().nullable()();
  RealColumn get depreciationAndAmortization => real().nullable()();
  RealColumn get deferredIncomeTax => real().nullable()();
  RealColumn get stockBasedCompensation => real().nullable()();
  RealColumn get changeInWorkingCapital => real().nullable()();
  RealColumn get accountsReceivables => real().nullable()();
  RealColumn get inventory => real().nullable()();
  RealColumn get accountsPayables => real().nullable()();
  RealColumn get otherWorkingCapital => real().nullable()();
  RealColumn get otherNonCashItems => real().nullable()();
  RealColumn get netCashProvidedByOperatingActivities => real().nullable()();
  RealColumn get investmentsInPropertyPlantAndEquipment => real().nullable()();
  RealColumn get acquisitionsNet => real().nullable()();
  RealColumn get purchasesOfInvestments => real().nullable()();
  RealColumn get salesMaturitiesOfInvestments => real().nullable()();
  RealColumn get otherInvestingActivites => real().nullable()();
  RealColumn get netCashUsedForInvestingActivites => real().nullable()();
  RealColumn get debtRepayment => real().nullable()();
  RealColumn get commonStockIssued => real().nullable()();
  RealColumn get commonStockRepurchased => real().nullable()();
  RealColumn get dividendsPaid => real().nullable()();
  RealColumn get otherFinancingActivites => real().nullable()();
  RealColumn get netCashUsedProvidedByFinancingActivities => real().nullable()();
  RealColumn get effectOfForexChangesOnCash => real().nullable()();
  RealColumn get netChangeInCash => real().nullable()();
  RealColumn get cashAtEndOfPeriod => real().nullable()();
  RealColumn get cashAtBeginningOfPeriod => real().nullable()();
  RealColumn get operatingCashFlow => real().nullable()();
  RealColumn get capitalExpenditure => real().nullable()();
  RealColumn get freeCashFlow => real().nullable()();
  TextColumn get link => text().nullable()();
  TextColumn get finalLink => text().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol, date};
}
