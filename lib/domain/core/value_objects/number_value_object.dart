import 'package:stockz/domain/core/localization/text/percent_number_formatter.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/presentation/core/app.dart';

class NumberValueObject extends ValueObject<num> {
  num get get => getOr(0);

  factory NumberValueObject(num? input) {
    return NumberValueObject._(input ?? 0, _validateNumber(input));
  }

  const factory NumberValueObject.invalid() = _$InvalidNumber;

  const NumberValueObject._(num super.input, Failure<double>? super.failure);

  factory NumberValueObject.fromString(String? input) {
    final num? number = num.tryParse(input ?? "");
    return NumberValueObject(number);
  }

  static Failure<double>? _validateNumber(num? input) {
    if (input != null) {
      return null;
    }
    return const Failure.invalidValue(message: "Number must not be null.");
  }

  String toStringWithPercent({int decimalPoints = 2, bool alwaysShowDecimals = true}) {
    return PercentNumberFormatter.format(
      value: get,
      locale: App.userLocale.locale,
      decimalPoints: decimalPoints,
      alwaysShowDecimals: alwaysShowDecimals,
    );
  }
}

class _$InvalidNumber extends NumberValueObject {
  const _$InvalidNumber() : super._(0, const Failure.invalidValue(message: "Null/invalid instance"));
}
