import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/exchange_listings_dao.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_listing_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_model.dart';

@Injectable()
class ExchangeListingsCache with BaseCache {
  final StockListingsDao stockListingsDao;

  @override
  Duration get timeToLive => const Duration(days: 120);
  Duration get _shortTimeToLive => const Duration(minutes: 30);

  ExchangeListingsCache(this.stockListingsDao);

  Future<Cache<List<String>>> getExchangeSymbols({
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => stockListingsDao.getExchangeSymbols(),
      getExpires: (List<ExchangeSymbolTableRow> rows) => rows.first.expires,
      conversionMethod: (List<ExchangeSymbolTableRow> rows) {
        return rows.map((ExchangeSymbolTableRow e) => e.symbol).toList();
      },
    );
  }

  Future addExchangeListings({required List<ExchangeListingModel> listings, required String exchangeSymbol}) {
    final Future added = stockListingsDao.addExchangeListings(
      listings: listings,
      exchangeSymbol: exchangeSymbol,
      ttlSeconds: _shortTimeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addExchangeListings");
    return added;
  }

  Future addExchangeSymbols({required List<String> symbols}) {
    final Future added = stockListingsDao.addExchangeSymbols(
      symbols: symbols,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addExchangeSymbols");
    return added;
  }

  Future addExchange({required ExchangeModel exchange, required String exchangeSymbol}) {
    final Future added = stockListingsDao.addExchange(
      exchange: exchange,
      exchangeSymbol: exchangeSymbol,
      ttlSeconds: _shortTimeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addExchange");
    return added;
  }

  Future<Cache<ExchangeModel>> getExchange({required String exchangeSymbol, required CachingPolicy policy}) {
    return serveCache(
      policy: policy,
      getInput: () async => stockListingsDao.getExchange(exchangeSymbol: exchangeSymbol),
      getExpires: (ExchangeTableRow? rows) => rows!.expires,
      conversionMethod: (ExchangeTableRow? row) {
        return ExchangeModel.fromTableRow(row!);
      },
    );
  }

  Future<Cache<List<ExchangeListingModel>>> getExchangeListings({
    required String exchangeSymbol,
    required CachingPolicy policy,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => stockListingsDao.getExchangeListings(exchangeSymbol: exchangeSymbol),
      getExpires: (List<ExchangeListingTableRow> rows) => rows.first.expires,
      conversionMethod: (List<ExchangeListingTableRow> rows) {
        return rows.map((ExchangeListingTableRow row) => ExchangeListingModel.fromTableRow(row)).toList();
      },
    );
  }
}
