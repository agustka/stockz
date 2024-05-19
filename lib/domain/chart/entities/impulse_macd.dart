enum ImpulseStatus {
  bullish,
  bearish,
  neutral,
}

class ImpulseMacd {
  final List<double> macdLine;
  final List<double> signalLine;
  final List<double> histogram;

  ImpulseMacd({
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
}

class MacdDataPoint {
  final DateTime date;
  final double macdLine;
  final double signalLine;
  final double histogram;

  MacdDataPoint(this.date, this.macdLine, this.signalLine, this.histogram);
}
