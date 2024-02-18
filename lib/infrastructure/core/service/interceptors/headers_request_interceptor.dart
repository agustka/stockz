import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class HeadersRequestInterceptor implements RequestInterceptor {
  HeadersRequestInterceptor();

  @override
  Future<Request> onRequest(Request request) async {
    if (request.headers.containsKey("Host")) {
      return request;
    }
    return applyHeaders(
      request,
      {
        "Host": "financialmodelingprep.com",
      },
    );
  }
}
