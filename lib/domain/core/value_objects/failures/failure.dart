import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@Freezed()
class Failure<T> {
  //#region Generic

  static Failure get nullError => const Failure.invalidValue(message: "Error, value or failure is null.");

  const factory Failure.none() = NoFailure;

  const factory Failure.exceptionThrown({
    T? exception,
    required String message,
  }) = ExceptionThrown<T>;

  const factory Failure.invalidValue({
    T? failedValue,
    required String message,
  }) = InvalidValue<T>;

  const factory Failure.serverError({
    T? failedValue,
    required String message,
  }) = ServerError<T>;

  const factory Failure.serviceError({
    T? failedValue,
    required String message,
  }) = ServiceError<T>;

  const factory Failure.socketTimeout({
    T? failedValue,
    required String message,
  }) = SocketTimeout<T>;
}
