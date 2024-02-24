import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart';
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';

@LazySingleton(as: ICashFlowStatementRepository)
class CashFlowStatementRepository implements ICashFlowStatementRepository {
  final ICashFlowStatementService _service;
  final ICashFlowStatementCache _cache;

  CashFlowStatementRepository(this._service, this._cache);

  @override
  Future<Payload<CashFlowStatements>> getCashFlowStatements({
    required String symbol,
    bool forceGet = false,
  }) async {
    if (forceGet) {
      return _fetchCashFlowStatements(ticker: symbol);
    }
    return _cache.getCashFlowStatements(ticker: symbol, policy: CachingPolicy.onlyServeNotExpired).then((
        Cache<List<CashFlowStatementModel>> cache,
        ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<CashFlowStatementModel>> available) {
          return Payload.success(
            CashFlowStatements(
              statements: available.data.map((CashFlowStatementModel e) => e.toDomain()).toList(),
            ),
          );
        },
        orElse: () => _fetchCashFlowStatements(ticker: symbol),
      );
    });
  }

  Future<Payload<CashFlowStatements>> _fetchCashFlowStatements({required String ticker}) async {
    final Payload<List<CashFlowStatementModel>> payload = await _service.getCashFlowStatement(ticker: ticker);
    return payload.fold(
          (Failure failure) {
        return Payload.failure(failure);
      },
          (List<CashFlowStatementModel> value) {
        _cache.addCashFlowStatements(ticker: ticker, statements: value);
        return Payload.success(
          CashFlowStatements(
            statements: value.map((CashFlowStatementModel e) => e.toDomain()).toList(),
          ),
        );
      },
    );
  }
}
