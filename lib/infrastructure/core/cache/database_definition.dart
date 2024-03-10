import 'dart:io';

import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:sqflite_sqlcipher/sqflite.dart' as sql_cypher;
import 'package:stockz/application/core/analytics/analytics_helper.dart';
import 'package:stockz/domain/core/analytics/event.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/cache/tables/balance_sheet_statement_definition.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/tables/cash_flow_statement_definition.dart';
import 'package:stockz/infrastructure/chart/cache/tables/chart_eod_item_definition.dart';
import 'package:stockz/infrastructure/company_profile/cache/tables/company_profile_definition.dart';
import 'package:stockz/infrastructure/core/cache/database_module.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/infrastructure/income_statement/cache/tables/income_statement_definition.dart';
import 'package:stockz/infrastructure/stock_listings/cache/tables/stock_listing_definition.dart';
import 'package:stockz/setup.dart';

part 'database_definition.g.dart';

@InjectableEnv.online
@LazySingleton()
@DriftDatabase(
  tables: [
    CompanyProfileTableRowDefinition,
    BalanceSheetStatementTableRowDefinition,
    CashFlowStatementTableRowDefinition,
    IncomeStatementTableRowDefinition,
    ChartEodItemTableRowDefinition,
    StockListingTableRowDefinition,
  ],
)
class DriftDb extends _$DriftDb with AnalyticsHelper {
  DriftDb({required QueryExecutor executor}) : super(executor);

  @override
  int get schemaVersion => 6;

  @override
  MigrationStrategy get migration => destructiveFallback;

  Future<void> recreate() async {
    log(Event.databaseRecreated());

    final Migrator migration = createMigrator();
    final Iterable<DatabaseSchemaEntity> reversedEntities = allSchemaEntities.toList().reversed;
    for (final DatabaseSchemaEntity entity in reversedEntities) {
      try {
        await migration.drop(entity);
      } catch (ex) {
        err("Error recreating database: $ex");
        purge();
        return;
      }
    }
    await migration.createAll();
  }

  Future<void> purge() async {
    for (final TableInfo table in allTables) {
      try {
        await delete(table).go();
      } catch (e, stacktrace) {
        err(e, trace: stacktrace);
      }
    }
  }

  Future<void> deleteDatabaseFile() async {
    final String dbPath = await sql_cypher.getDatabasesPath();
    final String path = join(dbPath, cachingDatabaseName);
    final File dbFile = File(path);
    dbFile.delete();
  }
}
