import 'dart:async';

import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/stock_listing/entities/exchanges.dart';
import 'package:stockz/domain/stock_listing/entities/stock_listings.dart';

abstract class IStockListingsRepository {
  Future<Payload<StockListings>> getAllAvailableListings({bool forceGet = false});

  Future<Payload<List<StringIdValueObject>>> getExchanges({bool forceGet = false});

  Future<Payload<Exchange>> getExchange({required String exchangeSymbol, bool forceGet = false});

  Future<Payload<StockListings>> getExchangeListings({required String exchangeSymbol, bool forceGet = false});
}
