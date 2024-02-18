import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

part 'st_theme_colors.dart';
part 'st_theme_extensions.dart';

const ThemeMode _defaultThemeMode = ThemeMode.system;

class StTheme extends ChangeNotifier {
  static const String themeModeKey = "ThemeMode";
  static const double sidePadding = 16;
  static const double bottomPadding = 18;

  static StTheme? current;

  static const EdgeInsets sideInsets = EdgeInsets.symmetric(horizontal: sidePadding);

  late StThemeFonts _fonts = StThemeFonts(theme);

  Brightness? get brightness => PlatformDispatcher.instance.platformBrightness;

  ThemeMode _themeMode = ThemeMode.system;

  StThemeColors get colors => isDarkMode ? const StDarkThemeColors() : const StLightThemeColors();

  StThemeFonts get fonts => _fonts;

  StSystemChromes get chrome => isDarkMode ? const StDarkThemeSystemChromes() : const StLightThemeSystemChromes();

  bool get isDarkMode {
    final bool systemSetToDark = WidgetsBinding.instance.platformDispatcher.platformBrightness == Brightness.dark;
    return _themeMode == ThemeMode.dark || (_themeMode == ThemeMode.system && systemSetToDark);
  }

  ThemeData get theme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: colors.grey100,
      visualDensity: VisualDensity.comfortable,
      primaryColor: colors.red600,
      splashColor: Platform.isIOS ? Colors.transparent : colors.grey100,
      appBarTheme: const AppBarTheme(
        scrolledUnderElevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold, color: colors.grey800),
        displayMedium: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: colors.grey800),
        displaySmall: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: colors.grey800),
        headlineMedium: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: colors.grey800),
        headlineSmall: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: colors.grey800),
        titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, color: colors.grey800),
        titleMedium: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: colors.grey800),
        titleSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: colors.grey800),
        bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: colors.grey800),
        bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: colors.grey800),
      ).apply(
        bodyColor: colors.grey800,
        displayColor: colors.grey800,
      ),
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
    _fonts = StThemeFonts(theme);

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

    SystemChrome.setSystemUIOverlayStyle(chrome.normal);
    _fonts = StThemeFonts(theme);
    notifyListeners();
  }
}
