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
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';
import 'package:stockz/infrastructure/stock_listings/repository/i_stock_listings_repository.dart';
import 'package:stockz/infrastructure/stock_listings/service/i_stock_listings_service.dart';

@LazySingleton(as: IStockListingsRepository)
class StockListingsRepository implements IStockListingsRepository {
  final IStockListingsService _service;
  final IStockListingsCache _cache;

  StockListingsRepository(this._service, this._cache);

  @override
  Future<Payload<StockListings>> getStockListings({bool forceGet = false}) async {
    if (forceGet) {
      return _fetchStockListings();
    }
    return _cache.getStockListings(policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<List<StockListingModel>> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<StockListingModel>> available) {
          return Payload.success(
            StockListings(
              listings: available.data.map((StockListingModel e) => e.toDomain()).toList(),
            ),
          );
        },
        orElse: () => _fetchStockListings(),
      );
    });
  }

  Future<Payload<StockListings>> _fetchStockListings() async {
    final Payload<List<StockListingModel>> payload = await _service.getStockListings();
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<StockListingModel> value) {
        _cache.addStockListings(listings: value);
        return Payload.success(
          StockListings(
            listings: value.map((StockListingModel e) => e.toDomain()).toList(),
          ),
        );
      },
    );
  }

  @override
  Future<Payload<Exchanges>> getExchanges({bool forceGet = false}) async {
    if (forceGet) {
      return _fetchExchanges();
    }
    return _cache.getExchanges(policy: CachingPolicy.onlyServeNotExpired).then((
      Cache<List<String>> cache,
    ) {
      return cache.maybeMap(
        available: (CacheAvailable<List<String>> available) {
          return Payload.success(Exchanges.fromList(available.data));
        },
        orElse: () => _fetchExchanges(),
      );
    });
  }

  Future<Payload<Exchanges>> _fetchExchanges() async {
    final Payload<List<String>> payload = await _service.getExchanges();
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<String> value) {
        _cache.addExchanges(exchanges: value);
        return Payload.success(Exchanges.fromList(value));
      },
    );
  }
}
