import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/moving_average/entities/moving_average.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/moving_average/cache/i_moving_average_cache.dart';
import 'package:stockz/infrastructure/moving_average/models/moving_average_day_model.dart';
import 'package:stockz/infrastructure/moving_average/repository/i_moving_average_repository.dart';
import 'package:stockz/infrastructure/moving_average/service/i_moving_average_service.dart';

@LazySingleton(as: IMovingAverageRepository)
class MovingAverageRepository implements IMovingAverageRepository {
  final IMovingAverageService _service;
  final IMovingAverageCache _cache;

  MovingAverageRepository(this._service, this._cache);

  @override
  Future<Payload<MovingAverage>> getMovingAverage({
    required String ticker,
    required int period,
    bool forceGet = false,
  }) async {
    if (forceGet) {
      return _fetchMovingAverage(ticker: ticker, period: period);
    }
    return _cache.getMovingAverage(ticker: ticker, period: period, policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<List<MovingAverageDayModel>> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<MovingAverageDayModel>> available) {
          return Payload.success(
            MovingAverage(
              days: available.data.map((MovingAverageDayModel e) => e.toDomain()).toList(),
            ),
          );
        },
        orElse: () => _fetchMovingAverage(ticker: ticker, period: period),
      );
    });
  }

  Future<Payload<MovingAverage>> _fetchMovingAverage({required String ticker, required int period}) async {
    final Payload<List<MovingAverageDayModel>> payload = await _service.getMovingAverage(
      ticker: ticker,
      period: period,
    );
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<MovingAverageDayModel> value) {
        _cache.addMovingAverage(ticker: ticker, period: period, movingAverage: value);
        return Payload.success(
          MovingAverage(
            days: value.map((MovingAverageDayModel e) => e.toDomain()).toList(),
          ),
        );
      },
    );
  }
}
