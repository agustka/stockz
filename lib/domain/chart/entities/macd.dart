import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Macd {
  final List<double> macdLine;
  final List<double> signalLine;
  final List<double> histogram;

  Macd({
    required this.macdLine,
    required this.signalLine,
    required this.histogram,
  });

  LineSeries<num, int> createMacdLineSeries() {
    return LineSeries<num, int>(
      dataSource: List.generate(macdLine.length, (int index) => macdLine[index]),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => value,
      pointColorMapper: (num value, int index) {
        if (macdLine[index] > signalLine[index]) {
          return StTheme.current!.scheme.tertiary; // Buy signal
        } else if (macdLine[index] < signalLine[index]) {
          return StTheme.current!.scheme.error; // Sell signal
        } else {
          return StTheme.current!.scheme.onSurfaceVariant; // Hold signal
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
      color: StTheme.current!.scheme.secondary, // Fixed color for the signal line
    );
  }

  ColumnSeries<num, int> createHistogramSeries() {
    return ColumnSeries<num, int>(
      dataSource: List.generate(histogram.length, (int index) => histogram[index]),
      xValueMapper: (num value, int index) => index,
      yValueMapper: (num value, int index) => value,
      pointColorMapper: (num value, int index) =>
          value >= 0 ? StTheme.current!.scheme.tertiary : StTheme.current!.scheme.error,
      name: "Histogram",
    );
  }
}
