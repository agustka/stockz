import 'dart:async';

import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/moving_average/entities/moving_average.dart';

abstract class IMovingAverageRepository {
  Future<Payload<MovingAverage>> getMovingAverage({required String ticker, required int period, bool forceGet = false});
}
