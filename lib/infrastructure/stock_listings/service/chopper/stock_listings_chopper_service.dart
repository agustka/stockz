import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/stock_listings/models/exchange_model.dart';
import 'package:stockz/infrastructure/stock_listings/models/index_model.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';

part 'stock_listings_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3")
abstract class StockListingsChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static StockListingsChopperService create([ChopperClient? client]) => _$StockListingsChopperService(client);

  @Get(path: "/symbol/available-indexes", optionalBody: true)
  Future<Response<List<IndexModel>>> getIndices();

  @Get(path: "/stock/list", optionalBody: true)
  Future<Response<List<StockListingModel>>> getAllAvailableListings();

  @Get(path: "/exchanges-list", optionalBody: true)
  Future<Response<List<String>>> getExchanges();

  @Get(path: "/is-the-market-open?exchange={exchangeSymbol}", optionalBody: true)
  Future<Response<ExchangeModel>> getExchange({
    @Path("exchangeSymbol") required String exchangeSymbol,
  });

  @Get(path: "/symbol/{exchangeSymbol}", optionalBody: true)
  Future<Response<List<StockListingModel>>> getExchangeListings({
    @Path("exchangeSymbol") required String exchangeSymbol,
  });
}
