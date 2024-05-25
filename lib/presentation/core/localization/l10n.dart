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

  /// `Verðbréfamarkaðir`
  String get overview_stock_exchanges {
    return Intl.message(
      'Verðbréfamarkaðir',
      name: 'overview_stock_exchanges',
      desc: '',
      args: [],
    );
  }

  /// `Allir virkir markaðir`
  String get overview_stock_exchanges_explanation {
    return Intl.message(
      'Allir virkir markaðir',
      name: 'overview_stock_exchanges_explanation',
      desc: '',
      args: [],
    );
  }

  /// `Bandaríkin`
  String get US {
    return Intl.message(
      'Bandaríkin',
      name: 'US',
      desc: '',
      args: [],
    );
  }

  /// `Holland`
  String get NL {
    return Intl.message(
      'Holland',
      name: 'NL',
      desc: '',
      args: [],
    );
  }

  /// `Kanada`
  String get CA {
    return Intl.message(
      'Kanada',
      name: 'CA',
      desc: '',
      args: [],
    );
  }

  /// `Ástralía`
  String get AU {
    return Intl.message(
      'Ástralía',
      name: 'AU',
      desc: '',
      args: [],
    );
  }

  /// `Grikkland`
  String get GR {
    return Intl.message(
      'Grikkland',
      name: 'GR',
      desc: '',
      args: [],
    );
  }

  /// `Þýskaland`
  String get DE {
    return Intl.message(
      'Þýskaland',
      name: 'DE',
      desc: '',
      args: [],
    );
  }

  /// `Spánn`
  String get ES {
    return Intl.message(
      'Spánn',
      name: 'ES',
      desc: '',
      args: [],
    );
  }

  /// `Belgía`
  String get BE {
    return Intl.message(
      'Belgía',
      name: 'BE',
      desc: '',
      args: [],
    );
  }

  /// `Indland`
  String get IN {
    return Intl.message(
      'Indland',
      name: 'IN',
      desc: '',
      args: [],
    );
  }

  /// `Ungverjaland`
  String get HU {
    return Intl.message(
      'Ungverjaland',
      name: 'HU',
      desc: '',
      args: [],
    );
  }

  /// `Argentína`
  String get AR {
    return Intl.message(
      'Argentína',
      name: 'AR',
      desc: '',
      args: [],
    );
  }

  /// `Egyptaland`
  String get EG {
    return Intl.message(
      'Egyptaland',
      name: 'EG',
      desc: '',
      args: [],
    );
  }

  /// `Danmörk`
  String get DK {
    return Intl.message(
      'Danmörk',
      name: 'DK',
      desc: '',
      args: [],
    );
  }

  /// `Sameinuðu arabísku furstadæmin`
  String get AE {
    return Intl.message(
      'Sameinuðu arabísku furstadæmin',
      name: 'AE',
      desc: '',
      args: [],
    );
  }

  /// `Katar`
  String get QA {
    return Intl.message(
      'Katar',
      name: 'QA',
      desc: '',
      args: [],
    );
  }

  /// `Hong Kong`
  String get HK {
    return Intl.message(
      'Hong Kong',
      name: 'HK',
      desc: '',
      args: [],
    );
  }

  /// `Ísland`
  String get IS {
    return Intl.message(
      'Ísland',
      name: 'IS',
      desc: '',
      args: [],
    );
  }

  /// `Bretland`
  String get GB {
    return Intl.message(
      'Bretland',
      name: 'GB',
      desc: '',
      args: [],
    );
  }

  /// `Tyrkland`
  String get TR {
    return Intl.message(
      'Tyrkland',
      name: 'TR',
      desc: '',
      args: [],
    );
  }

  /// `Indónesía`
  String get ID {
    return Intl.message(
      'Indónesía',
      name: 'ID',
      desc: '',
      args: [],
    );
  }

  /// `Suður-Afríka`
  String get ZA {
    return Intl.message(
      'Suður-Afríka',
      name: 'ZA',
      desc: '',
      args: [],
    );
  }

  /// `Japan`
  String get JP {
    return Intl.message(
      'Japan',
      name: 'JP',
      desc: '',
      args: [],
    );
  }

  /// `Malasía`
  String get MY {
    return Intl.message(
      'Malasía',
      name: 'MY',
      desc: '',
      args: [],
    );
  }

  /// `Kúveit`
  String get KW {
    return Intl.message(
      'Kúveit',
      name: 'KW',
      desc: '',
      args: [],
    );
  }

  /// `Rússland`
  String get RU {
    return Intl.message(
      'Rússland',
      name: 'RU',
      desc: '',
      args: [],
    );
  }

  /// `Mexíkó`
  String get MX {
    return Intl.message(
      'Mexíkó',
      name: 'MX',
      desc: '',
      args: [],
    );
  }

  /// `Ítalía`
  String get IT {
    return Intl.message(
      'Ítalía',
      name: 'IT',
      desc: '',
      args: [],
    );
  }

  /// `Nýja-Sjáland`
  String get NZ {
    return Intl.message(
      'Nýja-Sjáland',
      name: 'NZ',
      desc: '',
      args: [],
    );
  }

  /// `Noregur`
  String get NO {
    return Intl.message(
      'Noregur',
      name: 'NO',
      desc: '',
      args: [],
    );
  }

  /// `Tékkland`
  String get CZ {
    return Intl.message(
      'Tékkland',
      name: 'CZ',
      desc: '',
      args: [],
    );
  }

  /// `Brasilía`
  String get BR {
    return Intl.message(
      'Brasilía',
      name: 'BR',
      desc: '',
      args: [],
    );
  }

  /// `Sádí-Arabía`
  String get SA {
    return Intl.message(
      'Sádí-Arabía',
      name: 'SA',
      desc: '',
      args: [],
    );
  }

  /// `Singapúr`
  String get SG {
    return Intl.message(
      'Singapúr',
      name: 'SG',
      desc: '',
      args: [],
    );
  }

  /// `Taíland`
  String get TH {
    return Intl.message(
      'Taíland',
      name: 'TH',
      desc: '',
      args: [],
    );
  }

  /// `Síle`
  String get CL {
    return Intl.message(
      'Síle',
      name: 'CL',
      desc: '',
      args: [],
    );
  }

  /// `Kína`
  String get CN {
    return Intl.message(
      'Kína',
      name: 'CN',
      desc: '',
      args: [],
    );
  }

  /// `Sviss`
  String get CH {
    return Intl.message(
      'Sviss',
      name: 'CH',
      desc: '',
      args: [],
    );
  }

  /// `Svíþjóð`
  String get SE {
    return Intl.message(
      'Svíþjóð',
      name: 'SE',
      desc: '',
      args: [],
    );
  }

  /// `Taívan`
  String get TW {
    return Intl.message(
      'Taívan',
      name: 'TW',
      desc: '',
      args: [],
    );
  }

  /// `Ísrael`
  String get IL {
    return Intl.message(
      'Ísrael',
      name: 'IL',
      desc: '',
      args: [],
    );
  }

  /// `Austurríki`
  String get AT {
    return Intl.message(
      'Austurríki',
      name: 'AT',
      desc: '',
      args: [],
    );
  }

  /// `Pólland`
  String get PL {
    return Intl.message(
      'Pólland',
      name: 'PL',
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
