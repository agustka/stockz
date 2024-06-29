import 'package:intl/intl.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class ExchangeSymbolValueObject extends ValueObject<String> {
  String get get => getOr("");

  factory ExchangeSymbolValueObject(String? input) {
    return ExchangeSymbolValueObject._(input ?? "", _validateStringId(input));
  }

  const factory ExchangeSymbolValueObject.invalid() = _$InvalidExchangeSymbolValueObject;

  const ExchangeSymbolValueObject._(String super.input, Failure<String>? super.failure);

  static Failure<String>? _validateStringId(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Exchange symbol can't be null.");
    } else if (input == "0" || input == "-1") {
      return Failure.invalidValue(message: "Exchange symbol $input is not a valid id.");
    } else if (input.isEmpty) {
      return Failure.invalidValue(failedValue: input, message: "Exchange symbol can't be empty.");
    }
    return null;
  }

  @override
  bool get valid {
    return super.valid && getExchangeCountry().isNotEmpty && getExchangeCountryCode().isNotEmpty;
  }

  String getExchangeName() {
    final Map<String, String> exchangeNames = {
      "AMEX": "NYSE American",
      "AMS": "Euronext Amsterdam",
      "AQS": "Aquis Exchange",
      "ASX": "Australian Securities Exchange",
      "ATH": "Athens Stock Exchange",
      "BER": "Berlin Stock Exchange",
      "BME": "Bolsa de Madrid",
      "BRU": "Euronext Brussels",
      "BSE": "Bombay Stock Exchange",
      "BUD": "Budapest Stock Exchange",
      "BUE": "Buenos Aires Stock Exchange",
      "CAI": "Cairo Stock Exchange",
      "CBOE": "Chicago Board Options Exchange",
      "CNQ": "Canadian Securities Exchange",
      "CPH": "Copenhagen Stock Exchange",
      "DFM": "Dubai Financial Market",
      "DOH": "Doha Securities Market",
      "DUS": "Düsseldorf Stock Exchange",
      "DXE": "Deutsche Börse",
      "ETF": "Exchange-Traded Fund",
      "EURONEXT": "Euronext",
      "HAM": "Hamburg Stock Exchange",
      "HEL": "Helsinki Stock Exchange",
      "HKSE": "Hong Kong Stock Exchange",
      "ICE": "Iceland Stock Exchange",
      "IOB": "International Order Book",
      "IST": "Istanbul Stock Exchange",
      "JKT": "Jakarta Stock Exchange",
      "JNB": "Johannesburg Stock Exchange",
      "JPX": "Japan Exchange Group",
      "KLS": "Kuala Lumpur Stock Exchange",
      "KOE": "Korean Stock Exchange",
      "KSC": "Kuwait Stock Exchange",
      "KUW": "Kuwait Stock Exchange",
      "LSE": "London Stock Exchange",
      "MCX": "Moscow Exchange",
      "MEX": "Mexican Stock Exchange",
      "MIL": "Milan Stock Exchange",
      "MUN": "Munich Stock Exchange",
      "NASDAQ": "NASDAQ",
      "NEO": "NEO Exchange",
      "NIM": "Nairobi Securities Exchange",
      "NSE": "National Stock Exchange of India",
      "NYSE": "New York Stock Exchange",
      "NZE": "New Zealand Exchange",
      "OSL": "Oslo Stock Exchange",
      "OTC": "Over-the-Counter",
      "PNK": "Pink Sheets",
      "PRA": "Prague Stock Exchange",
      "RIS": "Riga Stock Exchange",
      "SAO": "São Paulo Stock Exchange",
      "SAU": "Saudi Stock Exchange",
      "SES": "Singapore Exchange",
      "SET": "Stock Exchange of Thailand",
      "SGO": "Santiago Stock Exchange",
      "SHH": "Shanghai Stock Exchange",
      "SHZ": "Shenzhen Stock Exchange",
      "SIX": "Swiss Exchange",
      "STO": "Stockholm Stock Exchange",
      "STU": "Stuttgart Stock Exchange",
      "TAI": "Taiwan Stock Exchange",
      "TLV": "Tel Aviv Stock Exchange",
      "TSX": "Toronto Stock Exchange",
      "TSXV": "TSX Venture Exchange",
      "TWO": "Taipei Exchange",
      "VIE": "Vienna Stock Exchange",
      "WSE": "Warsaw Stock Exchange",
      "XETRA": "Xetra",
    };

    return exchangeNames[get] ?? "";
  }

  String getExchangeCountryCode() {
    final Map<String, String> exchangeToCountryCode = {
      "AMEX": "US",
      "AMS": "NL",
      "AQS": "CA",
      "ASX": "AU",
      "ATH": "GR",
      "BER": "DE",
      "BME": "ES",
      "BRU": "BE",
      "BSE": "IN",
      "BUD": "HU",
      "BUE": "AR",
      "CAI": "EG",
      "CBOE": "US",
      "CNQ": "CA",
      "CPH": "DK",
      "DFM": "AE",
      "DOH": "QA",
      "DUS": "DE",
      "DXE": "DE",
      "ETF": "US",
      "EURONEXT": "EU",
      "HAM": "DE",
      "HEL": "FI",
      "HKSE": "HK",
      "ICE": "IS",
      "IOB": "GB",
      "IST": "TR",
      "JKT": "ID",
      "JNB": "ZA",
      "JPX": "JP",
      "KLS": "MY",
      "KOE": "DE",
      "KSC": "KW",
      "KUW": "KW",
      "LSE": "GB",
      "MCX": "RU",
      "MEX": "MX",
      "MIL": "IT",
      "MUN": "DE",
      "NASDAQ": "US",
      "NEO": "CA",
      "NIM": "US",
      "NSE": "IN",
      "NYSE": "US",
      "NZE": "NZ",
      "OSL": "NO",
      "OTC": "US",
      "PNK": "US",
      "PRA": "CZ",
      "RIS": "RU",
      "SAO": "BR",
      "SAU": "SA",
      "SES": "SG",
      "SET": "TH",
      "SGO": "CL",
      "SHH": "CN",
      "SHZ": "CN",
      "SIX": "CH",
      "STO": "SE",
      "STU": "DE",
      "TAI": "TW",
      "TLV": "IL",
      "TSX": "CA",
      "TSXV": "CA",
      "TWO": "TW",
      "VIE": "AT",
      "WSE": "PL",
      "XETRA": "DE",
    };

    return exchangeToCountryCode[get] ?? "";
  }

  String getExchangeFlag() {
    String code = getExchangeCountryCode().toLowerCase();
    if (code == "do") {
      code = "dom";
    } else if (code == "in") {
      code = "ind";
    } else if (code == "is") {
      code = "isl";
    }
    return "assets/images/flags/$code.svg";
  }

  String getExchangeCountry() {
    final String code = getExchangeCountryCode();
    return Intl.message(
      code,
      name: code,
      args: [],
    );
  }
}

class _$InvalidExchangeSymbolValueObject extends ExchangeSymbolValueObject {
  const _$InvalidExchangeSymbolValueObject()
      : super._("", const Failure.invalidValue(message: "Null/invalid instance"));
}
