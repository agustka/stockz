import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:stockz/domain/chart/entities/chart.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/chart/cache/i_chart_cache.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';
import 'package:stockz/infrastructure/chart/repository/i_chart_repository.dart';
import 'package:stockz/infrastructure/chart/service/i_chart_service.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';

@LazySingleton(as: IChartRepository)
class MovingAverageRepository implements IChartRepository {
  final IChartService _service;
  final IChartCache _cache;

  MovingAverageRepository(this._service, this._cache);

  @override
  Future<Payload<Chart>> getChart({
    required String symbol,
    required DateTime from,
    required DateTime to,
    bool forceGet = false,
  }) async {
    final DateFormat format = DateFormat("yyyy-MM-dd");
    final String fromStr = format.format(from);
    final String toStr = format.format(to);

    if (forceGet) {
      return _fetchChart(symbol: symbol, from: fromStr, to: toStr);
    }
    return _cache.getChart(symbol: symbol, from: fromStr, to: toStr, policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<ChartModel> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<ChartModel> available) {
          return Payload.success(available.data.toDomain());
        },
        orElse: () => _fetchChart(symbol: symbol, from: fromStr, to: toStr),
      );
    });
  }

  Future<Payload<Chart>> _fetchChart({
    required String symbol,
    required String from,
    required String to,
  }) async {
    final Payload<ChartModel> payload = await _service.getChart(symbol: symbol, from: from, to: to);
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (ChartModel value) {
        _cache.addChart(symbol: symbol, from: from, to: to, chart: value);
        return Payload.success(value.toDomain());
      },
    );
  }
}
