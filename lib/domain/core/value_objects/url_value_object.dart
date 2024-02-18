import 'package:equatable/equatable.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class UrlValueObject extends ValueObject<UriValue> {
  Uri get get => getOr(const UriValue.invalid()).uri;

  factory UrlValueObject(String? input) {
    return UrlValueObject._(_parseWebUrl(input), _validateWebUrl(input));
  }

  const factory UrlValueObject.invalid() = _$InvalidUrl;

  const UrlValueObject._(UriValue super.input, Failure<String>? super.failure);

  static Failure<String>? _validateWebUrl(String? input) {
    if ((input ?? "").isEmpty) {
      return Failure.invalidValue(failedValue: input, message: "Url input must not be null.");
    }
    final String url = (input ?? "").toLowerCase();
    final bool isValid = (url.startsWith("https://") || url.startsWith("http://")) && url.contains(".");
    if (!isValid) {
      return Failure.invalidValue(failedValue: input, message: "Provided url is not valid: $input.");
    }
    return null;
  }

  static UriValue _parseWebUrl(String? input) {
    if (input == null) {
      return const UriValue("");
    }
    return UriValue(input);
  }
}

class _$InvalidUrl extends UrlValueObject {
  const _$InvalidUrl() : super._(const UriValue(""), const Failure.invalidValue(message: "Null/invalid instance"));
}

class UriValue extends Equatable {
  final String _url;

  bool get isInvalid => _url.isEmpty;
  bool get valid => _url.isNotEmpty;

  Uri get uri => Uri.parse(_url);

  const UriValue(this._url);

  const factory UriValue.invalid() = _$InvalidUriValue;

  @override
  String toString() {
    return _url;
  }

  @override
  List<Object?> get props => [_url];
}

class _$InvalidUriValue extends UriValue {
  const _$InvalidUriValue() : super("");
}
