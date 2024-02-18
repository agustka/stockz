import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';

@LazySingleton(as: IBalanceSheetStatementRepository)
class BalanceSheetStatementRepository implements IBalanceSheetStatementRepository {
  final IBalanceSheetStatementService _service;
  final IBalanceSheetStatementCache _cache;

  BalanceSheetStatementRepository(this._service, this._cache);

  @override
  Future<Payload<BalanceSheetStatements>> getBalanceSheetStatements({
    required String ticker,
    bool forceGet = false,
  }) async {
    if (forceGet) {
      return _fetchBalanceSheetStatements(ticker: ticker);
    }
    return _cache.getBalanceSheetStatements(ticker: ticker, policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<List<BalanceSheetStatementModel>> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<BalanceSheetStatementModel>> available) {
          return Payload.success(
            BalanceSheetStatements(
              statements: available.data.map((BalanceSheetStatementModel e) => e.toDomain()).toList(),
            ),
          );
        },
        orElse: () => _fetchBalanceSheetStatements(ticker: ticker),
      );
    });
  }

  Future<Payload<BalanceSheetStatements>> _fetchBalanceSheetStatements({required String ticker}) async {
    final Payload<List<BalanceSheetStatementModel>> payload = await _service.getBalanceSheetStatement(ticker: ticker);
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<BalanceSheetStatementModel> value) {
        _cache.addBalanceSheetStatements(ticker: ticker, statements: value);
        return Payload.success(
          BalanceSheetStatements(
            statements: value.map((BalanceSheetStatementModel e) => e.toDomain()).toList(),
          ),
        );
      },
    );
  }
}
