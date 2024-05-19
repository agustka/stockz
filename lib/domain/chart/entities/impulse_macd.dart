import 'package:flutter/material.dart';
import 'package:stockz/presentation/core/theme/st_theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

enum ImpulseStatus {
  bullish,
  bearish,
  neutral,
}

class Macd {
  final List<double> macdLine;
  final List<double> signalLine;
  final List<double> histogram;

  Macd({
    required this.macdLine,
    required this.signalLine,
    required this.histogram,
  });

  List<ImpulseStatus> determineImpulseStatus() {
    final List<ImpulseStatus> impulseStatuses = [];
    for (int i = 1; i < macdLine.length; i++) {
      if (macdLine[i] > signalLine[i] && macdLine[i] > macdLine[i - 1]) {
        impulseStatuses.add(ImpulseStatus.bullish);
      } else if (macdLine[i] < signalLine[i] && macdLine[i] < macdLine[i - 1]) {
        impulseStatuses.add(ImpulseStatus.bearish);
      } else {
        impulseStatuses.add(ImpulseStatus.neutral);
      }
    }
    return impulseStatuses;
  }

  LineSeries<num, int> createMacdLineSeries() {
    return LineSeries<num, int>(
      dataSource: List.generate(macdLine.length, (int index) => macdLine[index]),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => value,
      pointColorMapper: (num value, int index) {
        if (macdLine[index] > signalLine[index]) {
          return StTheme.current!.colors.green600; // Buy signal
        } else if (macdLine[index] < signalLine[index]) {
          return StTheme.current!.colors.red600; // Sell signal
        } else {
          return StTheme.current!.colors.grey400; // Hold signal
        }
      },
      name: "MACD Line",
    );
  }

  LineSeries<num, int> createSignalLineSeries() {
    return LineSeries<num, int>(
      dataSource: List.generate(signalLine.length, (int index) => signalLine[index]),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => value,
      name: "Signal Line",
      color: StTheme.current!.colors.blue600, // Fixed color for the signal line
    );
  }

  ColumnSeries<num, int> createHistogramSeries() {
    return ColumnSeries<num, int>(
      dataSource: List.generate(histogram.length, (int index) => histogram[index]),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => value,
      pointColorMapper: (num value, int index) =>
          value >= 0 ? StTheme.current!.colors.green500 : StTheme.current!.colors.red500,
      name: "Histogram",
    );
  }
}

class MacdV2 {
  final List<double> macdLine;
  final List<double> signalLine;
  final List<double> histogram;
  final List<double> rsiValues;
  final List<ImpulseStatus> impulseColors;

  MacdV2({
    required this.macdLine,
    required this.signalLine,
    required this.histogram,
    required this.rsiValues,
    required this.impulseColors,
  });

  List<LineSeries<_ChartData, int>> getMacdSeries() {
    final List<_ChartData> macdData = List.generate(macdLine.length, (i) => _ChartData(i, macdLine[i]));
    final List<_ChartData> signalData = List.generate(signalLine.length, (i) => _ChartData(i, signalLine[i]));

    return [
      LineSeries<_ChartData, int>(
        dataSource: macdData,
        xValueMapper: (data, _) => data.x,
        yValueMapper: (data, _) => data.y,
        name: 'MACD',
        color: Colors.blue,
      ),
      LineSeries<_ChartData, int>(
        dataSource: signalData,
        xValueMapper: (data, _) => data.x,
        yValueMapper: (data, _) => data.y,
        name: 'Signal',
        color: Colors.orange,
      ),
    ];
  }

  ColumnSeries<_ChartData, int> getHistogramSeries() {
    final List<_ChartData> histogramData = List.generate(
      histogram.length,
      (i) => _ChartData(
        i,
        histogram[i],
        null,
        histogram[i] >= 0 ? Colors.green : Colors.red,
      ),
    );

    return ColumnSeries<_ChartData, int>(
      dataSource: histogramData,
      xValueMapper: (data, _) => data.x,
      yValueMapper: (data, _) => data.y,
      pointColorMapper: (data, _) => data.histogramColor,
      name: 'Histogram',
    );
  }

  List<LineSeries<_ChartData, int>> getImpulseMacdSeries() {
    final List<_ChartData> impulseData =
        List.generate(macdLine.length, (i) => _ChartData(i, macdLine[i], impulseColors[i]));

    return [
      LineSeries<_ChartData, int>(
        dataSource: impulseData,
        xValueMapper: (data, _) => data.x,
        yValueMapper: (data, _) => data.y,
        pointColorMapper: (data, _) => _getColor(data.impulse),
        name: 'Impulse MACD',
      ),
    ];
  }

