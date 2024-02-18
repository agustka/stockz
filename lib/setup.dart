import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/localization/user_locale.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/setup.config.dart';

Future<void> setup({required BuildEnvironment environment}) async {
  await _configureFlavors(environment: environment);
  final Environment getItEnv = switch (environment) {
    BuildEnvironment.offline => InjectableEnv.offline,
    BuildEnvironment.test || BuildEnvironment.production => InjectableEnv.online,
  };
  await configureInjection(getItEnv);
}

class EnvironmentLoader {
  static BuildEnvironment? environment;

  Future<BuildEnvironment> initialize() async {
    return environment ??= await _loadEnvironmentConfig();
  }

  Future<BuildEnvironment> _loadEnvironmentConfig() async {
    try {
      final String configData = await rootBundle.loadString(AppAssets.config.buildConfig);
      final Map<String, dynamic> config = json.decode(configData) as Map<String, dynamic>;
      final String flavor = config["buildFlavor"].toString();
      switch (flavor.toLowerCase()) {
        case "testing":
        case "test":
        case "feature":
          return BuildEnvironment.test;

        case "production":
        case "prod":
          return BuildEnvironment.production;

        case "offline":
          return BuildEnvironment.offline;

        default:
          return BuildEnvironment.test;
      }
    } on Exception catch (e) {
      err(e);
      return BuildEnvironment.test;
    }
  }
}

class InjectableEnv {
  static Environment? current;

  const InjectableEnv._();

  static const Environment offline = Environment("offline");
  static const Environment online = Environment("online");
}

final GetIt getIt = GetIt.instance;
@injectableInit
Future<void> configureInjection(Environment env, {bool shouldResetFirst = false}) async {
  if (shouldResetFirst) {
    await getIt.reset();
  }
  InjectableEnv.current = env;
  getIt.init(environment: env.name);
}

Future<void> _configureFlavors({required BuildEnvironment environment}) async {
  Locale locale = const Locale("is", "IS");

  final String testUser = await rootBundle.loadString(AppAssets.test.testUser);
  final Map<String, dynamic> userMap = json.decode(testUser) as Map<String, dynamic>;
  if (userMap.containsKey("overrideLocale")) {
    final String overrideLocale = userMap["overrideLocale"].toString();
    locale = Locale(overrideLocale);
  }
  String token = "";
  if (userMap.containsKey("token")) {
    token = userMap["token"].toString();
  }

  FlavorConfig.addConfig(
    environment: BuildEnvironment.test,
    variables: FlavorConfiguration.test(locale: locale, token: token),
  );
  FlavorConfig.addConfig(
    environment: BuildEnvironment.offline,
    variables: FlavorConfiguration.test(locale: locale, token: token),
  );
  FlavorConfig.addConfig(
    environment: BuildEnvironment.production,
    variables: FlavorConfiguration.prod(token: token),
  );
  FlavorConfig.setEnvironment(environment);
}

class FlavorConfig {
  static FlavorConfig instance = FlavorConfig.initial();
  static final Map<BuildEnvironment, FlavorConfiguration> _variables = {};

  final BuildEnvironment environment;
  final FlavorConfiguration variables;
  String appVersion = "0.0.0.0"; // Fetched right after platform channel is ready

  FlavorConfig(this.environment, this.variables);

  factory FlavorConfig.initial() {
    return FlavorConfig(
      BuildEnvironment.test,
      FlavorConfiguration.test(
        locale: const Locale("is"),
        token: "",
      ),
    );
  }

  static void addConfig({required BuildEnvironment environment, required FlavorConfiguration variables}) {
    _variables[environment] = variables;
  }

  static void setEnvironment(BuildEnvironment environment) {
    instance = FlavorConfig(environment, _variables[environment]!);
  }
}

enum BuildEnvironment {
  offline,
  production,
  test,
}

class FlavorConfiguration {
  final String fmpHost;
  final UserLocale defaultLocale;
  final String dbToken;
  final String token;

  const FlavorConfiguration({
    required this.fmpHost,
    required this.defaultLocale,
    required this.dbToken,
    required this.token,
  });

  factory FlavorConfiguration.prod({required String token}) {
    return FlavorConfiguration(
      fmpHost: "https://financialmodelingprep.com",
      defaultLocale: UserLocale.fromLocale(const Locale("is", "IS")),
      dbToken: "OdIsITQ_nnDWEdFxc",
      token: token,
    );
  }

  factory FlavorConfiguration.test({required Locale locale, required String token}) {
    return FlavorConfiguration(
      fmpHost: "https://financialmodelingprep.com",
      defaultLocale: UserLocale.fromLocale(locale),
      dbToken: "_gBjEgHrIrGvKaYu",
      token: token,
    );
  }
}
