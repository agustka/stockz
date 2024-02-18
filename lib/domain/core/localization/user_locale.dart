import 'package:flutter/material.dart';
import 'package:stockz/domain/core/value_objects/language_name_value_object.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';

@immutable
class UserLocale {
  final TextValueObject localePlain;
  final Locale locale;
  final LanguageNameValueObject languageName;
  final bool valid;

  bool get isInvalid => !valid;

  const UserLocale({required this.localePlain, required this.locale, required this.languageName, this.valid = true});

  factory UserLocale.fromString(String input) {
    String language = input;
    String country = "";
    if (input.contains("-")) {
      final List<String> parts = input.split("-");
      language = parts.first;
      country = parts[1];
    }
    final Locale locale = Locale(language, country);
    return UserLocale(
      localePlain: TextValueObject(input),
      locale: locale,
      languageName: LanguageNameValueObject(input),
    );
  }

  factory UserLocale.fromLocale(Locale locale) {
    return UserLocale(
      localePlain: TextValueObject(locale.toLanguageTag()),
      locale: locale,
      languageName: LanguageNameValueObject(locale.languageCode),
    );
  }

  const factory UserLocale.invalid() = _$InvalidUserLocale;

  factory UserLocale.icelandic() {
    return UserLocale(
      localePlain: TextValueObject("Íslenska"),
      locale: const Locale("is", "IS"),
      languageName: LanguageNameValueObject("Íslenska"),
    );
  }

  factory UserLocale.english() {
    return UserLocale(
      localePlain: TextValueObject("English"),
      locale: const Locale("en", "GB"),
      languageName: LanguageNameValueObject("English"),
    );
  }

  factory UserLocale.polish() {
    return UserLocale(
      localePlain: TextValueObject("Polski"),
      locale: const Locale("pl", "PL"),
      languageName: LanguageNameValueObject("Polski"),
    );
  }
}

class _$InvalidUserLocale extends UserLocale {
  const _$InvalidUserLocale()
      : super(
    localePlain: const TextValueObject.invalid(),
    locale: const Locale("is"),
    languageName: const LanguageNameValueObject.invalid(),
    valid: false,
  );
}
