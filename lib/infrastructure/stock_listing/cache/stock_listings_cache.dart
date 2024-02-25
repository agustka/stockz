import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/stock_listing/cache/i_stock_listings_cache.dart';
import 'package:stockz/infrastructure/stock_listing/cache/stock_listings_dao.dart';
import 'package:stockz/infrastructure/stock_listing/models/stock_listing_model.dart';

@Injectable(as: IStockListingsCache)
class StockListingsCache with BaseCache implements IStockListingsCache {
  final StockListingsDao stockListingsDao;

  @override
  Duration get timeToLive => const Duration(days: 120);

  StockListingsCache(this.stockListingsDao);

  @override
  Future<Cache<List<StockListingModel>>> getStockListings({
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => stockListingsDao.getStockListings(),
      getExpires: (List<StockListingTableRow> rows) => rows.first.expires,
      conversionMethod: (List<StockListingTableRow> rows) {
        final List<StockListingModel> listings =
            rows.map((StockListingTableRow e) => StockListingModel.fromTableRow(e)).toList();
        return listings;
      },
    );
  }

  @override
  Future addStockListings({
    required List<StockListingModel> listings,
  }) {
    final Future added = stockListingsDao.addStockListingss(
      listings: listings,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addStockListings");
    return added;
  }
}
