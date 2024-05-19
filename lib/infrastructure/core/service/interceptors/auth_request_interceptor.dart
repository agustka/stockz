import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/setup.dart';

@LazySingleton()
class AuthRequestInterceptor implements Interceptor {
  AuthRequestInterceptor();

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    const String apiKey = "apikey";
    final Request request = chain.request;

    final Map<String, dynamic> newParameters = request.parameters;
    if (newParameters.containsKey(apiKey)) {
      return chain.proceed(request);
    }
    newParameters[apiKey] = FlavorConfig.instance.variables.token;

    final Request updated = request.copyWith(parameters: newParameters);
    return chain.proceed(updated);
  }
}
