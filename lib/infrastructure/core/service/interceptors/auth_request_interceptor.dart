import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/setup.dart';

@LazySingleton()
class AuthRequestInterceptor implements RequestInterceptor {
  AuthRequestInterceptor();

  @override
  Future<Request> onRequest(Request request) async {
    const String apiKey = "apikey";

    final Map<String, dynamic> newParameters = request.parameters;
    if (newParameters.containsKey(apiKey)) {
      return request;
    }

    newParameters[apiKey] = FlavorConfig.instance.variables.token;

    final Request updated = request.copyWith(parameters: newParameters);
    return updated;
  }
}
