import 'dart:async';

import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/stock_listing/entities/stock_listings.dart';

abstract class IStockListingsRepository {
  Future<Payload<StockListings>> getStockListings({bool forceGet = false});
}
