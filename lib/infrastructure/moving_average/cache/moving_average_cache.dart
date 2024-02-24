import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/moving_average/cache/i_moving_average_cache.dart';
import 'package:stockz/infrastructure/moving_average/cache/moving_average_dao.dart';
import 'package:stockz/infrastructure/moving_average/models/moving_average_day_model.dart';

@Injectable(as: IMovingAverageCache)
class MovingAverageCache with BaseCache implements IMovingAverageCache {
  final MovingAverageDao movingAverageDao;

  @override
  Duration get timeToLive => const Duration(hours: 8);

  MovingAverageCache(this.movingAverageDao);

  @override
  Future<Cache<List<MovingAverageDayModel>>> getMovingAverage({
    required String ticker,
    required int period,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => movingAverageDao.getMovingAverageDays(ticker: ticker, period: period),
      getExpires: (List<MovingAverageDayTableRow> rows) => rows.first.expires,
      conversionMethod: (List<MovingAverageDayTableRow> rows) {
        final List<MovingAverageDayModel> statements =
        rows.map((MovingAverageDayTableRow e) => MovingAverageDayModel.fromTableRow(e)).toList();
        return statements;
      },
    );
  }

  @override
  Future addMovingAverage({
    required String ticker,
    required int period,
    required List<MovingAverageDayModel> movingAverage,
  }) {
    final Future added = movingAverageDao.addMovingAverageDays(
      days: movingAverage,
      ticker: ticker,
      period: period,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addMovingAverage");
    return added;
  }
}
