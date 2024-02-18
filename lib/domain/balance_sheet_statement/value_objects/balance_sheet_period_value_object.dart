import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class BalanceSheetPeriodValueObject extends ValueObject<BalanceSheetPeriod> {
  BalanceSheetPeriod get get => getOr(BalanceSheetPeriod.invalid);

  factory BalanceSheetPeriodValueObject(String? input, {bool logError = true}) {
    return BalanceSheetPeriodValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory BalanceSheetPeriodValueObject.invalid() = _$InvalidCardIssuer;

  const BalanceSheetPeriodValueObject._(BalanceSheetPeriod super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final BalanceSheetPeriod type = _parse(input, logError: false);
    if (type == BalanceSheetPeriod.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown balance sheet period type: $input");
    }
    return null;
  }

  static BalanceSheetPeriod _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "annual":
      case "fy":
        return BalanceSheetPeriod.annual;
      case "quarter":
        return BalanceSheetPeriod.quarter;
      default:
        if (logError) {
          errEnum(type: "BalanceSheetPeriod", input: input);
        }
        return BalanceSheetPeriod.invalid;
    }
  }
}

class _$InvalidCardIssuer extends BalanceSheetPeriodValueObject {
  const _$InvalidCardIssuer()
      : super._(BalanceSheetPeriod.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum BalanceSheetPeriod {
  annual,
  quarter,
  invalid,
}
