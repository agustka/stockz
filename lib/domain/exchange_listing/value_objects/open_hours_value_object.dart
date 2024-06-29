import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class OpenHoursValueObject extends ValueObject<OpenHours> {
  OpenHours get get => getOr(const OpenHours.invalid());

  factory OpenHoursValueObject(String? input, {bool logError = true}) {
    return OpenHoursValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory OpenHoursValueObject.invalid() = _$InvalidOpenHoursValueObject;

  const OpenHoursValueObject._(OpenHours super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Open hours must not be null.");
    }
    return null;
  }

  static OpenHours _parse(String? input, {required bool logError}) {
    if (input == null) {
      return const OpenHours.invalid();
    } else if (input == "CLOSED") {
      return const OpenHours.closed();
    }
    try {
      final DateTime now = DateTime.now();
      final DateFormat dateFormat = DateFormat("hh:mm a");
      final DateTime hours = dateFormat.parse(input);
      final DateTime opening = DateTime(now.year, now.month, now.day, hours.hour, hours.minute);
      return OpenHours(openHours: DateValueObject(opening), isOpenNow: true);
    } catch (ex) {
      return const OpenHours.closed();
    }
  }
}

class _$InvalidOpenHoursValueObject extends OpenHoursValueObject {
  const _$InvalidOpenHoursValueObject()
      : super._(const OpenHours.invalid(), const Failure.invalidValue(message: "Null/invalid value"));
}

@immutable
class OpenHours extends Equatable {
  final DateValueObject openHours;
  final bool isOpenNow;
  final bool valid;

  bool get isInvalid => !valid;

  const OpenHours({required this.openHours, required this.isOpenNow, this.valid = true});

  const factory OpenHours.invalid() = _$InvalidOpenHours;

  const factory OpenHours.closed() = _$ClosedOpenHours;

  @override
  List<Object?> get props => [openHours, isOpenNow];
}

class _$InvalidOpenHours extends OpenHours {
  const _$InvalidOpenHours() : super(openHours: const DateValueObject.invalid(), isOpenNow: false, valid: false);
}

class _$ClosedOpenHours extends OpenHours {
  const _$ClosedOpenHours() : super(openHours: const DateValueObject.invalid(), isOpenNow: false);
}
