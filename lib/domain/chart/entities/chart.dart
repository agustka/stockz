import 'package:flutter/foundation.dart';
import 'package:stockz/domain/chart/entities/impulse_macd.dart';
import 'package:stockz/domain/core/extensions/date_time_extensions.dart';
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

  int _indexOfDate(DateTime date) {
    for (int i = 0; i < historical.length; i++) {
      if (historical[i].date.get.withTimeAtStartOfDay() == date.withTimeAtStartOfDay()) {
        return i;
      }
    }
    return -1;
  }

  List<double> getPrices() {
    return historical.map((ChartEodItem e) => e.close.get.toDouble()).toList();
  }

  List<double> calculateSma(int period, {List<double>? input}) {
    final List<double> prices = input ?? getPrices();
    if (prices.length < period) {
      throw Exception("Not enough data points to calculate SMA.");
    }

    final List<double> sma = List<double>.filled(prices.length, double.nan);
    for (int i = 0; i < prices.length; i++) {
      if (i < (period - 1)) {
        continue;
      }

      final double sum = prices.sublist(i - period + 1, i + 1).reduce((double a, double b) => a + b);
      final double average = sum / period;
      sma[i] = average;
    }

    return sma;
  }

  List<double> calculateEma(int period, {List<double>? input}) {
    final List<double> prices = input ?? getPrices();
    if (prices.length < period) {
      throw Exception("Not enough data points to calculate EMA.");
    }

    // Calculate the initial SMA
    final double initialSma = prices.sublist(0, period).reduce((double a, double b) => a + b) / period;

    // Initialize the EMA list and set the first value to the SMA
    final List<double> ema = List<double>.filled(prices.length, double.nan);
    ema[period - 1] = initialSma;

    final double alpha = 2 / (period + 1);

    // Calculate the EMA from the period-th price onwards
    for (int i = period; i < prices.length; i++) {
      final double price = prices[i];
      final double previousEma = ema[i - 1];
      final double emaValue = (price * alpha) + (previousEma * (1 - alpha));
      ema[i] = emaValue;
    }

    return ema;
  }

  /*ImpulseMacd getImpulseMacd() {
    const int shortPeriod = 12;
    const int longPeriod = 26;
    const int signalPeriod = 9;

    final List<double> prices = getPrices();
    if (prices.length < longPeriod) {
      throw Exception("Not enough data points to calculate MACD.");
    }

    final List<double> shortEMA = calculateEma(prices, shortPeriod);
    final List<double> longEMA = calculateEma(prices, longPeriod);

    final List<double> macdLine = List<double>.filled(prices.length, double.nan);
    for (int i = longPeriod - 1; i < prices.length; i++) {
      macdLine[i] = shortEMA[i] - longEMA[i];
    }

    final List<double> signalLine = calculateEma(
      macdLine.where((double value) => !value.isNaN).toList(),
      signalPeriod,
    );

    final List<double> histogram = List<double>.filled(prices.length, double.nan);
    for (int i = prices.length - signalLine.length; i < prices.length; i++) {
      histogram[i] = macdLine[i] - signalLine[i - (prices.length - signalLine.length)];
    }

    return ImpulseMacd(
      macdLine: macdLine.where((double value) => !value.isNaN).toList(),
      signalLine: signalLine,
      histogram: histogram.where((double value) => !value.isNaN).toList(),
    );
  }

  List<MacdDataPoint> getMacdDataPoints() {
    final ImpulseMacd impulseMacd = getImpulseMacd();
    final List<MacdDataPoint> macdDataPoints = [];
    final int macdDiff = historical.length - impulseMacd.macdLine.length;
    for (int i = 0; i < impulseMacd.macdLine.length; i++) {
      macdDataPoints.add(
        MacdDataPoint(
          historical[i + macdDiff].date.get,
          impulseMacd.macdLine[i],
          impulseMacd.signalLine[i],
          impulseMacd.histogram[i],
        ),
      );
    }
    return macdDataPoints;
  }*/
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
