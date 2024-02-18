import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/income_statement/cache/tables/income_statement_definition.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';

part 'income_statement_dao.g.dart';

@DriftAccessor(
  tables: [
    IncomeStatementTableRowDefinition,
  ],
)
@injectable
class IncomeStatementDao extends DatabaseAccessor<DriftDb> with _$IncomeStatementDaoMixin {
  IncomeStatementDao(super.db);

  Future<List<IncomeStatementTableRow>> getIncomeStatements({required String ticker}) async {
    return (select(incomeStatementTableRowDefinition)
          ..where(
            ($IncomeStatementTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
          ))
        .get();
  }

  Future<void> addIncomeStatements({
    required List<IncomeStatementModel> statements,
    required String ticker,
    required int ttlSeconds,
  }) async {
    final List<IncomeStatementModel> cloneList = statements.toList();
    return batch(
      (Batch batch) {
        batch.deleteWhere(
          incomeStatementTableRowDefinition,
          ($IncomeStatementTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
        );
        batch.insertAll(
          incomeStatementTableRowDefinition,
          cloneList
              .map(
                (IncomeStatementModel statement) => IncomeStatementTableRowDefinitionCompanion.insert(
                  symbol: statement.symbol!,
                  date: statement.date!,
                  reportedCurrency: Value(statement.reportedCurrency),
                  cik: Value(statement.cik),
                  fillingDate: Value(statement.fillingDate),
                  acceptedDate: Value(statement.acceptedDate),
                  calendarYear: Value(statement.calendarYear),
                  period: Value(statement.period),
                  revenue: Value(statement.revenue),
                  costOfRevenue: Value(statement.costOfRevenue),
                  grossProfit: Value(statement.grossProfit),
                  grossProfitRatio: Value(statement.grossProfitRatio),
                  researchAndDevelopmentExpenses: Value(statement.researchAndDevelopmentExpenses),
                  generalAndAdministrativeExpenses: Value(statement.generalAndAdministrativeExpenses),
                  sellingAndMarketingExpenses: Value(statement.sellingAndMarketingExpenses),
                  sellingGeneralAndAdministrativeExpenses: Value(statement.sellingGeneralAndAdministrativeExpenses),
                  otherExpenses: Value(statement.otherExpenses),
                  operatingExpenses: Value(statement.operatingExpenses),
                  costAndExpenses: Value(statement.costAndExpenses),
                  interestIncome: Value(statement.interestIncome),
                  interestExpense: Value(statement.interestExpense),
                  depreciationAndAmortization: Value(statement.depreciationAndAmortization),
                  ebitda: Value(statement.ebitda),
                  ebitdaratio: Value(statement.ebitdaratio),
                  operatingIncome: Value(statement.operatingIncome),
                  operatingIncomeRatio: Value(statement.operatingIncomeRatio),
                  totalOtherIncomeExpensesNet: Value(statement.totalOtherIncomeExpensesNet),
                  incomeBeforeTax: Value(statement.incomeBeforeTax),
                  incomeBeforeTaxRatio: Value(statement.incomeBeforeTaxRatio),
                  incomeTaxExpense: Value(statement.incomeTaxExpense),
                  netIncome: Value(statement.netIncome),
                  netIncomeRatio: Value(statement.netIncomeRatio),
                  eps: Value(statement.eps),
                  epsdiluted: Value(statement.epsdiluted),
                  weightedAverageShsOut: Value(statement.weightedAverageShsOut),
                  weightedAverageShsOutDil: Value(statement.weightedAverageShsOutDil),
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
