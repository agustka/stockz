import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/stock_listing/entities/exchanges.dart';
import 'package:stockz/domain/stock_listing/entities/stock_listings.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/stock_listings/cache/i_stock_listings_cache.dart';
import 'package:stockz/infrastructure/stock_listings/models/exchange_model.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';
import 'package:stockz/infrastructure/stock_listings/repository/i_stock_listings_repository.dart';
import 'package:stockz/infrastructure/stock_listings/service/i_stock_listings_service.dart';

@LazySingleton(as: IStockListingsRepository)
class StockListingsRepository implements IStockListingsRepository {
  final IStockListingsService _service;
  final IStockListingsCache _cache;

  StockListingsRepository(this._service, this._cache);

  @override
  Future<Payload<StockListings>> getAllAvailableListings({bool forceGet = false}) async {
    if (forceGet) {
      return _fetchAllAvailableListings();
    }
    return _cache.getStockListings(policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<List<StockListingModel>> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<StockListingModel>> available) {
          return Payload.success(
            StockListings(
              listings: available.data.map((StockListingModel e) => e.toDomain()).toList(),
              exchangeSymbol: const StringIdValueObject.invalid(),
            ),
          );
        },
        orElse: () => _fetchAllAvailableListings(),
      );
    });
  }

  Future<Payload<StockListings>> _fetchAllAvailableListings() async {
    final Payload<List<StockListingModel>> payload = await _service.getAllAvailableListings();
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<StockListingModel> value) {
        _cache.addStockListings(listings: value);
        return Payload.success(
          StockListings(
            listings: value.map((StockListingModel e) => e.toDomain()).toList(),
            exchangeSymbol: const StringIdValueObject.invalid(),
          ),
        );
      },
    );
  }

  @override
  Future<Payload<List<StringIdValueObject>>> getExchanges({bool forceGet = false}) async {
    if (forceGet) {
      return _fetchExchanges();
    }
    return _cache.getExchanges(policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<List<String>> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<String>> available) {
          return Payload.success(available.data.map((String e) => StringIdValueObject(e)).toList());
        },
        orElse: () => _fetchExchanges(),
      );
    });
  }

  Future<Payload<List<StringIdValueObject>>> _fetchExchanges() async {
    final Payload<List<String>> payload = await _service.getExchanges();
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<String> value) {
        _cache.addExchanges(exchanges: value);
        return Payload.success(value.map((String e) => StringIdValueObject(e)).toList());
      },
    );
  }

  @override
  Future<Payload<Exchange>> getExchange({required String exchangeSymbol, bool forceGet = false}) {
    if (forceGet) {
      return _fetchExchange(exchangeSymbol: exchangeSymbol);
    }
    return _cache
        .getExchange(exchangeSymbol: exchangeSymbol, policy: CachingPolicy.onlyServeNotExpired)
        .then((Cache<ExchangeModel> cache) {
      return cache.maybeMap(
        available: (CacheAvailable<ExchangeModel> available) {
          final Payload<Exchange> payload = Payload.success(available.data.toDomain());
          return payload;
        },
        orElse: () {
          return _fetchExchange(exchangeSymbol: exchangeSymbol);
        },
      );
    });
  }

  Future<Payload<Exchange>> _fetchExchange({required String exchangeSymbol}) async {
    final Payload<ExchangeModel> payload = await _service.getExchange(exchangeSymbol: exchangeSymbol);
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (ExchangeModel value) {
        _cache.addExchange(exchange: value, exchangeSymbol: exchangeSymbol);
        return Payload.success(value.toDomain());
      },
    );
  }

  @override
  Future<Payload<StockListings>> getExchangeListings({required String exchangeSymbol, bool forceGet = false}) {
    if (forceGet) {
      return _fetchExchangeListings(exchangeSymbol: exchangeSymbol);
    }
    return _cache
        .getExchangeListings(exchangeSymbol: exchangeSymbol, policy: CachingPolicy.onlyServeNotExpired)
        .then((Cache<List<StockListingModel>> cache) {
      return cache.maybeMap(
        available: (CacheAvailable<List<StockListingModel>> available) {
          final List<StockListing> listings = available.data.map((StockListingModel e) => e.toDomain()).toList();
          final Payload<StockListings> payload =
              Payload.success(StockListings(listings: listings, exchangeSymbol: StringIdValueObject(exchangeSymbol)));
          return payload;
        },
        orElse: () {
          return _fetchExchangeListings(exchangeSymbol: exchangeSymbol);
        },
      );
    });
  }

  Future<Payload<StockListings>> _fetchExchangeListings({required String exchangeSymbol}) async {
    final Payload<List<StockListingModel>> payload = await _service.getExchangeListings(exchangeSymbol: exchangeSymbol);
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<StockListingModel> value) {
        _cache.addExchangeListings(listings: value, exchangeSymbol: exchangeSymbol);
        final List<StockListing> listings = value.map((StockListingModel e) => e.toDomain()).toList();
        return Payload.success(StockListings(listings: listings, exchangeSymbol: StringIdValueObject(exchangeSymbol)));
      },
    );
  }
}
