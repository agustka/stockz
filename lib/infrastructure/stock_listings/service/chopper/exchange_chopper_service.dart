import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/stock_listings/models/index_model.dart';

part 'exchange_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3/exchanges-list")
abstract class ExchangeChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static ExchangeChopperService create([ChopperClient? client]) => _$ExchangeChopperService(client);

  @Get(path: "/", optionalBody: true)
  Future<Response<List<String>>> getExchanges();
}
