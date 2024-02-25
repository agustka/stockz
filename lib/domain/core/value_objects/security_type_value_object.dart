import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

class SecurityTypeValueObject extends ValueObject<SecurityType> {
  SecurityType get get => getOr(SecurityType.invalid);

  factory SecurityTypeValueObject(String? input, {bool logError = true}) {
    return SecurityTypeValueObject._(_parse(input, logError: logError), _validate(input));
  }

  const factory SecurityTypeValueObject.invalid() = _$InvalidCardIssuer;

  const SecurityTypeValueObject._(SecurityType super.input, Failure<String>? super.failure);

  static Failure<String>? _validate(String? input) {
    if (input == null) {
      return const Failure.invalidValue(message: "Security type must not be null.");
    }
    final SecurityType type = _parse(input, logError: false);
    if (type == SecurityType.invalid) {
      return Failure.invalidValue(failedValue: input, message: "Unknown security type: $input");
    }
    return null;
  }

  static SecurityType _parse(String? input, {required bool logError}) {
    switch (input?.toLowerCase() ?? "") {
      case "stock":
        return SecurityType.stock;
      case "etf":
        return SecurityType.etf;
      default:
        if (logError) {
          errEnum(type: "SecurityType", input: input);
        }
        return SecurityType.invalid;
    }
  }
}

class _$InvalidCardIssuer extends SecurityTypeValueObject {
  const _$InvalidCardIssuer()
      : super._(SecurityType.invalid, const Failure.invalidValue(message: "Null/invalid value"));
}

enum SecurityType {
  stock,
  etf,
  invalid,
}
