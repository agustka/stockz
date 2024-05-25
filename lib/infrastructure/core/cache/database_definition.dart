import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/cache/tables/balance_sheet_statement_definition.dart';
import 'package:stockz/infrastructure/cash_flow_statement/cache/tables/cash_flow_statement_definition.dart';
import 'package:stockz/infrastructure/chart/cache/tables/chart_eod_item_definition.dart';
import 'package:stockz/infrastructure/company_profile/cache/tables/company_profile_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/exchange_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/exchange_listing_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/exchange_symbol_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/index_definition.dart';
import 'package:stockz/infrastructure/income_statement/cache/tables/income_statement_definition.dart';
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
    ExchangeListingTableRowDefinition,
    IndexTableRowDefinition,
    ExchangeSymbolTableRowDefinition,
    ExchangeTableRowDefinition,
  ],
)
class DriftDb extends _$DriftDb {
  DriftDb({required QueryExecutor executor}) : super(executor);

  @override
  int get schemaVersion => 9;
  @override
  MigrationStrategy get migration => destructiveFallback;
}
