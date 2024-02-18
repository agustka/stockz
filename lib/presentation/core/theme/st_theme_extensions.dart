part of 'st_theme.dart';

extension TextStyleUtils on TextStyle {
  TextStyle withLineHeight(double height) {
    final fontSize = this.fontSize;
    if (fontSize == null) {
      return this;
    }
    return copyWith(height: height / fontSize);
  }
}

extension ContrastingColor on Color {
  /// Returns Colors.white or Colors.black, depending on the contrast level of this color.
  ///
  /// Can be used to get the contrasting text color
  Color get contrastingColor {
    final double luminance = _luminanceMapCache[this] ?? computeLuminance();
    _luminanceMapCache[this] = luminance;
    return luminance > 0.5 ? Colors.black : Colors.white;
  }

  static final Map<Color, double> _luminanceMapCache = {};
}
