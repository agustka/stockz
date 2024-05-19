import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart';
import 'package:stockz/setup.dart';

const String cachingDatabaseName = "hiw_nsg_4h.fin";

@module
abstract class DatabaseModule {
  @Singleton(order: 1)
  QueryExecutor get queryExecutorOnline {
    if (getIt<ITestRunnerDeterminer>().isRunningOffline) {
      return NativeDatabase.memory();
    }
    return LazyDatabase(() async {
      final Directory dbFolder = await getApplicationDocumentsDirectory();
      final File file = File(p.join(dbFolder.path, "db.sqlite"));
      return NativeDatabase(file, cachePreparedStatements: true);
    });
  }
}
