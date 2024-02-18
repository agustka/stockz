import 'dart:io';

import 'package:flutter/services.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class StSystemChrome {
  static void setSystemUIOverlayStyle(SystemUiOverlayStyle style) {
    if (!Platform.isAndroid) {
      // only for Android
      return;
    }
    // Can't use SystemChrome.setSystemUIOverlayStyle because it caches the value and refuses to update after the first change.
    // We have to force the update because when a flutter page is dismissed and we get back to native, the overlay is changed
    // but then there is no way for us to change it back when user opens another flutter page because the old flutter
    // style is cached and flutter thinks the old style is still in effect, which it is not.
    try {
      SystemChannels.platform.invokeMethod<void>("SystemChrome.setSystemUIOverlayStyle", style.toMap());
      //SystemChrome.setSystemUIOverlayStyle(style);
    } catch (ex) {
      err(ex);
    }
  }
}

extension SystemUiOverlayStyleExtension on SystemUiOverlayStyle {
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "systemNavigationBarColor": systemNavigationBarColor?.value,
      "systemNavigationBarDividerColor": systemNavigationBarDividerColor?.value,
      "systemStatusBarContrastEnforced": systemStatusBarContrastEnforced,
      "statusBarColor": statusBarColor?.value,
      "statusBarBrightness": statusBarBrightness?.toString(),
      "statusBarIconBrightness": statusBarIconBrightness?.toString(),
      "systemNavigationBarIconBrightness": systemNavigationBarIconBrightness?.toString(),
      "systemNavigationBarContrastEnforced": systemNavigationBarContrastEnforced,
    };
  }
}
