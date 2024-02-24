import 'package:flutter/foundation.dart';

@immutable
class MovingAverage {
  final List<MovingAverageDay> days;

  const MovingAverage({required this.days});
}

@immutable
class MovingAverageDay {

}
