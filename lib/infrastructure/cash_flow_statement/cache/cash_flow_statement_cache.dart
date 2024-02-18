import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

@Injectable(as: ICashFlowStatementCache)
class CashFlowStatementCache with BaseCache implements ICashFlowStatementCache {
  final CashFlowStatementDao cashFlowStatementDao;

  CashFlowStatementCache(this.cashFlowStatementDao);

  @override
  Future<Cache<List<CashFlowStatementModel>>> getCashFlowStatements({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => cashFlowStatementDao.getCashFlowStatements(ticker: ticker),
      getExpires: (List<CashFlowStatementTableRow> rows) => rows.first.expires,
      conversionMethod: (List<CashFlowStatementTableRow> rows) {
        final List<CashFlowStatementModel> statements =
        rows.map((CashFlowStatementTableRow e) => CashFlowStatementModel.fromTableRow(e)).toList();
        return statements;
      },
    );
  }

  @override
  Future addCashFlowStatements({
    required String ticker,
    required List<CashFlowStatementModel> statements,
  }) {
    final Future added = cashFlowStatementDao.addCashFlowStatements(
      ticker: ticker,
      statements: statements,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addCashFlowStatements");
    return added;
  }
}
