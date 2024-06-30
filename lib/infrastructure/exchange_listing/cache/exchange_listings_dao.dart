import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/exchange_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/exchange_listing_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/exchange_symbol_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/tables/index_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_listing_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_model.dart';

part 'exchange_listings_dao.g.dart';

@DriftAccessor(
  tables: [
    ExchangeListingTableRowDefinition,
    IndexTableRowDefinition,
    ExchangeSymbolTableRowDefinition,
    ExchangeTableRowDefinition,
  ],
)
@injectable
class StockListingsDao extends DatabaseAccessor<DriftDb> with _$StockListingsDaoMixin {
  StockListingsDao(super.db);

  Future<List<ExchangeListingTableRow>> getExchangeListings({required String exchangeSymbol}) async {
    final SimpleSelectStatement<$ExchangeListingTableRowDefinitionTable, ExchangeListingTableRow> query =
        select(exchangeListingTableRowDefinition)
          ..where(($ExchangeListingTableRowDefinitionTable tbl) => tbl.exchangeSymbol.equals(exchangeSymbol));
    final List<ExchangeListingTableRow> rows = await query.get();
    return rows;
  }

  Future<List<ExchangeSymbolTableRow>> getExchangeSymbols() async {
    final List<ExchangeSymbolTableRow> rows = await select(exchangeSymbolTableRowDefinition).get();
    return rows;
  }

  Future<ExchangeTableRow?> getExchange({required String exchangeSymbol}) async {
    final SimpleSelectStatement<$ExchangeTableRowDefinitionTable, ExchangeTableRow> query =
        select(exchangeTableRowDefinition)
          ..where(($ExchangeTableRowDefinitionTable tbl) => tbl.exchangeSymbol.equals(exchangeSymbol));
    final List<ExchangeTableRow> rows = await query.get();
    return rows.firstOrNull;
  }

  Future<void> addExchangeListings({
    required List<ExchangeListingModel> listings,
    required String exchangeSymbol,
    required int ttlSeconds,
  }) async {
    final List<ExchangeListingModel> cloneList = listings.toList();
    await batch(
      (Batch batch) {
        batch.deleteWhere(
          exchangeListingTableRowDefinition,
          ($ExchangeListingTableRowDefinitionTable tbl) => tbl.exchangeSymbol.equals(exchangeSymbol),
        );
        batch.insertAll(
          exchangeListingTableRowDefinition,
          cloneList
              .map(
                (ExchangeListingModel listing) => ExchangeListingTableRowDefinitionCompanion.insert(
                  symbol: listing.symbol!,
                  exchangeSymbol: exchangeSymbol,
                  exchange: listing.exchange ?? "invalid",
                  name: Value(listing.name),
                  price: Value(listing.price),
                  changesPercentage: Value(listing.changesPercentage),
                  expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
                ),
              )
              .toList(),
        );
      },
    );
  }

  Future<void> addExchangeSymbols({
    required List<String> symbols,
    required int ttlSeconds,
  }) async {
    final List<String> cloneList = symbols.toList();
    await batch(
      (Batch batch) {
        batch.deleteAll(exchangeSymbolTableRowDefinition);
        batch.insertAll(
          exchangeSymbolTableRowDefinition,
          cloneList
              .map(
                (String exchange) => ExchangeSymbolTableRowDefinitionCompanion.insert(
                  symbol: exchange,
                  expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
                ),
              )
              .toList(),
        );
      },
    );
  }

  Future addExchange({required ExchangeModel exchange, required String exchangeSymbol, required int ttlSeconds}) async {
    await batch(
      (Batch batch) {
        batch.deleteWhere(
          exchangeTableRowDefinition,
          ($ExchangeTableRowDefinitionTable tbl) => tbl.exchangeSymbol.equals(exchangeSymbol),
        );
        batch.insert(
          exchangeTableRowDefinition,
          ExchangeTableRowDefinitionCompanion.insert(
            exchangeSymbol: exchangeSymbol,
            stockExchangeName: Value(exchange.stockExchangeName),
            stockMarketHours: Value(exchange.stockMarketHoursAsJson()),
            stockMarketHolidays: Value(exchange.stockMarketHolidaysAsJson()),
            isTheStockMarketOpen: Value(exchange.isTheStockMarketOpen),
            isTheEuronextMarketOpen: Value(exchange.isTheEuronextMarketOpen),
            isTheForexMarketOpen: Value(exchange.isTheForexMarketOpen),
            isTheCryptoMarketOpen: Value(exchange.isTheCryptoMarketOpen),
            expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
          ),
        );
      },
    );
  }
}
