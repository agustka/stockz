import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/chart/cache/chart_dao.dart';
import 'package:stockz/infrastructure/chart/cache/i_chart_cache.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

@Injectable(as: IChartCache)
class ChartCache with BaseCache implements IChartCache {
  final ChartDao chartDao;

  @override
  Duration get timeToLive => const Duration(hours: 8);

  ChartCache(this.chartDao);

  @override
  Future<Cache<ChartModel>> getChart({
    required String symbol,
    required String from,
    required String to,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => chartDao.getChart(symbol: symbol, from: from, to: to),
      getExpires: (List<ChartEodItemTableRow> rows) => rows.first.expires,
      conversionMethod: (List<ChartEodItemTableRow> rows) {
        final List<ChartEodItemModel> chart =
            rows.map((ChartEodItemTableRow e) => ChartEodItemModel.fromTableRow(e)).toList();
        return ChartModel(symbol: symbol, historical: chart);
      },
    );
  }

  @override
  Future addChart({
    required String symbol,
    required String from,
    required String to,
    required ChartModel chart,
  }) {
    final Future added = chartDao.addChart(
      symbol: chart.symbol!,
      historical: chart.historical,
      from: from,
      to: to,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addChart");
    return added;
  }
}