  Color _getColor(ImpulseStatus? impulse) {
    switch (impulse ?? ImpulseStatus.neutral) {
      case ImpulseStatus.bullish:
        return Colors.green;
      case ImpulseStatus.bearish:
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}

class _ChartData {
  final int x;
  final double y;
  final ImpulseStatus? impulse;
  final Color? histogramColor;

  _ChartData(this.x, this.y, [this.impulse, this.histogramColor]);
}

class ImpulseMacd {
  final List<double> macdDifference;
  final List<double> signal;
  final List<double> histogram;

  ImpulseMacd._({
    required this.macdDifference,
    required this.signal,
    required this.histogram,
  });

  factory ImpulseMacd.calculate({
    required List<double> high,
    required List<double> low,
    required List<double> close,
    int lengthMa = 34,
    int lengthSignal = 9,
  }) {
    final List<double> highLowCloseAverage = List.generate(close.length, (int i) => (high[i] + low[i] + close[i]) / 3);
    final List<double> hi = _calcSmma(high, lengthMa);
    final List<double> lo = _calcSmma(low, lengthMa);
    final List<double> mi = _calcZlema(highLowCloseAverage, lengthMa);

    final List<double> macdDifference = List.generate(close.length, (int i) {
      if (mi[i] > hi[i]) return mi[i] - hi[i];
      if (mi[i] < lo[i]) return mi[i] - lo[i];
      return 0;
    });

    final List<double> signal = _calcSma(macdDifference, lengthSignal);
    final List<double> histogram = List.generate(macdDifference.length, (int i) => macdDifference[i] - signal[i]);

    for (int i = 0; i < lengthSignal; i++) {
      signal[i] = double.nan;
    }

    // Return the calculated components
    return ImpulseMacd._(
      macdDifference: macdDifference,
      signal: signal,
      histogram: histogram,
    );
  }

  List<CartesianSeries<double, int>> getSeries() {
    return <CartesianSeries<double, int>>[
      LineSeries<double, int>(
        dataSource: macdDifference,
        xValueMapper: (double value, int index) => index,
        yValueMapper: (double value, int index) => value,
        name: "MACD Difference",
        pointColorMapper: (num value, int index) {
          return Colors.pinkAccent;
        },
      ),
      LineSeries<double, int>(
        dataSource: signal,
        xValueMapper: (double value, int index) => index,
        yValueMapper: (double value, int index) => value,
        name: "Signal",
        pointColorMapper: (num value, int index) {
          return Colors.blueAccent;
        },
      ),
      ColumnSeries<double, int>(
        dataSource: histogram,
        xValueMapper: (double value, int index) => index,
        yValueMapper: (double value, _) => value,
        name: "Histogram",
        pointColorMapper: (num value, int index) {
          return value > 0 ? StTheme.current!.colors.green600 : StTheme.current!.colors.red600;
        },
      ),
    ];
  }

  static List<double> _calcSmma(List<double> src, int length) {
    final List<double> smma = List.filled(src.length, double.nan);
    smma[0] = src.sublist(0, length).reduce((double a, double b) => a + b) / length;
    for (int i = 1; i < src.length; i++) {
      smma[i] = (smma[i - 1] * (length - 1) + src[i]) / length;
    }
    return smma;
  }

  static List<double> _calcZlema(List<double> src, int length) {
    final List<double> ema1 = _calcEma(src, length);
    final List<double> ema2 = _calcEma(ema1, length);
    final List<double> zlema = List.filled(src.length, double.nan);
    for (int i = 0; i < src.length; i++) {
      zlema[i] = ema1[i] + (ema1[i] - ema2[i]);
    }
    return zlema;
  }

  static List<double> _calcSma(List<double> src, int length) {
    final List<double> sma = List.filled(src.length, double.nan);
    for (int i = 0; i < src.length; i++) {
      if (i >= length - 1) {
        sma[i] = src.sublist(i - length + 1, i + 1).reduce((double a, double b) => a + b) / length;
      } else {
        sma[i] = src[i];
      }
    }
    return sma;
  }

  static List<double> _calcEma(List<double> src, int length) {
    final List<double> ema = List.filled(src.length, double.nan);
    final double multiplier = 2 / (length + 1);
    ema[0] = src[0];
    for (int i = 1; i < src.length; i++) {
      ema[i] = (src[i] - ema[i - 1]) * multiplier + ema[i - 1];
    }
    return ema;
  }
}
