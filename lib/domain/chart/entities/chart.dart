import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stockz/domain/chart/entities/impulse_macd.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

@immutable
class Chart {
  final StringIdValueObject symbol;
  final List<ChartEodItem> historical;

  const Chart({required this.symbol, required this.historical});

  const factory Chart.invalid() = _$InvalidChart;

  List<double> getPrices({double dampen = 1}) {
    return historical.map((ChartEodItem e) => e.close.get.toDouble() * dampen).toList();
  }

  List<double> calculateEma(int period, {List<double>? input, double dampen = 1}) {
    final List<double> data = input ?? getPrices(dampen: dampen);
    if (data.length < period) {
      return [];
    }
    final double multiplier = 2 / (period + 1);
    final List<double> ema = List<double>.filled(data.length, 0);
    ema[0] = data[0]; // Initialize with the first data point

    for (int i = 1; i < data.length; i++) {
      ema[i] = ((data[i] - ema[i - 1]) * multiplier) + ema[i - 1];
    }

    return ema;
  }

  Macd calculateMacd({int shortPeriod = 12, int longPeriod = 26, int signalPeriod = 9}) {
    final List<double> shortEma = calculateEma(shortPeriod);
    final List<double> longEma = calculateEma(longPeriod);
    final int minLength = min(shortEma.length, longEma.length);
    final List<double> macdLine = List<double>.generate(minLength, (int i) => shortEma[i] - longEma[i]);

    List<double> signalLine = calculateEma(signalPeriod, input: macdLine);
    List<double> trimmedMacdLine = macdLine.sublist(macdLine.length - signalLine.length);
    List<double> histogram = List<double>.generate(signalLine.length, (int i) => trimmedMacdLine[i] - signalLine[i]);

    signalLine = signalLine.padStart(padLength: historical.length - signalLine.length, padWith: double.nan);
    trimmedMacdLine =
        trimmedMacdLine.padStart(padLength: historical.length - trimmedMacdLine.length, padWith: double.nan);
    histogram = histogram.padStart(padLength: historical.length - histogram.length, padWith: double.nan);

    return Macd(macdLine: trimmedMacdLine, signalLine: signalLine, histogram: histogram);
  }

  List<double> calculateRsi({int period = 14}) {
    final List<double> prices = getPrices();
    final List<double> rsi = List<double>.filled(prices.length, double.nan);

    // Lists to hold gains and losses
    final List<double> gains = List<double>.filled(prices.length, double.nan);
    final List<double> losses = List<double>.filled(prices.length, double.nan);

    // Calculate initial gains and losses
    for (int i = 1; i < prices.length; i++) {
      final double change = prices[i] - prices[i - 1];
      if (change > 0) {
        gains[i] = change;
        losses[i] = 0;
      } else {
        gains[i] = 0;
        losses[i] = -change;
      }
    }

    // Calculate the initial average gains and losses
    double avgGain = 0;
    double avgLoss = 0;
    for (int i = 1; i <= period; i++) {
      avgGain += gains[i];
      avgLoss += losses[i];
    }
    avgGain /= period;
    avgLoss /= period;

    // Calculate RSI using the initial average gains and losses
    for (int i = period + 1; i < prices.length; i++) {
      final double change = prices[i] - prices[i - 1];
      if (change > 0) {
        avgGain = ((avgGain * (period - 1)) + change) / period;
        avgLoss = (avgLoss * (period - 1)) / period;
      } else {
        avgGain = (avgGain * (period - 1)) / period;
        avgLoss = ((avgLoss * (period - 1)) - change) / period;
      }

      final double rs = avgGain / avgLoss;
      rsi[i] = 100 - (100 / (1 + rs));
    }

    return rsi;
  }

  ImpulseMacd calculateImpulseMacd() {
    return ImpulseMacd.calculate(
      high: historical.map((ChartEodItem e) => e.high.get.toDouble()).toList(),
      low: historical.map((ChartEodItem e) => e.low.get.toDouble()).toList(),
      close: historical.map((ChartEodItem e) => e.close.get.toDouble()).toList(),
    );
  }

  MacdV2 calculateMacdV2() {
    // Get MACD and RSI values
    final Macd macd = calculateMacd();
    final List<double> rsi = calculateRsi();

    // Ensure MACD and RSI have the same length for consistency
    final int length = macd.macdLine.length;
    final List<double> macdLine = macd.macdLine;
    final List<double> signalLine = macd.signalLine;
    final List<double> histogram = macd.histogram;

    final List<ImpulseStatus> impulseColors = List<ImpulseStatus>.filled(length, ImpulseStatus.neutral);

    for (int i = 1; i < length; i++) {
      if (macdLine[i] > macdLine[i - 1] && rsi[i] > rsi[i - 1]) {
        impulseColors[i] = ImpulseStatus.bullish;
      } else if (macdLine[i] < macdLine[i - 1] && rsi[i] < rsi[i - 1]) {
        impulseColors[i] = ImpulseStatus.bearish;
      } else {
        impulseColors[i] = ImpulseStatus.neutral;
      }
    }

    return MacdV2(
      macdLine: macdLine,
      signalLine: signalLine,
      histogram: histogram,
      rsiValues: rsi,
      impulseColors: impulseColors,
    );
  }

  LineSeries<num, int> createPriceLineSeries({double dampen = 1}) {
    return LineSeries<num, int>(
      animationDuration: 200,
      dataSource: List.generate(historical.length, (index) => historical[index].close.get * dampen),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => value,
      name: "Stock price",
      color: Colors.grey.withAlpha(120), // Fixed color for the signal line
    );
  }

  LineSeries<num, int> createRsiLineSeries() {
    final List<double> rsi = calculateRsi();

    final List<Color> colors = rsi.map((value) {
      if (value.isNaN) return Colors.transparent;
      if (value > 70) return Colors.red; // Overbought
      if (value < 30) return Colors.green; // Oversold
      return Colors.blue; // Neutral
    }).toList();

    return LineSeries<num, int>(
      animationDuration: 200,
      dataSource: List.generate(rsi.length, (index) => index),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => rsi[index],
      name: "RSI 14",
      pointColorMapper: (num value, int index) => colors[index], // Color based on RSI value
    );
  }

  // Method to create a LineSeries for the Signal line
  LineSeries<num, int> createEmaLineSeries(int period, {double dampen = 1}) {
    final List<double> ema = calculateEma(period, dampen: dampen);
    return LineSeries<num, int>(
      animationDuration: 200,
      dataSource: ema.padStart(padLength: historical.length - ema.length, padWith: double.nan),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => value,
      name: "EMA Line",
      color: Colors.pinkAccent, // Fixed color for the signal line
    );
  }
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

  @override
  String toString() {
    return close.get.toString();
  }
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

extension ListExtension on List<double> {
  List<double> padStart({required int padLength, required double padWith}) {
    if (padLength <= 0) {
      return this;
    }
    for (int i = 0; i < padLength; i++) {
      insert(0, padWith);
    }
    return this;
  }
}
