import 'package:flutter/material.dart';
import 'package:stockz/domain/chart/entities/chart.dart';
import 'package:stockz/presentation/core/theme/st_theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

enum Recommendation {
  strongBuy,
  buy,
  hold,
  sell,
  strongSell,
  reversal,
}

class TradeRecommendation {
  final double profitLoss;
  final Recommendation recommendation;

  TradeRecommendation({
    required this.profitLoss,
    required this.recommendation,
  });

  @override
  String toString() {
    return "Profit/Loss: $profitLoss, Recommendation: $recommendation";
  }

  String getSummary() {
    switch (recommendation) {
      case Recommendation.strongBuy:
        return "💪📈 Strong buy";
      case Recommendation.buy:
        return "📈 Buy";
      case Recommendation.hold:
        return "🤔 Hold";
      case Recommendation.sell:
        return "📉 Sell";
      case Recommendation.strongSell:
        return "⚠️📉 Strong sell";
      case Recommendation.reversal:
        return "🔄 Potential reversal";
    }
  }
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

    if (close.isNotEmpty) {
      for (int i = 0; i < lengthSignal; i++) {
        signal[i] = double.nan;
      }
    }

    return ImpulseMacd._(
      macdDifference: macdDifference,
      signal: signal,
      histogram: histogram,
    );
  }

  TradeRecommendation checkTradeOpportunity({
    required int sharesOwned,
    required List<ChartEodItem> prices,
    int trendPeriod = 5,
  }) {
    if (histogram.isEmpty || signal.isEmpty) {
      return TradeRecommendation(profitLoss: 0, recommendation: Recommendation.hold);
    }

    final double currentPrice = prices.last.close.get.toDouble();
    final int lastIndex = histogram.length - 1;
    final double lastHistogram = histogram[lastIndex];
    final double lastSignal = signal[lastIndex];
    final double profitLoss = sharesOwned * currentPrice;

    Recommendation recommendation = Recommendation.hold;

    if (lastHistogram > 0 && histogram[lastIndex - 1] <= 0 && lastHistogram > lastSignal) {
      recommendation = Recommendation.buy;
    } else if (lastHistogram < 0 && histogram[lastIndex - 1] >= 0 && lastHistogram < lastSignal) {
      recommendation = Recommendation.sell;
    }

    bool isHistogramFalling = false;
    bool isHistogramRising = false;

    // Check short-term trend
    if (lastIndex >= trendPeriod) {
      final List<double> recentHistograms = histogram.sublist(lastIndex - trendPeriod + 1, lastIndex + 1);
      final List<double> recentSignals = signal.sublist(lastIndex - trendPeriod + 1, lastIndex + 1);

      isHistogramRising = recentHistograms.every((double val) => val >= recentHistograms.first);
      isHistogramFalling = recentHistograms.every((double val) => val <= recentHistograms.first);

      final bool isSignalRising = recentSignals.every((double val) => val >= recentSignals.first);
      final bool isSignalFalling = recentSignals.every((double val) => val <= recentSignals.first);

      if (isHistogramRising && isSignalRising) {
        recommendation = Recommendation.strongBuy;
      } else if (isHistogramFalling && isSignalFalling) {
        recommendation = Recommendation.strongSell;
      }
    }

    // Check for divergence
    final List<double> recentClose = prices
        .sublist(lastIndex - trendPeriod + 1, lastIndex + 1)
        .map((ChartEodItem e) => e.close.get.toDouble())
        .toList();
    final bool isPriceRising = recentClose.every((double val) => val >= recentClose.first);
    final bool isPriceFalling = recentClose.every((double val) => val <= recentClose.first);

    if ((isPriceRising && isHistogramFalling) || (isPriceFalling && isHistogramRising)) {
      recommendation = Recommendation.reversal;
    }

    return TradeRecommendation(profitLoss: profitLoss, recommendation: recommendation);
  }

  List<CartesianSeries<double, int>> getSeries() {
    return <CartesianSeries<double, int>>[
      ColumnSeries<double, int>(
        animationDuration: 200,
        dataSource: histogram,
        xValueMapper: (double value, int index) => index,
        yValueMapper: (double value, int index) => value,
        name: "Histogram",
        pointColorMapper: (num value, int index) {
          return value > 0 ? StTheme.current!.colors.green600 : StTheme.current!.colors.red600;
        },
      ),
      LineSeries<double, int>(
        animationDuration: 200,
        dataSource: macdDifference,
        xValueMapper: (double value, int index) => index,
        yValueMapper: (double value, int index) => value,
        name: "MACD Difference",
        pointColorMapper: (num value, int index) {
          return Colors.pinkAccent;
        },
      ),
      LineSeries<double, int>(
        animationDuration: 200,
        dataSource: signal,
        xValueMapper: (double value, int index) => index,
        yValueMapper: (double value, int index) => value,
        name: "Signal",
        pointColorMapper: (num value, int index) {
          return Colors.blueAccent;
        },
      ),
    ];
  }

  static List<double> _calcSmma(List<double> src, int length) {
    if (src.isEmpty) {
      return [];
    }
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
    if (src.isEmpty) {
      return [];
    }
    final List<double> ema = List.filled(src.length, double.nan);
    final double multiplier = 2 / (length + 1);
    ema[0] = src[0];
    for (int i = 1; i < src.length; i++) {
      ema[i] = (src[i] - ema[i - 1]) * multiplier + ema[i - 1];
    }
    return ema;
  }
}
