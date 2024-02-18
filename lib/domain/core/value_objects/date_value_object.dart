import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/infrastructure/core/models/ms_date_time.dart';
import 'package:stockz/presentation/core/app.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';

class DateValueObject extends ValueObject<DateTimeWrapper> {
  DateTime get get => getOr(const DateTimeWrapper.invalid()).date;

  factory DateValueObject(DateTime? input) {
    if (input == null) {
      return const DateValueObject.invalid();
    }
    return DateValueObject._(DateTimeWrapper(input.millisecondsSinceEpoch), _validateDateTime(input));
  }

  const DateValueObject._(DateTimeWrapper super.input, Failure<DateTimeWrapper>? super.failure);

  const factory DateValueObject.invalid() = _$InvalidDate;

  factory DateValueObject.fromMs(int? date) {
    if (date == null || date <= 0) {
      return const DateValueObject.invalid();
    }
    final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(date);
    if (dateTime.year < 2000) {
      return DateValueObject(null);
    }
    return DateValueObject(dateTime);
  }

  factory DateValueObject.fromString(String? date, {bool logError = true}) {
    if (date == null || date.isEmpty) {
      return DateValueObject(null);
    }
    try {
      final DateTime parsedDate = DateTime.parse(date);
      return DateValueObject(parsedDate);
    } catch (ex, stack) {
      if (int.tryParse(date) != null) {
        final DateTime attempt = DateTime.fromMillisecondsSinceEpoch(int.parse(date));
        if (attempt.year >= 1900) {
          return DateValueObject(attempt);
        }
      }
      if (logError) {
        err(ex, trace: stack);
      }
      return DateValueObject._(
        const DateTimeWrapper.invalid(),
        Failure.invalidValue(message: "Exception parsing date '$date': $ex"),
      );
    }
  }

  factory DateValueObject.fromMsDateTime(String? msDateTime, {bool logError = true}) {
    try {
      if (msDateTime == null || msDateTime.isEmpty) {
        return DateValueObject(null);
      }
      return DateValueObject(MsDateTime.fromString(msDateTime)?.date);
    } catch (ex, stack) {
      if (logError) {
        err(ex, trace: stack);
      }
      return DateValueObject._(
        const DateTimeWrapper.invalid(),
        Failure.invalidValue(message: "Exception parsing ms date '$msDateTime': $ex"),
      );
    }
  }

  String getDateFormat(BuildContext context) {
    return fold(
          (Failure failure) {
        return "-";
      },
          (DateTimeWrapper value) {
        final dateTimeFormatter = DateFormat(S.of(context).date_short_format);
        return dateTimeFormatter.format(value.date);
      },
    );
  }

  /// Displays a date in a desired [formatPattern]. If [formatPattern] is not present, [date_format_default] is used.
  String toDisplayString({String? formatPattern}) {
    final DateFormat dateFormat = DateFormat(
      formatPattern ?? S.current.date_format_default,
      App.userLocale.locale.languageCode,
    );
    return fold((Failure failure) => "-", (DateTimeWrapper value) => dateFormat.format(value.date));
  }

  static Failure<DateTimeWrapper>? _validateDateTime(DateTime? input) {
    if (input == null) {
      return Failure.invalidValue(
        failedValue: DateTimeWrapper(input?.millisecondsSinceEpoch ?? 0),
        message: "DateTime must not be null.",
      );
    }
    const int year = 365;
    if (input.millisecondsSinceEpoch <
        DateTime.now().subtract(const Duration(days: year * 300)).millisecondsSinceEpoch) {
      return Failure.invalidValue(
        failedValue: DateTimeWrapper(input.millisecondsSinceEpoch),
        message: "DateTime $input is not valid (more than 300 years ago).",
      );
    }
    return null;
  }
}

class _$InvalidDate extends DateValueObject {
  const _$InvalidDate()
      : super._(const DateTimeWrapper.invalid(), const Failure.invalidValue(message: "Null/invalid instance"));
}

@immutable
class DateTimeWrapper extends Equatable {
  final int millisecondsSinceEpoch;
  final bool valid;

  bool get isInvalid => !valid;
  DateTime get date => DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch);

  const DateTimeWrapper(this.millisecondsSinceEpoch, {this.valid = true});

  factory DateTimeWrapper.fromDate(DateTime date) {
    return DateTimeWrapper(date.millisecondsSinceEpoch);
  }

  const factory DateTimeWrapper.invalid() = _$InvalidDateTimeWrapper;

  @override
  String toString() {
    return DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch).toIso8601String();
  }

  @override
  List<Object?> get props => [millisecondsSinceEpoch, valid];
}

class _$InvalidDateTimeWrapper extends DateTimeWrapper {
  const _$InvalidDateTimeWrapper() : super(0, valid: false);
}
