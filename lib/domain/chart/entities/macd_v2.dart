import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

enum ImpulseStatus {
  bullish,
  bearish,
  neutral,
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
    final List<_ChartData> macdData = List.generate(macdLine.length, (int i) => _ChartData(i, macdLine[i]));
    final List<_ChartData> signalData = List.generate(signalLine.length, (int i) => _ChartData(i, signalLine[i]));

    return [
      LineSeries<_ChartData, int>(
        dataSource: macdData,
        xValueMapper: (_ChartData data, int index) => data.x,
        yValueMapper: (_ChartData data, int index) => data.y,
        name: 'MACD',
        color: Colors.blue,
      ),
      LineSeries<_ChartData, int>(
        dataSource: signalData,
        xValueMapper: (_ChartData data, int index) => data.x,
        yValueMapper: (_ChartData data, int index) => data.y,
        name: 'Signal',
        color: Colors.orange,
      ),
    ];
  }

  ColumnSeries<_ChartData, int> getHistogramSeries() {
    final List<_ChartData> histogramData = List.generate(
      histogram.length,
      (int i) => _ChartData(
        i,
        histogram[i],
        null,
        histogram[i] >= 0 ? Colors.green : Colors.red,
      ),
    );

    return ColumnSeries<_ChartData, int>(
      dataSource: histogramData,
      xValueMapper: (_ChartData data, int index) => data.x,
      yValueMapper: (_ChartData data, int index) => data.y,
      pointColorMapper: (_ChartData data, int index) => data.histogramColor,
      name: "Histogram",
    );
  }

  List<LineSeries<_ChartData, int>> getImpulseMacdSeries() {
    final List<_ChartData> impulseData =
        List.generate(macdLine.length, (int i) => _ChartData(i, macdLine[i], impulseColors[i]));

    return [
      LineSeries<_ChartData, int>(
        dataSource: impulseData,
        xValueMapper: (_ChartData data, int index) => data.x,
        yValueMapper: (_ChartData data, int index) => data.y,
        pointColorMapper: (_ChartData data, int index) => _getColor(data.impulse),
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
