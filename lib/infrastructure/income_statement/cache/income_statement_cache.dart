import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/income_statement/cache/i_income_statement_cache.dart';
import 'package:stockz/infrastructure/income_statement/cache/income_statement_dao.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';

@Injectable(as: IIncomeStatementCache)
class IncomeStatementCache with BaseCache implements IIncomeStatementCache {
  final IncomeStatementDao incomeStatementDao;

  IncomeStatementCache(this.incomeStatementDao);

  @override
  Future<Cache<List<IncomeStatementModel>>> getIncomeStatements({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => incomeStatementDao.getIncomeStatements(ticker: ticker),
      getExpires: (List<IncomeStatementTableRow> rows) => rows.first.expires,
      conversionMethod: (List<IncomeStatementTableRow> rows) {
        final List<IncomeStatementModel> statements =
        rows.map((IncomeStatementTableRow e) => IncomeStatementModel.fromTableRow(e)).toList();
        return statements;
      },
    );
  }

  @override
  Future addIncomeStatements({
    required String ticker,
    required List<IncomeStatementModel> statements,
  }) {
    final Future added = incomeStatementDao.addIncomeStatements(
      ticker: ticker,
      statements: statements,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addIncomeStatements");
    return added;
  }
}
