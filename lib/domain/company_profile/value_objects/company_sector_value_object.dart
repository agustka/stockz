import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class CompanySectorValueObject extends ValueObject<CompanySector> {
  CompanySector get get => getOr(CompanySector.invalid);

  factory CompanySectorValueObject(String? input, {bool logError = true}) {
    return CompanySectorValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory CompanySectorValueObject.invalid() = _$InvalidCardIssuer;

  const CompanySectorValueObject._(CompanySector super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final CompanySector type = _parse(input, logError: false);
    if (type == CompanySector.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static CompanySector _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "technology":
        return CompanySector.technology;
      case "consumer defensive":
        return CompanySector.consumerDefensive;
      case "communication services":
        return CompanySector.communicationServices;
      case "healthcare":
        return CompanySector.healthcare;
      case "consumer cyclical":
        return CompanySector.consumerCyclical;
      case "energy":
        return CompanySector.energy;
      case "industrials":
        return CompanySector.industrials;
      default:
        if (logError) {
          errEnum(type: "CompanySector", input: input);
        }
        return CompanySector.invalid;
    }
  }
}

class _$InvalidCardIssuer extends CompanySectorValueObject {
  const _$InvalidCardIssuer()
      : super._(CompanySector.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum CompanySector {
  technology,
  consumerDefensive,
  communicationServices,
  healthcare,
  consumerCyclical,
  energy,
  industrials,
  invalid,
}
