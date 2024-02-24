import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/moving_average/models/moving_average_day_model.dart';

abstract class IMovingAverageCache {
  Future<Cache<List<MovingAverageDayModel>>> getMovingAverage({
    required String ticker,
    required int period,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future addMovingAverage({
    required String ticker,
    required int period,
    required List<MovingAverageDayModel> movingAverage,
  });
}
