import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockz/presentation/core/theme/st_theme.dart';

class StThemeFonts {
  StThemeFonts();

  TextStyle get _template => GoogleFonts.lato();

  TextStyle get body11 => _template.copyWith(fontSize: 11);

  TextStyle get body12 => _template.copyWith(fontSize: 12);

  TextStyle get body13 => _template.copyWith(fontSize: 13);

  TextStyle get body14 => _template.copyWith(fontSize: 14);

  TextStyle get body16 => _template.copyWith(fontSize: 16);

  TextStyle get body18 => _template.copyWith(fontSize: 18);

  TextStyle get body20 => _template.copyWith(fontSize: 20);

  TextStyle get body22 => _template.copyWith(fontSize: 22);

  TextStyle get body24 => _template.copyWith(fontSize: 24);

  TextStyle get body30 => _template.copyWith(fontSize: 30);

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

  TextStyle get error => copyWith(color: StTheme.current?.scheme.error);

  TextStyle get primary => copyWith(color: StTheme.current?.scheme.primary);

  TextStyle get green => copyWith(color: StTheme.current?.scheme.tertiary);

  TextStyle get onSurfaceVariant => copyWith(color: StTheme.current?.scheme.onSurfaceVariant);
}
