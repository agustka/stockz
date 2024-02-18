import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/presentation/core/app.dart';

class CurrencyValueObject extends ValueObject<_Currency> {
  _Currency get get {
    return getOr(const _Currency.invalid());
  }

  _Currency get getOrIsk {
    return getOr(const CurrencyValueObject.isk().get);
  }

  factory CurrencyValueObject(String? input, {bool logError = true}) {
    return CurrencyValueObject._(_Currency.parse(input?.toUpperCase() ?? "", logError: logError), _validateType(input));
  }

  const factory CurrencyValueObject.invalid() = _$InvalidCurrencyValueObject;

  const factory CurrencyValueObject.isk() = _$IskCurrencyValueObject;

  const factory CurrencyValueObject.eur() = _$EurCurrencyValueObject;

  const CurrencyValueObject._(_Currency super.input, Failure<String>? super.failure);

  bool get isIsk => getOr(const _Currency.invalid()).isIsk;

  String get code => getOr(const _Currency.invalid()).code;

  static Failure<String>? _validateType(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Currency code must not be null.");
    } else if (input.trim().length != 3) {
      return Failure.invalidValue(message: "Currency code must be 3 characters, got '$input'.");
    } else if (_Currency.parse(input, logError: false).isInvalid) {
      return Failure.invalidValue(message: "Unknown currency code '$input'.");
    }
    return null;
  }
}

class _$InvalidCurrencyValueObject extends CurrencyValueObject {
  const _$InvalidCurrencyValueObject()
      : super._(const _Currency.invalid(), const Failure.invalidValue(message: "Null/invalid instance"));
}

class _$IskCurrencyValueObject extends CurrencyValueObject {
  const _$IskCurrencyValueObject() : super._(const _Currency.isk(), null);
}

class _$EurCurrencyValueObject extends CurrencyValueObject {
  const _$EurCurrencyValueObject() : super._(const _Currency.eur(), null);
}

class Currency {
  static const String ISK = "ISK";
  static const String ISK_NUMERIC_CODE = "352";
  static const String EUR = "EUR";
  static const String USD = "USD";
  static const String GBP = "GBP";
  static const String DKK = "DKK";
  static const String NOK = "NOK";
  static const String SEK = "SEK";
  static const String CAD = "CAD";
  static const String PLN = "PLN";
  static const String JPY = "JPY";
  static const String CHF = "CHF";
  static const String RUB = "RUB";
  static const String TTT = "TTT";
  static const String CNY = "CNY";
  static const String HKD = "HKD";
  static const String ZAR = "ZAR";
}

class _Currency extends Equatable {
  final _CurrencyEnum _curr;
  final String _originalCode;
  final bool valid;

  bool get isIsk => _curr == _CurrencyEnum.ISK;

  bool get isInvalid => !valid;

  String get code {
    if (_curr == _CurrencyEnum.invalid || _curr == _CurrencyEnum.unknown) {
      return _originalCode;
    }
    return _curr.name;
  }

  const _Currency(this._curr, this._originalCode, {this.valid = true});

  const factory _Currency.isk() = _$IskCurrency;

  const factory _Currency.eur() = _$EurCurrency;

  const factory _Currency.invalid() = _$InvalidCurrency;

