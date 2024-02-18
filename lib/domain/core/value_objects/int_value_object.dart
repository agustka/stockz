import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class IntValueObject extends ValueObject<int> {
  int get get => getOr(-1);

  factory IntValueObject(int? input) {
    return IntValueObject._(input ?? 0, _validateNumber(input));
  }

  factory IntValueObject.fromString(String? input) {
    return IntValueObject(int.tryParse(input ?? ""));
  }


  const factory IntValueObject.invalid() = _$InvalidNumber;

  const IntValueObject._(int super.input, super.failure);

  static Failure? _validateNumber(num? input) {
    if (input != null) {
      return null;
    }
    return const Failure.invalidValue(message: "Int number must not be null.");
  }
}

class _$InvalidNumber extends IntValueObject {
  const _$InvalidNumber() : super._(0, const Failure.invalidValue(message: "Null/invalid instance"));
}
