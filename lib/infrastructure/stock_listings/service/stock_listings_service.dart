import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';
import 'package:stockz/infrastructure/stock_listings/service/chopper/stock_listings_chopper_service.dart';
import 'package:stockz/infrastructure/stock_listings/service/i_stock_listings_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: IStockListingsService)
class StockListingsService with BaseService implements IStockListingsService {
  final StockListingsChopperService _chopperService;

  StockListingsService(this._chopperService);

  @override
  Future<Payload<List<StockListingModel>>> getStockListings({int level = 1}) async {
    try {
      final Response<List<StockListingModel>> response = await _chopperService.getStockListings();

      if (await needsRetry(response, level)) {
        return getStockListings(level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
