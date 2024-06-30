import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class PercentageValueObject extends ValueObject<Percentage> {
  Percentage get get => getOr(const Percentage.invalid());

  factory PercentageValueObject(String? input, {bool logError = true}) {
    return PercentageValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory PercentageValueObject.invalid() = _$InvalidPercentageValueObject;

  const PercentageValueObject._(Percentage super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Percentage must not be null.");
    }
    return null;
  }

  static Percentage _parse(String? input, {required bool logError}) {
    if (input == null) {
      return const Percentage.invalid();
    }
    try {
      final double value = double.parse(input);
      return Percentage(value: value);
    } catch (ex) {
      return const Percentage.invalid();
    }
  }
}

class _$InvalidPercentageValueObject extends PercentageValueObject {
  const _$InvalidPercentageValueObject()
      : super._(const Percentage.invalid(), const Failure.invalidValue(message: "Null/invalid value"));
}

@immutable
class Percentage extends Equatable {
  final double value;
  final bool valid;

  bool get isInvalid => !valid;
  bool get isPositive => value > 0.0;
  bool get isZero => value == 0.0;

  const Percentage({required this.value, this.valid = true});

  const factory Percentage.invalid() = _$InvalidPercentage;

  String format() => "${value.toStringAsFixed(2)}%";

  @override
  List<Object?> get props => [value, valid];
}

class _$InvalidPercentage extends Percentage {
  const _$InvalidPercentage() : super(value: 0, valid: false);
}
