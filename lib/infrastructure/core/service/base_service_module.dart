import 'dart:io';

import 'package:http/io_client.dart';
import 'package:logger/logger.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

class BaseServiceModule {
  IOClient get ioClient {
    try {
      HttpOverrides.global = MyHttpOverrides();

      final SecurityContext context = SecurityContext();
      final HttpClient client = HttpClient(context: context);

      client.userAgent = "flutter/${Platform.isIOS ? "iOS" : "Android"}";
      client.connectionTimeout = const Duration(seconds: 30);

      return IOClient(client);
    } catch (ex) {
      Logger().e("Exception in auth module: $ex");
      final HttpClient client = HttpClient();
      client.userAgent = "flutter/${Platform.isIOS ? "iOS" : "Android"}";
      client.connectionTimeout = const Duration(seconds: 30);
      return IOClient(client);
    }
  }
}
