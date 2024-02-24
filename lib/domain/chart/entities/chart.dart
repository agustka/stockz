import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';

@immutable
class Chart {
  final StringIdValueObject symbol;
  final List<ChartEodItem> historical;

  const Chart({required this.symbol, required this.historical});

  const factory Chart.invalid() = _$InvalidChart;
}

class _$InvalidChart extends Chart {
  const _$InvalidChart() : super(symbol: const StringIdValueObject.invalid(), historical: const []);
}

@immutable
class ChartEodItem {
  final DateValueObject date;
  final NumberValueObject open;
  final NumberValueObject high;
  final NumberValueObject low;
  final NumberValueObject close;
  final NumberValueObject adjClose;
  final IntValueObject volume;
  final IntValueObject unadjustedVolume;
  final NumberValueObject change;
  final NumberValueObject changePercent;
  final NumberValueObject vwap;
  final TextValueObject label;
  final NumberValueObject changeOverTime;
  final bool valid;

  const ChartEodItem({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.adjClose,
    required this.volume,
    required this.unadjustedVolume,
    required this.change,
    required this.changePercent,
    required this.vwap,
    required this.label,
    required this.changeOverTime,
    this.valid = true,
  });

  bool get isInvalid => !valid;

  const factory ChartEodItem.invalid() = _$InvalidChartEodItem;
}

class _$InvalidChartEodItem extends ChartEodItem {
  const _$InvalidChartEodItem()
      : super(
          date: const DateValueObject.invalid(),
          open: const NumberValueObject.invalid(),
          high: const NumberValueObject.invalid(),
          low: const NumberValueObject.invalid(),
          close: const NumberValueObject.invalid(),
          adjClose: const NumberValueObject.invalid(),
          volume: const IntValueObject.invalid(),
          unadjustedVolume: const IntValueObject.invalid(),
          change: const NumberValueObject.invalid(),
          changePercent: const NumberValueObject.invalid(),
          vwap: const NumberValueObject.invalid(),
          label: const TextValueObject.invalid(),
          changeOverTime: const NumberValueObject.invalid(),
          valid: false,
        );
}
