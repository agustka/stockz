import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class CompanyCountryValueObject extends ValueObject<CompanyCountry> {
  CompanyCountry get get => getOr(CompanyCountry.invalid);

  factory CompanyCountryValueObject(String? input, {bool logError = true}) {
    return CompanyCountryValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory CompanyCountryValueObject.invalid() = _$InvalidCardIssuer;

  const CompanyCountryValueObject._(CompanyCountry super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final CompanyCountry type = _parse(input, logError: false);
    if (type == CompanyCountry.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static CompanyCountry _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "us":
        return CompanyCountry.us;
      default:
        if (logError) {
          errEnum(type: "CompanyCountry", input: input);
        }
        return CompanyCountry.invalid;
    }
  }
}

class _$InvalidCardIssuer extends CompanyCountryValueObject {
  const _$InvalidCardIssuer()
      : super._(CompanyCountry.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum CompanyCountry {
  us,
  invalid,
}
