import 'dart:async';

import 'package:stockz/domain/chart/entities/chart.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';

abstract class IChartRepository {
  Future<Payload<Chart>> getChart({
    required String symbol,
    required DateTime from,
    required DateTime to,
    bool forceGet = false,
  });
}
