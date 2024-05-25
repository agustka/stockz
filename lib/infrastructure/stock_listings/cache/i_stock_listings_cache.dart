import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/stock_listings/models/exchange_model.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';

abstract class IStockListingsCache {
  Future<Cache<List<StockListingModel>>> getStockListings({
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future<Cache<List<String>>> getExchanges({CachingPolicy policy = CachingPolicy.alwaysProvide});

  Future<Cache<ExchangeModel>> getExchange({required String exchangeSymbol, required CachingPolicy policy});

  Future<Cache<List<StockListingModel>>> getExchangeListings({
    required String exchangeSymbol,
    required CachingPolicy policy,
  });

  Future addStockListings({required List<StockListingModel> listings});

  Future addExchanges({required List<String> exchanges});

  Future addExchange({required ExchangeModel exchange, required String exchangeSymbol});

  Future addExchangeListings({required List<StockListingModel> listings, required String exchangeSymbol});
}
