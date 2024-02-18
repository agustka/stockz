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
  RealColumn get revenue => real().nullable()();
  RealColumn get costOfRevenue => real().nullable()();
  RealColumn get grossProfit => real().nullable()();
  RealColumn get grossProfitRatio => real().nullable()();
  RealColumn get researchAndDevelopmentExpenses => real().nullable()();
  RealColumn get generalAndAdministrativeExpenses => real().nullable()();
  RealColumn get sellingAndMarketingExpenses => real().nullable()();
  RealColumn get sellingGeneralAndAdministrativeExpenses => real().nullable()();
  RealColumn get otherExpenses => real().nullable()();
  RealColumn get operatingExpenses => real().nullable()();
  RealColumn get costAndExpenses => real().nullable()();
  RealColumn get interestIncome => real().nullable()();
  RealColumn get interestExpense => real().nullable()();
  RealColumn get depreciationAndAmortization => real().nullable()();
  RealColumn get ebitda => real().nullable()();
  RealColumn get ebitdaratio => real().nullable()();
  RealColumn get operatingIncome => real().nullable()();
  RealColumn get operatingIncomeRatio => real().nullable()();
  RealColumn get totalOtherIncomeExpensesNet => real().nullable()();
  RealColumn get incomeBeforeTax => real().nullable()();
  RealColumn get incomeBeforeTaxRatio => real().nullable()();
  RealColumn get incomeTaxExpense => real().nullable()();
  RealColumn get netIncome => real().nullable()();
  RealColumn get netIncomeRatio => real().nullable()();
  RealColumn get eps => real().nullable()();
  RealColumn get epsdiluted => real().nullable()();
  RealColumn get weightedAverageShsOut => real().nullable()();
  RealColumn get weightedAverageShsOutDil => real().nullable()();
  TextColumn get link => text().nullable()();
  TextColumn get finalLink => text().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol, date};
}
