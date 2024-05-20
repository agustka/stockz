import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/stock_listings/models/index_model.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';

abstract class IStockListingsService {
  Future<Payload<List<StockListingModel>>> getStockListings();

  Future<Payload<List<IndexModel>>> getIndices();

  Future<Payload<List<String>>> getExchanges();
}
