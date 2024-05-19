import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/stock_listings/cache/tables/stock_listing_definition.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';

part 'stock_listings_dao.g.dart';

@DriftAccessor(
  tables: [
    StockListingTableRowDefinition,
  ],
)
@injectable
class StockListingsDao extends DatabaseAccessor<DriftDb> with _$StockListingsDaoMixin {
  StockListingsDao(super.db);

  Future<List<StockListingTableRow>> getStockListings() async {
    final List<StockListingTableRow> rows = await select(stockListingTableRowDefinition).get();
    return rows;
  }

  Future<void> addStockListings({
    required List<StockListingModel> listings,
    required int ttlSeconds,
  }) async {
    final List<StockListingModel> cloneList = listings.toList();
    await batch(
      (Batch batch) {
        batch.deleteAll(stockListingTableRowDefinition);
        batch.insertAll(
          stockListingTableRowDefinition,
          cloneList
              .map(
                (StockListingModel listing) => StockListingTableRowDefinitionCompanion.insert(
                  symbol: listing.symbol!,
                  exchange: listing.exchange ?? "invalid",
                  name: Value(listing.name),
                  price: Value(listing.price),
                  exchangeShortName: Value(listing.exchangeShortName),
                  type: Value(listing.type),
                  expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
