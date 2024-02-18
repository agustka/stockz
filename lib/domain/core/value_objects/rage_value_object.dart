import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class RangeValueObject extends ValueObject<Range> {
  Range get get => getOr(const Range.invalid());

  factory RangeValueObject(String? input) {
    return RangeValueObject._(
      _parse(input).fold(
        (Failure failure) => const Range.invalid(),
        (Range range) => range,
      ),
      _validate(input),
    );
  }

  const factory RangeValueObject.invalid() = _$InvalidRangeValueObject;

  const RangeValueObject._(Range super.input, super.failure);

  static Failure? _validate(String? input) {
    final Payload<Range> parseResult = _parse(input);
    return parseResult.fold(
      (Failure failure) => failure,
      (Range value) => null,
    );
  }

  static Payload<Range> _parse(String? input) {
    if (input == null) {
      return Payload.failure(const Failure.invalidValue(message: "Number must not be null."));
    }
    if (!input.contains("-")) {
      return Payload.failure(
        Failure.invalidValue(message: "Range value must have '-' between the 2 ranges. Input was: $input"),
      );
    }
    final List<String> parts = input.split("-");
    if (parts.length != 2) {
      return Payload.failure(Failure.invalidValue(message: "Error parsing input range: $input"));
    }
    final String first = parts.first.trim();
    final String second = parts.last.trim();
    final double? firstValue = double.tryParse(first);
    final double? secondValue = double.tryParse(second);
    if (firstValue == null || secondValue == null) {
      return Payload.failure(Failure.invalidValue(message: "Error parsing input range: $input"));
    }

    return Payload.success(Range(from: firstValue, to: secondValue));
  }
}

class _$InvalidRangeValueObject extends RangeValueObject {
  const _$InvalidRangeValueObject()
      : super._(
          const Range.invalid(),
          const Failure.invalidValue(message: "Null/invalid instance"),
        );
}

@immutable
class Range {
  final num from;
  final num to;
  final bool valid;

  const Range({required this.from, required this.to, this.valid = true});

  const factory Range.invalid() = _$InvalidRange;
}

class _$InvalidRange extends Range {
  const _$InvalidRange() : super(from: 0, to: 0, valid: false);
}
