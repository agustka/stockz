import 'package:stockz/infrastructure/chart/models/chart_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';

abstract class IChartCache {
  Future<Cache<ChartModel>> getChart({
    required String symbol,
    required String from,
    required String to,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future addChart({
    required String symbol,
    required String from,
    required String to,
    required ChartModel chart,
  });
}
