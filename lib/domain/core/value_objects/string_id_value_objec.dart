import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class StringIdValueObject extends ValueObject<String> {
  String get get => getOr("-");

  factory StringIdValueObject(String? input) {
    return StringIdValueObject._(input ?? "", _validateStringId(input));
  }

  const factory StringIdValueObject.invalid() = _$InvalidStringId;

  const StringIdValueObject._(String super.input, Failure<String>? super.failure);

  static Failure<String>? _validateStringId(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "String id can't be null.");
    } else if (input == "0" || input == "-1") {
      return Failure.invalidValue(message: "String id $input is not a valid id.");
    } else if (input.isEmpty) {
      return Failure.invalidValue(failedValue: input, message: "String id can't be empty.");
    }
    return null;
  }
}

class _$InvalidStringId extends StringIdValueObject {
  const _$InvalidStringId() : super._("", const Failure.invalidValue(message: "Null/invalid instance"));
}
