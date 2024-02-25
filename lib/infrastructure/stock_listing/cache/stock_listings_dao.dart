import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/stock_listing/cache/tables/stock_listing_definition.dart';
import 'package:stockz/infrastructure/stock_listing/models/stock_listing_model.dart';

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
    return select(stockListingTableRowDefinition).get();
  }

  Future<void> addStockListingss({
    required List<StockListingModel> listings,
    required int ttlSeconds,
  }) async {
    final List<StockListingModel> cloneList = listings.toList();
    return batch(
      (Batch batch) {
        batch.deleteAll(stockListingTableRowDefinition);
        batch.insertAll(
          stockListingTableRowDefinition,
          cloneList
              .map(
                (StockListingModel listing) => StockListingTableRowDefinitionCompanion.insert(
                  symbol: listing.symbol!,
                  name: Value(listing.name),
                  price: Value(listing.price),
                  exchange: Value(listing.exchange),
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
