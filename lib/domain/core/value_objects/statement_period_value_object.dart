import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class StatementPeriodValueObject extends ValueObject<StatementPeriod> {
  StatementPeriod get get => getOr(StatementPeriod.invalid);

  factory StatementPeriodValueObject(String? input, {bool logError = true}) {
    return StatementPeriodValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory StatementPeriodValueObject.invalid() = _$InvalidCardIssuer;

  const StatementPeriodValueObject._(StatementPeriod super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final StatementPeriod type = _parse(input, logError: false);
    if (type == StatementPeriod.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static StatementPeriod _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "annual":
      case "fy":
        return StatementPeriod.annual;
      case "quarter":
        return StatementPeriod.quarter;
      default:
        if (logError) {
          errEnum(type: "BalanceSheetPeriod", input: input);
        }
        return StatementPeriod.invalid;
    }
  }
}

class _$InvalidCardIssuer extends StatementPeriodValueObject {
  const _$InvalidCardIssuer()
      : super._(StatementPeriod.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum StatementPeriod {
  annual,
  quarter,
  invalid,
}
