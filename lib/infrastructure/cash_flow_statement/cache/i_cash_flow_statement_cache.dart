import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';

abstract class ICashFlowStatementCache {
  Future<Cache<List<CashFlowStatementModel>>> getCashFlowStatements({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future addCashFlowStatements({required String ticker, required List<CashFlowStatementModel> statements});
}
