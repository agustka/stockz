import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/presentation/core/app.dart';

class Accessibility {
  static const double minFontScale = 1.0;
  static const double maxFontScale = 3.11;

  final double scale;
  final double pixelDensity;
  final AccessibilitySize size;
  final bool screenReader;
  final bool boldText;

  double get _huge => 2.5;
  double get _large => 1.9;
  double get _normal => 1.1;
  double get _small => 0.5;

  bool get huge => uiScale >= _huge;
  bool get large => uiScale >= _large && uiScale < _huge;
  bool get normal => uiScale >= _normal && uiScale < _large;
  bool get small => uiScale <= _small;

  double get uiScale {
    return scale;
  }

  const Accessibility._({
    required this.scale,
    required this.pixelDensity,
    required this.size,
    required this.screenReader,
    required this.boldText,
  });

  factory Accessibility.normal() {
    return const Accessibility._(
      scale: 1,
      pixelDensity: 1,
      size: AccessibilitySize.normal,
      screenReader: false,
      boldText: false,
    );
  }

  factory Accessibility.of(BuildContext context) {
    if (!context.mounted) {
      return Accessibility.normal();
    }

    final double scale = MediaQuery.of(context).textScaler.scale(16) / 16.0;

    final MediaQueryData media = MediaQuery.of(context);
    final double pixelDensity = media.devicePixelRatio;
    final bool screenReader = media.accessibleNavigation;
    final bool boldText = media.boldText;

    AccessibilitySize size = AccessibilitySize.normal;
    if (scale >= 2.5) {
      size = AccessibilitySize.huge;
    } else if (scale >= 1.3) {
      size = AccessibilitySize.large;
    } else if (scale >= 1) {
      size = AccessibilitySize.normal;
    } else {
      size = AccessibilitySize.small;
    }

    return Accessibility._(
      scale: scale,
      pixelDensity: pixelDensity,
      size: size,
      screenReader: screenReader,
      boldText: boldText,
    );
  }

  bool get isInAccessibilityMode {
    if (Platform.isAndroid && uiScale >= 1.15) {
      return true;
    } else if (Platform.isIOS && uiScale > 1.25) {
      return true;
    } else {
      return uiScale > 1.4;
    }
  }

  TextStyle getScaledFont({required TextStyle textStyle}) {
    if (isInAccessibilityMode) {
      double min = Platform.isAndroid ? 1.2 : 1.6;
      double max = Platform.isAndroid ? 1.6 : 2;
      if (uiScale > max) {
        max = uiScale;
      }
      if (uiScale < min) {
        min = uiScale;
      }
      final double scaleUp = 1 + (uiScale - min) / (max - min);
      final double fontSize = textStyle.fontSize ?? 1;
      return textStyle.copyWith(fontSize: (fontSize * scaleUp).roundToDouble());
    }
    return textStyle;
  }

  static String convertDateTimeToVoiceOverSentence(DateValueObject date) {
    final DateFormat accessibilityDateTimeFormat = DateFormat.yMMMMd(App.userLocale.locale.languageCode);

    if (date.isInvalid) {
      return "Invalid date.";
    } else {
      return "${accessibilityDateTimeFormat.format(date.get)}.";
    }
  }

  /// Takes in a string like "491008-0160" and turns it into a readable voiceover message like "49, 10, 08, dash, 01, 60."
  static String convertStringToVoiceOverSentence(String value) {
    if (value.isEmpty) {
      return "";
    }

    final buffer = StringBuffer();
    value.trim().replaceAll("–", "-").split("-").forEach((String part) {
      final chars = part.split("");
      for (int i = 1; i < chars.length + 1; i++) {
        final char = chars[i - 1];
        buffer.write(char);
        if (i.isEven) {
          // we add a comma every second char so that the reader can read 2 digit numbers
          buffer.write(", ");
        }
      }
      // replace a "-" with a word, to avoid reading it like "minus 6"
      buffer.write("dash, ");
    });
    final string = buffer.toString();

    // remove the last 'dash, ' part that was added in the last loop and also add a dot at the end to have a small pause
    return "${string.substring(0, string.length - 8)}.";
  }
}

// ignore: enum_constants_order
enum AccessibilitySize {
  huge,
  large,
  normal,
  small,
}
