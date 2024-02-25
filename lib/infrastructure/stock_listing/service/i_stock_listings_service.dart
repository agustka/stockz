import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/stock_listing/models/stock_listing_model.dart';

abstract class IStockListingsService {
  Future<Payload<List<StockListingModel>>> getStockListings();
}
