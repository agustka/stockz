import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:encrypted_drift/encrypted_drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart';
import 'package:stockz/setup.dart';

const String cachingDatabaseName = "hiw_nsg_4h.db";

@module
abstract class DatabaseModule {
  @Singleton()
  QueryExecutor get queryExecutorOnline {
    if (getIt<ITestRunnerDeterminer>().isRunningOffline) {
      return NativeDatabase.memory();
    }
    return EncryptedExecutor.inDatabaseFolder(
      path: cachingDatabaseName,
      logStatements: false,
      password: FlavorConfig.instance.variables.dbToken,
    );
  }
}
