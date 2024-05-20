import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/infrastructure/stock_listings/models/index_model.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';
import 'package:stockz/infrastructure/stock_listings/service/chopper/exchange_chopper_service.dart';
import 'package:stockz/infrastructure/stock_listings/service/chopper/index_chopper_service.dart';
import 'package:stockz/infrastructure/stock_listings/service/chopper/stock_listings_chopper_service.dart';
import 'package:stockz/infrastructure/stock_listings/service/i_stock_listings_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: IStockListingsService)
class StockListingsService with BaseService implements IStockListingsService {
  final StockListingsChopperService _listingsService;
  final IndexChopperService _indexService;
  final ExchangeChopperService _exchangeService;

  StockListingsService(this._listingsService, this._indexService, this._exchangeService);

  @override
  Future<Payload<List<StockListingModel>>> getStockListings({int level = 1}) async {
    try {
      final Response<List<StockListingModel>> response = await _listingsService.getStockListings();

      if (await needsRetry(response, level)) {
        return getStockListings(level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }

  @override
  Future<Payload<List<IndexModel>>> getIndices({int level = 1}) async {
    try {
      final Response<List<IndexModel>> response = await _indexService.getIndices();

      if (await needsRetry(response, level)) {
        return getIndices(level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }

  @override
  Future<Payload<List<String>>> getExchanges({int level = 1}) async {
    try {
      final Response<List<String>> response = await _exchangeService.getExchanges();

      if (await needsRetry(response, level)) {
        return getExchanges(level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
