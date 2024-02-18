import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class BoolValueObject extends ValueObject<bool> {
  bool get get => getOr(false);

  factory BoolValueObject({required bool? input}) {
    return BoolValueObject._(input ?? false, _validateBool(input: input));
  }

  const factory BoolValueObject.invalid() = _$InvalidBool;

  factory BoolValueObject.yes() => BoolValueObject(input: true);

  factory BoolValueObject.no() => BoolValueObject(input: false);

  const BoolValueObject._(bool super.input, Failure<bool>? super.failure);

  factory BoolValueObject.fromInt(int? input) {
    return BoolValueObject(input: input == null ? null : input == 1);
  }

  static Failure<bool>? _validateBool({bool? input}) {
    if (input != null) {
      return null;
    }
    return Failure.invalidValue(failedValue: input, message: "Bool input must not be null.");
  }
}

class _$InvalidBool extends BoolValueObject {
  const _$InvalidBool() : super._(false, const Failure.invalidValue(message: "Null/invalid instance"));
}
