import 'package:logger/logger.dart';
import 'package:stockz/setup.dart';

class ErrorHandler {
  static ErrorHandler? _instance;

  void logError(dynamic error, StackTrace? stacktrace) {
    try {
      Logger().e(error.toString(), error: error, stackTrace: stacktrace);
    } catch (e, stacktrace) {
      if (_isTestEnv()) {
        Logger().e("Error handler threw an error, how ironic. Original error: $error");
        Logger().e(e.toString(), error: e, stackTrace: stacktrace);
      }
    }
  }
}

void err(dynamic error, {StackTrace? trace}) {
  String errorMessage = error.toString();
  try {
    trace ??= StackTrace.current;
    final List<String> lines = StackTrace.current.toString().trimRight().split("\n").toList();
    if (lines.isNotEmpty && lines.length > 1) {
      errorMessage = "$errorMessage (${lines[1].replaceAll("#1", "").replaceAll("package:isbapp/", "").trim()})";
    }
  } catch (ex) {
    Logger().d("Exception thrown during error logging: $ex");
  }

  ErrorHandler._instance ??= ErrorHandler();
  ErrorHandler._instance?.logError(errorMessage, trace);
}

void errEnum({required String type, required dynamic input}) {
  if (input != null) {
    err("Could not parse $type: '$input'");
  }
}

bool _isTestEnv() {
  return FlavorConfig.instance.environment != BuildEnvironment.production;
}
