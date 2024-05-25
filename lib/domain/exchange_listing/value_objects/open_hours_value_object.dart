import 'package:intl/intl.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class OpenHoursValueObject extends ValueObject<DateValueObject> {
  DateValueObject get get => getOr(const DateValueObject.invalid());

  factory OpenHoursValueObject(String? input, {bool logError = true}) {
    return OpenHoursValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory OpenHoursValueObject.invalid() = _$InvalidOpenHoursValueObject;

  const OpenHoursValueObject._(DateValueObject super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Balance sheet period type must not be null.");
    }
    final DateValueObject date = _parse(input, logError: false);
    if (date == const DateValueObject.invalid()) {
      return Failure.invalidValue(failedValue: input, message: "Unknown date format: $input");
    }
    return null;
  }

  static DateValueObject _parse(String? input, {required bool logError}) {
    if (input == null) {
      return const DateValueObject.invalid();
    }
    final DateTime now = DateTime.now();
    final DateFormat dateFormat = DateFormat("hh:mm a");
    final DateTime hours = dateFormat.parse(input);
    final DateTime opening = DateTime(now.year, now.month, now.day, hours.hour, hours.minute);
    return DateValueObject(opening);
  }
}

class _$InvalidOpenHoursValueObject extends OpenHoursValueObject {
  const _$InvalidOpenHoursValueObject()
      : super._(const DateValueObject.invalid(), const Failure.invalidValue(message: "Null/invalid value"));
}
