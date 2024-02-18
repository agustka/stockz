/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsConfigGen {
  const $AssetsConfigGen();

  /// File path: assets/config/build_config.json
  String get buildConfig => 'assets/config/build_config.json';

  /// List of all assets
  List<String> get values => [buildConfig];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_back.svg
  String get icBack => 'assets/images/ic_back.svg';

  /// File path: assets/images/ic_cancel_cross.svg
  String get icCancelCross => 'assets/images/ic_cancel_cross.svg';

  /// File path: assets/images/ic_home.svg
  String get icHome => 'assets/images/ic_home.svg';

  /// File path: assets/images/ic_nav_bills.svg
  String get icNavBills => 'assets/images/ic_nav_bills.svg';

  /// File path: assets/images/ic_nav_frida.svg
  String get icNavFrida => 'assets/images/ic_nav_frida.svg';

  /// File path: assets/images/ic_nav_more.svg
  String get icNavMore => 'assets/images/ic_nav_more.svg';

  /// File path: assets/images/ic_three_dots.svg
  String get icThreeDots => 'assets/images/ic_three_dots.svg';

  /// File path: assets/images/ic_transfer.svg
  String get icTransfer => 'assets/images/ic_transfer.svg';

  /// File path: assets/images/ic_transparent.svg
  String get icTransparent => 'assets/images/ic_transparent.svg';

  /// File path: assets/images/img_alert.webp
  AssetGenImage get imgAlert => const AssetGenImage('assets/images/img_alert.webp');

  /// File path: assets/images/img_error.webp
  AssetGenImage get imgError => const AssetGenImage('assets/images/img_error.webp');

  /// List of all assets
  List<dynamic> get values => [
        icBack,
        icCancelCross,
        icHome,
        icNavBills,
        icNavFrida,
        icNavMore,
        icThreeDots,
        icTransfer,
        icTransparent,
        imgAlert,
        imgError
      ];
}

class $AssetsTestGen {
  const $AssetsTestGen();

  $AssetsTestOfflineDataGen get offlineData => const $AssetsTestOfflineDataGen();

  /// File path: assets/test/test_access.json
  String get testAccess => 'assets/test/test_access.json';

  /// List of all assets
  List<String> get values => [testAccess];
}

class $AssetsTestOfflineDataGen {
  const $AssetsTestOfflineDataGen();

  /// File path: assets/test/offline_data/get_company_profile.json
  String get getCompanyProfile => 'assets/test/offline_data/get_company_profile.json';

  /// List of all assets
  List<String> get values => [getCompanyProfile];
}

class AppAssets {
  AppAssets._();

  static const $AssetsConfigGen config = $AssetsConfigGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTestGen test = $AssetsTestGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
