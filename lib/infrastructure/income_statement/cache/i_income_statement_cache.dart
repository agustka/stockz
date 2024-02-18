import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';

abstract class IIncomeStatementCache {
  Future<Cache<List<IncomeStatementModel>>> getIncomeStatements({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future addIncomeStatements({required String ticker, required List<IncomeStatementModel> statements});
}
