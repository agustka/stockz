import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class CompanyIndustryValueObject extends ValueObject<CompanyIndustry> {
  CompanyIndustry get get => getOr(CompanyIndustry.invalid);

  factory CompanyIndustryValueObject(String? input, {bool logError = true}) {
    return CompanyIndustryValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory CompanyIndustryValueObject.invalid() = _$InvalidCardIssuer;

  const CompanyIndustryValueObject._(CompanyIndustry super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final CompanyIndustry type = _parse(input, logError: false);
    if (type == CompanyIndustry.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static CompanyIndustry _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "consumer electronics":
        return CompanyIndustry.consumerElectronics;
      default:
        if (logError) {
          errEnum(type: "CompanyIndustry", input: input);
        }
        return CompanyIndustry.invalid;
    }
  }
}

class _$InvalidCardIssuer extends CompanyIndustryValueObject {
  const _$InvalidCardIssuer()
      : super._(CompanyIndustry.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum CompanyIndustry {
  consumerElectronics,
  invalid,
}
