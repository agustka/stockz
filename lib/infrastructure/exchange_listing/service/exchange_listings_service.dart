import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_listing_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/index_model.dart';
import 'package:stockz/infrastructure/exchange_listing/service/chopper/exchange_listings_chopper_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable()
class ExchangeListingsService with BaseService {
  final ExchangeListingsChopperService _service;

  ExchangeListingsService(this._service);

  Future<Payload<List<ExchangeListingModel>>> getAllAvailableListings({int level = 1}) async {
    try {
      final Response<List<ExchangeListingModel>> response = await _service.getAllAvailableListings();

      if (await needsRetry(response, level)) {
        return getAllAvailableListings(level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }

  Future<Payload<List<IndexModel>>> getIndices({int level = 1}) async {
    try {
      final Response<List<IndexModel>> response = await _service.getIndices();

      if (await needsRetry(response, level)) {
        return getIndices(level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }

  Future<Payload<List<String>>> getExchangeSymbols({int level = 1}) async {
    try {
      final Response<List<String>> response = await _service.getExchangeSymbols();

      if (await needsRetry(response, level)) {
        return getExchangeSymbols(level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }

  Future<Payload<ExchangeModel>> getExchange({required String exchangeSymbol, int level = 1}) async {
    try {
      final Response<ExchangeModel> response = await _service.getExchange(exchangeSymbol: exchangeSymbol);

      if (await needsRetry(response, level)) {
        return getExchange(exchangeSymbol: exchangeSymbol, level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }

  Future<Payload<List<ExchangeListingModel>>> getExchangeListings({required String exchangeSymbol, int level = 1}) async {
    try {
      final Response<List<ExchangeListingModel>> response = await _service.getExchangeListings(exchangeSymbol: exchangeSymbol);

      if (await needsRetry(response, level)) {
    return getExchangeListings(exchangeSymbol: exchangeSymbol, level: level + 1);
    }
    return handleResponse(response);
    } on Exception catch (e, stacktrace) {
    return handleException(e, stacktrace);
    }
  }
}
