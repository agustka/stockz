import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_statement_dao.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

@Injectable(as: IBalanceSheetStatementCache)
class BalanceSheetStatementCache with BaseCache implements IBalanceSheetStatementCache {
  final BalanceSheetStatementDao cardsDao;

  BalanceSheetStatementCache(this.cardsDao);

  @override
  Future<Cache<List<BalanceSheetStatementModel>>> getBalanceSheetStatements({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => cardsDao.getBalanceSheetStatements(ticker: ticker),
      getExpires: (List<BalanceSheetStatementTableRow> rows) => rows.first.expires,
      conversionMethod: (List<BalanceSheetStatementTableRow> rows) {
        final List<BalanceSheetStatementModel> statements =
            rows.map((BalanceSheetStatementTableRow e) => BalanceSheetStatementModel.fromTableRow(e)).toList();
        return statements;
      },
    );
  }

  @override
  Future addBalanceSheetStatements({
    required String ticker,
    required List<BalanceSheetStatementModel> statements,
  }) {
    final Future added = cardsDao.addBalanceSheetStatements(
      ticker: ticker,
      statements: statements,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addBalanceSheetStatements");
    return added;
  }
}
