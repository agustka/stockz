import 'package:flutter/material.dart';
import 'package:stockz/presentation/core/theme/st_theme.dart';

class StThemeFonts {
  final ThemeData _theme;

  StThemeFonts(this._theme);

  TextStyle get _template => _theme.textTheme.bodyLarge!;

  TextStyle get body11 => _template.copyWith(fontSize: 11);

  TextStyle get body12 => _template.copyWith(fontSize: 12);

  TextStyle get body13 => _template.copyWith(fontSize: 13);

  TextStyle get body14 => _template.copyWith(fontSize: 14);

  TextStyle get body16 => _template.copyWith(fontSize: 16);

  TextStyle get body18 => _template.copyWith(fontSize: 18);

  TextStyle get body20 => _template.copyWith(fontSize: 20);

  TextStyle get body22 => _template.copyWith(fontSize: 22);

  TextStyle get body25 => _template.copyWith(fontSize: 25);

  TextStyle get body32 => _template.copyWith(fontSize: 32);

  TextStyle get body40 => _template.copyWith(fontSize: 40);

  TextStyle get body48 => _template.copyWith(fontSize: 48);

  TextStyle get body60 => _template.copyWith(fontSize: 60);
}

extension TextStyleExtension on TextStyle {
  TextStyle get bold => copyWith(fontWeight: FontWeight.bold);

  TextStyle get light => copyWith(fontWeight: FontWeight.w400);

  TextStyle get underline => copyWith(decoration: TextDecoration.underline);

  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle get dotted => copyWith(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dotted);

  TextStyle get red => copyWith(color: StTheme.current?.colors.red600);

  TextStyle get green => copyWith(color: StTheme.current?.colors.green600);

  TextStyle get bg => copyWith(color: StTheme.current?.colors.grey0);
  TextStyle get grey0 => copyWith(color: StTheme.current?.colors.grey0);
  TextStyle get grey100 => copyWith(color: StTheme.current?.colors.grey200);

  TextStyle get grey200 => copyWith(color: StTheme.current?.colors.grey300);

  TextStyle get grey300 => copyWith(color: StTheme.current?.colors.grey400);

  TextStyle get grey400 => copyWith(color: StTheme.current?.colors.grey600);

  TextStyle get grey700 => copyWith(color: StTheme.current?.colors.grey700);
}
