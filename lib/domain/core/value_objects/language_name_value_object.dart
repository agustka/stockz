import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class LanguageNameValueObject extends ValueObject<String> {
  factory LanguageNameValueObject(String? input) {
    return LanguageNameValueObject._(_parseInput(input), _validateInput(input));
  }

  const factory LanguageNameValueObject.invalid() = _$InvalidLanguageNameValueObject;

  const LanguageNameValueObject._(String super.input, Failure<String>? super.failure);

  static Failure<String>? _validateInput(String? input) {
    if ((input ?? "").isEmpty) {
      return Failure.invalidValue(failedValue: input, message: "Locale input must not be null.");
    }
    final String lang = (input ?? "").toLowerCase();
    if (!lang.startsWith("is") && !lang.startsWith("en") && !lang.startsWith("pl")) {
      return Failure.invalidValue(failedValue: input, message: "Only is, en and pl locales supported, not $input");
    }
    return null;
  }

  static String _parseInput(String? input) {
    if (input == null) {
      return "";
    }
    final String lang = input.toLowerCase();
    if (lang.startsWith("is")) {
      return "Íslenska";
    } else if (lang.startsWith("en")) {
      return "English";
    } else if (lang.startsWith("pl")) {
      return "Polski";
    }
    return "";
  }
}

class _$InvalidLanguageNameValueObject extends LanguageNameValueObject {
  const _$InvalidLanguageNameValueObject() : super._("", const Failure.invalidValue(message: "Null/invalid instance"));
}
