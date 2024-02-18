import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@LazySingleton(as: DriftDb)
class OfflineDriftDb extends DriftDb {
  OfflineDriftDb() : super(executor: NativeDatabase.memory()) {
    driftRuntimeOptions.dontWarnAboutMultipleDatabases = true;
  }
}
