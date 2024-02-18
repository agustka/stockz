import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/presentation/core/app.dart';
import 'package:stockz/setup.dart';

Future<void>? main() {
  return runZonedGuarded(
        () async {
      await launch(catchErrors: true);
    },
        (Object error, StackTrace stack) {
      err(error, trace: stack);
    },
  );
}

Future<void> launch({required bool catchErrors}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvironmentLoader().initialize();
  await setup(environment: EnvironmentLoader.environment!);

  if (catchErrors) {
    FlutterError.onError = (FlutterErrorDetails details) async {
      err(details, trace: details.stack);
    };
  }

  runApp(const App());
}
