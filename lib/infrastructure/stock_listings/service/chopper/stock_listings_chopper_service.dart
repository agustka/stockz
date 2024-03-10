import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';

part 'stock_listings_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3/stock/list")
abstract class StockListingsChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static StockListingsChopperService create([ChopperClient? client]) => _$StockListingsChopperService(client);

  @Get(path: "/", optionalBody: true)
  Future<Response<List<StockListingModel>>> getStockListings();
}
