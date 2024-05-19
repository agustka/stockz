import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class HeadersRequestInterceptor implements Interceptor {
  HeadersRequestInterceptor();

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final Request request = chain.request;
    if (request.headers.containsKey("Host")) {
      return chain.proceed(request);
    }
    return chain.proceed(
      applyHeaders(
        request,
        {
          "Host": "financialmodelingprep.com",
        },
      ),
    );
  }
}
