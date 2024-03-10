import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';

abstract class IStockListingsCache {
  Future<Cache<List<StockListingModel>>> getStockListings({
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future addStockListings({required List<StockListingModel> listings});
}
