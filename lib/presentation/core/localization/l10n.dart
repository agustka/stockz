// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hlutabréff`
  String get application_name {
    return Intl.message(
      'Hlutabréff',
      name: 'application_name',
      desc: '',
      args: [],
    );
  }

  /// `Loka`
  String get close {
    return Intl.message(
      'Loka',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Til baka`
  String get back {
    return Intl.message(
      'Til baka',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Reyna aftur`
  String get retry {
    return Intl.message(
      'Reyna aftur',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Meira`
  String get more {
    return Intl.message(
      'Meira',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Yfirlit`
  String get overview {
    return Intl.message(
      'Yfirlit',
      name: 'overview',
      desc: '',
      args: [],
    );
  }

  /// `Þessari aðgerð hefur verið lokað tímabundið. vinsamlegast reyndu aftur síðar. Við biðjumst afsökunar á þeim óþægindum sem þetta kann að valda. Kóði 560.`
  String get page_not_found_message {
    return Intl.message(
      'Þessari aðgerð hefur verið lokað tímabundið. vinsamlegast reyndu aftur síðar. Við biðjumst afsökunar á þeim óþægindum sem þetta kann að valda. Kóði 560.',
      name: 'page_not_found_message',
      desc: '',
      args: [],
    );
  }

  /// `Tenging tókst ekki`
  String get error_loading_feature_heading {
    return Intl.message(
      'Tenging tókst ekki',
      name: 'error_loading_feature_heading',
      desc: '',
      args: [],
    );
  }

  /// `Smelltu hvar sem er til að fara til baka`
  String get semantics_tap_to_dismiss {
    return Intl.message(
      'Smelltu hvar sem er til að fara til baka',
      name: 'semantics_tap_to_dismiss',
      desc: '',
      args: [],
    );
  }

  /// `Dragðu til að loka skúffunni.`
  String get semantics_drag_down_to_dismiss_drawer {
    return Intl.message(
      'Dragðu til að loka skúffunni.',
      name: 'semantics_drag_down_to_dismiss_drawer',
      desc: '',
      args: [],
    );
  }

  /// `dd.MM.yyyy`
  String get date_format_default {
    return Intl.message(
      'dd.MM.yyyy',
      name: 'date_format_default',
      desc: '',
      args: [],
    );
  }

  /// `d. MMMM yyyy`
  String get date_short_format {
    return Intl.message(
      'd. MMMM yyyy',
      name: 'date_short_format',
      desc: '',
      args: [],
    );
  }

  /// `dd. MMMM`
  String get date_short_format_no_year {
    return Intl.message(
      'dd. MMMM',
      name: 'date_short_format_no_year',
      desc: '',
      args: [],
    );
  }

  /// `d. MMMM`
  String get date_short_format_no_year_single_digit {
    return Intl.message(
      'd. MMMM',
      name: 'date_short_format_no_year_single_digit',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'is'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
