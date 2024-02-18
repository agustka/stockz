import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';

abstract class IBalanceSheetStatementCache {
  Future<Cache<List<BalanceSheetStatementModel>>> getBalanceSheetStatements({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future addBalanceSheetStatements({required String ticker, required List<BalanceSheetStatementModel> statements});
}
