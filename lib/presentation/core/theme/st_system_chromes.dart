import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:stockz/presentation/core/widgets/imports.dart';

abstract class StSystemChromes {
  const StSystemChromes();

  SystemUiOverlayStyle get red;
  SystemUiOverlayStyle get bottomSheetOverlay;
  SystemUiOverlayStyle get normal;
}

class StLightThemeSystemChromes extends StSystemChromes {
  const StLightThemeSystemChromes();

  @override
  SystemUiOverlayStyle get red => SystemUiOverlayStyle(
    statusBarColor: const StLightThemeColors().red600,
    systemNavigationBarColor: const StLightThemeColors().grey100,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.light,
  );

  @override
  SystemUiOverlayStyle get bottomSheetOverlay => SystemUiOverlayStyle.light.copyWith(
    statusBarColor: const Color.fromARGB(255, 115, 115, 115),
    systemNavigationBarColor: const StLightThemeColors().grey0,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  );

  @override
  SystemUiOverlayStyle get normal => SystemUiOverlayStyle.light.copyWith(
    statusBarColor: const StLightThemeColors().grey0,
    systemNavigationBarColor: const StLightThemeColors().grey0,
    systemNavigationBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
  );
}

class StDarkThemeSystemChromes extends StSystemChromes {
  const StDarkThemeSystemChromes();

  @override
  SystemUiOverlayStyle get red => SystemUiOverlayStyle(
    statusBarColor: const StDarkThemeColors().red600,
    systemNavigationBarColor: const StDarkThemeColors().grey100,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  );

  @override
  SystemUiOverlayStyle get bottomSheetOverlay => SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.black,
    systemNavigationBarColor: const StDarkThemeColors().grey0,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  );

  @override
  SystemUiOverlayStyle get normal => SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: const StDarkThemeColors().grey100,
    systemNavigationBarColor: const StDarkThemeColors().grey100,
    systemNavigationBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
  );
}
