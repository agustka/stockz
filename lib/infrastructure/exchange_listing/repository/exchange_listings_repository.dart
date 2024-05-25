import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/exchange_listing/entities/exchange_listings.dart';
import 'package:stockz/domain/exchange_listing/entities/exchanges.dart';
import 'package:stockz/domain/exchange_listing/value_objects/exchange_symbol_value_object.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/exchange_listing/cache/exchange_listings_cache.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_listing_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_model.dart';
import 'package:stockz/infrastructure/exchange_listing/service/exchange_listings_service.dart';

@LazySingleton()
class ExchangeListingsRepository {
  final ExchangeListingsService _service;
  final ExchangeListingsCache _cache;

  ExchangeListingsRepository(this._service, this._cache);

  Future<Payload<List<ExchangeSymbolValueObject>>> getExchangeSymbols({bool forceGet = false}) async {
    if (forceGet) {
      return _fetchExchangeSymbols();
    }
    return _cache.getExchangeSymbols(policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<List<String>> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<String>> available) {
          return Payload.success(available.data.map((String e) => ExchangeSymbolValueObject(e)).toList());
        },
        orElse: () => _fetchExchangeSymbols(),
      );
    });
  }

  Future<Payload<List<ExchangeSymbolValueObject>>> _fetchExchangeSymbols() async {
    final Payload<List<String>> payload = await _service.getExchangeSymbols();
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<String> value) {
        _cache.addExchangeSymbols(symbols: value);
        return Payload.success(value.map((String e) => ExchangeSymbolValueObject(e)).toList());
      },
    );
  }

  Future<Payload<Exchange>> getExchange({required String exchangeSymbol, bool forceGet = false}) {
    if (forceGet) {
      return _fetchExchange(exchangeSymbol: exchangeSymbol);
    }
    return _cache
        .getExchange(exchangeSymbol: exchangeSymbol, policy: CachingPolicy.onlyServeNotExpired)
        .then((Cache<ExchangeModel> cache) {
      return cache.maybeMap(
        available: (CacheAvailable<ExchangeModel> available) {
          final Payload<Exchange> payload = Payload.success(available.data.toDomain(exchangeSymbol: exchangeSymbol));
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
        return Payload.success(value.toDomain(exchangeSymbol: exchangeSymbol));
      },
    );
  }

  Future<Payload<StockListings>> getExchangeListings({required String exchangeSymbol, bool forceGet = false}) {
    if (forceGet) {
      return _fetchExchangeListings(exchangeSymbol: exchangeSymbol);
    }
    return _cache
        .getExchangeListings(exchangeSymbol: exchangeSymbol, policy: CachingPolicy.onlyServeNotExpired)
        .then((Cache<List<ExchangeListingModel>> cache) {
      return cache.maybeMap(
        available: (CacheAvailable<List<ExchangeListingModel>> available) {
          final List<ExchangeListing> listings = available.data.map((ExchangeListingModel e) => e.toDomain()).toList();
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
    final Payload<List<ExchangeListingModel>> payload =
        await _service.getExchangeListings(exchangeSymbol: exchangeSymbol);
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<ExchangeListingModel> value) {
        _cache.addExchangeListings(listings: value, exchangeSymbol: exchangeSymbol);
        final List<ExchangeListing> listings = value.map((ExchangeListingModel e) => e.toDomain()).toList();
        return Payload.success(StockListings(listings: listings, exchangeSymbol: StringIdValueObject(exchangeSymbol)));
      },
    );
  }
}
