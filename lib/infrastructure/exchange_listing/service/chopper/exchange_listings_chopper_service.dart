import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_listing_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/index_model.dart';

part 'exchange_listings_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3")
abstract class ExchangeListingsChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static ExchangeListingsChopperService create([ChopperClient? client]) => _$ExchangeListingsChopperService(client);

  @Get(path: "/symbol/available-indexes", optionalBody: true)
  Future<Response<List<IndexModel>>> getIndices();

  @Get(path: "/stock/list", optionalBody: true)
  Future<Response<List<ExchangeListingModel>>> getAllAvailableListings();

  @Get(path: "/exchanges-list", optionalBody: true)
  Future<Response<List<String>>> getExchangeSymbols();

  @Get(path: "/is-the-market-open?exchange={exchangeSymbol}", optionalBody: true)
  Future<Response<ExchangeModel>> getExchange({
    @Path("exchangeSymbol") required String exchangeSymbol,
  });

  @Get(path: "/symbol/{exchangeSymbol}", optionalBody: true)
  Future<Response<List<ExchangeListingModel>>> getExchangeListings({
    @Path("exchangeSymbol") required String exchangeSymbol,
  });
}