  factory _Currency.parse(String? input, {bool logError = true}) {
    switch ((input ?? "").toUpperCase().trim()) {
      case "EUR":
      case "IE":
      case "MT":
      case "ES":
      case "NL":
      case "CY":
      case "DE":
      case "352":
      case "LU":
      case "LT":
      case "EE":
      case "IT":
      case "BE":
      case "FR":
      case "LV":
      case "FI":
      case "SK":
        return const _Currency(_CurrencyEnum.EUR, "EUR");

      case "USD":
      case "US":
        return const _Currency(_CurrencyEnum.USD, "USD");

      case "PLN":
      case "PL":
        return const _Currency(_CurrencyEnum.PLN, "PLN");

      case "GBP":
      case "GB":
        return const _Currency(_CurrencyEnum.GBP, "GBP");

      case "AED":
        return const _Currency(_CurrencyEnum.AED, "AED");

      case "JPY":
        return const _Currency(_CurrencyEnum.JPY, "JPY");

      case "SEK":
      case "SE":
        return const _Currency(_CurrencyEnum.SEK, "SEK");

      case "DKK":
      case "DK":
        return const _Currency(_CurrencyEnum.DKK, "DKK");

      case "NOK":
      case "NO":
        return const _Currency(_CurrencyEnum.NOK, "NOK");

      case "BAM":
        return const _Currency(_CurrencyEnum.BAM, "BAM");

      case "BOB":
        return const _Currency(_CurrencyEnum.BOB, "BOB");

      case "CAD":
        return const _Currency(_CurrencyEnum.CAD, "CAD");

      case "CHF":
      case "CH":
        return const _Currency(_CurrencyEnum.CHF, "CHF");

      case "AUD":
        return const _Currency(_CurrencyEnum.AUD, "AUD");

      case "NZD":
        return const _Currency(_CurrencyEnum.NZD, "NZD");

      case "SGD":
      case "SG":
        return const _Currency(_CurrencyEnum.SGD, "SGD");

      case "ISK":
      case "IS":
      case "KR.":
        return const _Currency(_CurrencyEnum.ISK, "ISK");

      case "CNY":
        return const _Currency(_CurrencyEnum.CNY, "CNY");

      case "RUB":
        return const _Currency(_CurrencyEnum.RUB, "RUB");

      case "HKD":
        return const _Currency(_CurrencyEnum.HKD, "HKD");

      case "ZAR":
        return const _Currency(_CurrencyEnum.ZAR, "ZAR");

      case "":
        return const _Currency.invalid();

      default:
        if (logError) {
          errEnum(type: "Currency", input: input);
        }
        return _Currency(_CurrencyEnum.unknown, input ?? "");
    }
  }

  String symbol({Locale? locale}) {
    final String symbol = _curr._withLocaleSymbol(locale ?? App.userLocale.locale);
    if (symbol.isEmpty) {
      return _originalCode;
    }
    return symbol;
  }

  @override
  List<Object?> get props => [_curr, _originalCode, valid];
}

class _$IskCurrency extends _Currency {
  const _$IskCurrency() : super(_CurrencyEnum.ISK, "ISK");
}

class _$EurCurrency extends _Currency {
  const _$EurCurrency() : super(_CurrencyEnum.EUR, "EUR");
}

class _$InvalidCurrency extends _Currency {
  const _$InvalidCurrency() : super(_CurrencyEnum.invalid, "", valid: false);
}

//ignore_for_file: constant_identifier_names
enum _CurrencyEnum {
  AED,
  AUD,
  BAM,
  BOB,
  CAD,
  CHF,
  CNY,
  DKK,
  EUR,
  GBP,
  HKD,
  ISK,
  JPY,
  NOK,
  NZD,
  PLN,
  RUB,
  SEK,
  SGD,
  USD,
  ZAR,
  unknown,
  invalid,
}

extension CurrencyX on _CurrencyEnum {
  String get _symbol {
    switch (this) {
      case _CurrencyEnum.EUR:
        return "€";

      case _CurrencyEnum.USD:
        return "\$";

      case _CurrencyEnum.PLN:
        return "zł";

      case _CurrencyEnum.JPY:
        return "¥";

      case _CurrencyEnum.BOB:
        return "Bs";

      case _CurrencyEnum.BAM:
        return "KM";

      case _CurrencyEnum.SEK:
      case _CurrencyEnum.DKK:
        return "kr";

      case _CurrencyEnum.ISK:
        return "kr.";

      default:
        return name;
    }
  }

  String _withLocaleSymbol([Locale? locale]) {
    if (this == _CurrencyEnum.invalid) {
      return "";
    }

    final Locale localeToUse = locale ?? App.userLocale.locale;
    if (localeToUse.languageCode == "is" && this == _CurrencyEnum.ISK) {
      return _symbol;
    }
    if (this == _CurrencyEnum.invalid || this == _CurrencyEnum.unknown) {
      return "";
    }

    return name;
  }
}
