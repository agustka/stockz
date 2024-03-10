import 'package:drift/drift.dart';

@DataClassName("IncomeStatementTableRow")
class IncomeStatementTableRowDefinition extends Table {
  TextColumn get date => text()();
  TextColumn get symbol => text()();
  TextColumn get reportedCurrency => text().nullable()();
  TextColumn get cik => text().nullable()();
  TextColumn get fillingDate => text().nullable()();
  TextColumn get acceptedDate => text().nullable()();
  TextColumn get calendarYear => text().nullable()();
  TextColumn get period => text().nullable()();
  IntColumn get revenue => integer().nullable()();
  IntColumn get costOfRevenue => integer().nullable()();
  IntColumn get grossProfit => integer().nullable()();
  RealColumn get grossProfitRatio => real().nullable()();
  IntColumn get researchAndDevelopmentExpenses => integer().nullable()();
  IntColumn get generalAndAdministrativeExpenses => integer().nullable()();
  IntColumn get sellingAndMarketingExpenses => integer().nullable()();
  IntColumn get sellingGeneralAndAdministrativeExpenses => integer().nullable()();
  RealColumn get otherExpenses => real().nullable()();
  IntColumn get operatingExpenses => integer().nullable()();
  IntColumn get costAndExpenses => integer().nullable()();
  IntColumn get interestIncome => integer().nullable()();
  IntColumn get interestExpense => integer().nullable()();
  IntColumn get depreciationAndAmortization => integer().nullable()();
  IntColumn get ebitda => integer().nullable()();
  RealColumn get ebitdaratio => real().nullable()();
  IntColumn get operatingIncome => integer().nullable()();
  RealColumn get operatingIncomeRatio => real().nullable()();
  IntColumn get totalOtherIncomeExpensesNet => integer().nullable()();
  IntColumn get incomeBeforeTax => integer().nullable()();
  RealColumn get incomeBeforeTaxRatio => real().nullable()();
  IntColumn get incomeTaxExpense => integer().nullable()();
  IntColumn get netIncome => integer().nullable()();
  RealColumn get netIncomeRatio => real().nullable()();
  RealColumn get eps => real().nullable()();
  RealColumn get epsdiluted => real().nullable()();
  IntColumn get weightedAverageShsOut => integer().nullable()();
  IntColumn get weightedAverageShsOutDil => integer().nullable()();
  TextColumn get link => text().nullable()();
  TextColumn get finalLink => text().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol, date};
}
