import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/income_statement/entities/income_statements.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/income_statement/cache/i_income_statement_cache.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';
import 'package:stockz/infrastructure/income_statement/repository/i_income_statement_repository.dart';
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart';

@LazySingleton(as: IIncomeStatementRepository)
class IncomeStatementRepository implements IIncomeStatementRepository {
  final IIncomeStatementService _service;
  final IIncomeStatementCache _cache;

  IncomeStatementRepository(this._service, this._cache);

  @override
  Future<Payload<IncomeStatements>> getIncomeStatements({
    required String ticker,
    bool forceGet = false,
  }) async {
    if (forceGet) {
      return _fetchIncomeStatements(ticker: ticker);
    }
    return _cache.getIncomeStatements(ticker: ticker, policy: CachingPolicy.onlyServeNotExpired).then((
        Cache<List<IncomeStatementModel>> cache,
        ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<IncomeStatementModel>> available) {
          return Payload.success(
            IncomeStatements(
              statements: available.data.map((IncomeStatementModel e) => e.toDomain()).toList(),
            ),
          );
        },
        orElse: () => _fetchIncomeStatements(ticker: ticker),
      );
    });
  }

  Future<Payload<IncomeStatements>> _fetchIncomeStatements({required String ticker}) async {
    final Payload<List<IncomeStatementModel>> payload = await _service.getIncomeStatement(ticker: ticker);
    return payload.fold(
          (Failure failure) {
        return Payload.failure(failure);
      },
          (List<IncomeStatementModel> value) {
        _cache.addIncomeStatements(ticker: ticker, statements: value);
        return Payload.success(
          IncomeStatements(
            statements: value.map((IncomeStatementModel e) => e.toDomain()).toList(),
          ),
        );
      },
    );
  }
}
