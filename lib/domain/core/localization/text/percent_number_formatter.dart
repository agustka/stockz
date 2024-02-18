import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PercentNumberFormatter {
  static String format({
    required num value,
    required Locale locale,
    bool plusOrMinusSign = false,
    int decimalPoints = 1,
    bool alwaysShowDecimals = false,
    int? minDecimalPoint,
  }) {
    final NumberFormat formatter = NumberFormat.percentPattern(locale.languageCode)
      ..maximumFractionDigits = decimalPoints;
    if (alwaysShowDecimals) {
      formatter.minimumFractionDigits = decimalPoints;
    } else if (minDecimalPoint != null) {
      formatter.minimumFractionDigits = minDecimalPoint;
    }
    final double normalizedValue = value / 100.0;
    if (plusOrMinusSign) {
      final String formatted = formatter.format(normalizedValue);
      if (normalizedValue < 0) {
        return "- ${_clean(formatted)}";
      } else if (normalizedValue == 0) {
        return "+/- ${_clean(formatted)}";
      } else {
        return "+ ${_clean(formatted)}";
      }
    }
    return formatter.format(normalizedValue);
  }

  static String _clean(String formatted) {
    return formatted.replaceAll("-", "").replaceAll("+", "");
  }
}
