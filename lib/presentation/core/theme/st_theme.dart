import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

part 'st_theme_extensions.dart';

const ThemeMode _defaultThemeMode = ThemeMode.system;

class StTheme extends ChangeNotifier {
  static const String themeModeKey = "ThemeMode";
  static const double sidePadding = 16;
  static const double bottomPadding = 18;
  static ColorScheme? _scheme;

  static StTheme? current;

  static const EdgeInsets sideInsets = EdgeInsets.symmetric(horizontal: sidePadding);

  late StThemeFonts _fonts = StThemeFonts();

  Brightness? get brightness => PlatformDispatcher.instance.platformBrightness;

  ThemeMode _themeMode = ThemeMode.system;

  ColorScheme get scheme => _scheme ?? _createScheme(_themeMode);

  StThemeFonts get fonts => _fonts;

  bool get isDarkMode {
    final bool systemSetToDark = WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    return _themeMode == ThemeMode.dark || (_themeMode == ThemeMode.system && systemSetToDark);
  }

  ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      visualDensity: VisualDensity.comfortable,
      colorScheme: scheme,
      appBarTheme: const AppBarTheme(scrolledUnderElevation: 0),
    );
  }

  ThemeData get darkTheme => theme.copyWith(brightness: Brightness.dark);

  StTheme() {
    PlatformDispatcher.instance.onPlatformBrightnessChanged = _onPlatformBrightnessChanged;
    _getThemeModeFromLocalStorage().then(setThemeMode);
    current = this;
  }

  /// Reads the IsbTheme and subscribes to changes
  static StTheme of(BuildContext context, {bool listen = true}) {
    final StTheme theme = Provider.of<StTheme>(context, listen: listen);
    current = theme;
    return theme;
  }

  /// Sets the theme mode for the app, persisting the latest value in local device's storage.
  void setThemeMode(ThemeMode themeMode) {
    getIt<SharedPrefsProvider>().getInstance().then((SharedPrefsWrapper prefs) {
      prefs.setString(themeModeKey, themeMode.name);
    });

    _themeMode = themeMode;
    _createScheme(_themeMode);
    _fonts = StThemeFonts();

    notifyListeners();
  }

  Future<ThemeMode> _getThemeModeFromLocalStorage() async {
    final SharedPrefsWrapper prefs = await getIt<SharedPrefsProvider>().getInstance();

    ThemeMode themeMode;

    try {
      themeMode = ThemeMode.values.byName(prefs.getString(themeModeKey) ?? "");
    } catch (_) {
      themeMode = _defaultThemeMode;
    }

    return themeMode;
  }

  void _onPlatformBrightnessChanged() {
    if (_themeMode != ThemeMode.system) {
      // we don't want to react to system changes if we are overriding the setting
      return;
    }

    _fonts = StThemeFonts();
    _createScheme(_themeMode);
    notifyListeners();
  }

  static ColorScheme _createScheme(ThemeMode theme) {
    return _scheme ??= ColorScheme(
      brightness: theme == ThemeMode.dark ? Brightness.dark : Brightness.light,
      primary: _buildMaterialColor(const Color(0xfff00067)),
      primaryFixedDim: _buildMaterialColor(const Color(0xff82093e)),
      onPrimary: _buildMaterialColor(const Color(0xfffafafa)),
      secondary: _buildMaterialColor(const Color(0xffEC7D10)),
      onSecondary: _buildMaterialColor(const Color(0xffffffff)),
      tertiary: _buildMaterialColor(const Color(0xff2E933C)),
      onTertiary: _buildMaterialColor(const Color(0xffffffff)),
      error: _buildMaterialColor(const Color(0xffff1122)),
      onError: _buildMaterialColor(const Color(0xffffffff)),
      errorContainer: _buildMaterialColor(const Color(0xffffffff)),
      onErrorContainer: _buildMaterialColor(const Color(0xffffffff)),
      surface: _buildMaterialColor(const Color(0xfff3f3f3)),
      onSurface: _buildMaterialColor(const Color(0xff1d1d1d)),
      onSurfaceVariant: _buildMaterialColor(const Color(0xffe4e4e4)),
      surfaceContainerHighest: _buildMaterialColor(const Color(0xffffffff)),
      scrim: _buildMaterialColor(const Color(0x66838383)),
    );
  }
}

MaterialColor _buildMaterialColor(Color color) {
  final List<double> strengths = [.05];
  final Map<int, Color> swatch = {};
  final int r = color.red;
  final int g = color.green;
  final int b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (final double strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}

extension ColorExtension on Color {
  ColorFilter get svg {
    return ColorFilter.mode(this, BlendMode.srcIn);
  }
}
