import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class CompanyExchangeValueObject extends ValueObject<CompanyExchange> {
  CompanyExchange get get => getOr(CompanyExchange.invalid);

  factory CompanyExchangeValueObject(String? input, {bool logError = true}) {
    return CompanyExchangeValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory CompanyExchangeValueObject.invalid() = _$InvalidCardIssuer;

  const CompanyExchangeValueObject._(CompanyExchange super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final CompanyExchange type = _parse(input, logError: false);
    if (type == CompanyExchange.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static CompanyExchange _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "new york stock exchange":
        return CompanyExchange.newYorkStockExchange;
      case "nasdaq global select":
        return CompanyExchange.nasdaqGlobalSelect;
      case "nasdaq global market":
        return CompanyExchange.nasdaqGlobalMarket;
      case "nasdaq capital market":
        return CompanyExchange.nasdaqCapitalMarket;
      case "other otc":
        return CompanyExchange.otherOtc;
      case "american stock exchange":
        return CompanyExchange.americanStockExchange;
      default:
        if (logError) {
          errEnum(type: "CompanyExchange", input: input);
        }
        return CompanyExchange.invalid;
    }
  }
}

class _$InvalidCardIssuer extends CompanyExchangeValueObject {
  const _$InvalidCardIssuer()
      : super._(CompanyExchange.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum CompanyExchange {
  newYorkStockExchange,
  nasdaqGlobalSelect,
  nasdaqGlobalMarket,
  nasdaqCapitalMarket,
  otherOtc,
  americanStockExchange,
  invalid,
}
