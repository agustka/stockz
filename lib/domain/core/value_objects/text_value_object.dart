import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class TextValueObject extends ValueObject<String> {
  String get get => getOr("");

  factory TextValueObject(String? input) {
    return TextValueObject._(input ?? "", _validateText(input));
  }

  const factory TextValueObject.invalid() = _$InvalidText;

  const TextValueObject._(String super.input, Failure<String>? super.failure);

  static Failure<String>? _validateText(String? input) {
    if (input != null) {
      return null;
    }
    return const Failure.invalidValue(message: "Text input must not be null.");
  }
}

class _$InvalidText extends TextValueObject {
  const _$InvalidText() : super._("", const Failure.invalidValue(message: "Null/invalid instance"));
}
