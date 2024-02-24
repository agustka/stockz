import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';

@immutable
class MovingAverage {
  final List<MovingAverageDay> days;

  const MovingAverage({required this.days});
}

@immutable
class MovingAverageDay {
  final DateValueObject date;
  final NumberValueObject open;
  final NumberValueObject high;
  final NumberValueObject low;
  final NumberValueObject close;
  final IntValueObject volume;
  final NumberValueObject ema;
  final bool valid;

  bool get isInvalid => !valid;

  const MovingAverageDay({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.volume,
    required this.ema,
    this.valid = true,
  });

  const factory MovingAverageDay.invalid() = _$InvalidMovingAverageDay;
}

class _$InvalidMovingAverageDay extends MovingAverageDay {
  const _$InvalidMovingAverageDay()
      : super(
          date: const DateValueObject.invalid(),
          open: const NumberValueObject.invalid(),
          high: const NumberValueObject.invalid(),
          low: const NumberValueObject.invalid(),
          close: const NumberValueObject.invalid(),
          volume: const IntValueObject.invalid(),
          ema: const NumberValueObject.invalid(),
          valid: false,
        );
}
