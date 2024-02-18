import 'dart:io';

import 'package:chopper/chopper.dart' as chopper;
import 'package:chopper/chopper.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/infrastructure/core/service/base_service_config.dart';

mixin BaseService {
  static const String isbAppSystemId = "IOP";

  final Duration defaultTimeToLive = const Duration(minutes: 30);

  final BaseServiceConfig config = BaseServiceConfig();

  Future<bool> needsRetry(Response response, int level) async {
    if (config.retryStatusCodes.contains(response.statusCode) && level < config.maxRetriesCount) {
      await Future.delayed(config.retryDelayDuration);
      return true;
    }
    return false;
  }

  Future<Payload<T>> handleResponse<T>(Response<T> response, {Duration? overrideTimeToLive}) async {
    if (response.isSuccessful) {
      return Payload.successWithTimeToLive(
        payload: response.body as T,
        timeToLive: overrideTimeToLive ?? extractTimeToLive(response),
      );
    } else {
      return Payload.failure(
        Failure.serverError(
          failedValue: response.statusCode,
          message: "${response.base.request?.url} failed with http ${response.statusCode}",
        ),
      );
    }
  }

  Future<Payload<T>> handleException<T>(Exception exception, StackTrace stacktrace) async {
    err(exception, trace: stacktrace);
    if (exception is SocketException) {
      return Payload.failure(const Failure.socketTimeout(failedValue: 0, message: "Timeout - no internet connection."));
    }
    return Payload.failure(Failure.serverError(failedValue: 0, message: exception.toString()));
  }

  Duration extractTimeToLive(Response response) {
    const String cacheControlHeader = "cache-control";
    if (response.headers.containsKey(cacheControlHeader)) {
      final String maxAge = response.headers[cacheControlHeader]?.trim() ?? "";
      if (maxAge.startsWith("max-age=")) {
        final String seconds = maxAge.split("=")[1];
        return Duration(seconds: int.parse(seconds));
      }
    }
    return config.defaultTimeToLive;
  }
}

extension RequestExtension on chopper.Request {
  String get baseUrl {
    final String asString = toString();
    if (asString.isEmpty) {
      return "";
    }
    final List<String> parts = asString.split("/");
    if (parts.isEmpty) {
      return "";
    }
    return parts.first;
  }
}
