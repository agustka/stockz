// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_listings_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$StockListingsChopperService extends StockListingsChopperService {
  _$StockListingsChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = StockListingsChopperService;

  @override
  Future<Response<List<StockListingModel>>> getStockListings() {
    final Uri $url = Uri.parse('/api/v3/stock/list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<StockListingModel>, StockListingModel>($request);
  }

  @override
  Future<Response<List<IndexModel>>> getIndices() {
    final Uri $url = Uri.parse('/api/v3/symbol/available-indexes');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<IndexModel>, IndexModel>($request);
  }

  @override
  Future<Response<List<String>>> getExchanges() {
    final Uri $url = Uri.parse('/api/v3/exchanges-list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<String>, String>($request);
  }

  @override
  Future<Response<ExchangeModel>> getExchange(
      {required String exchangeSymbol}) {
    final Uri $url =
        Uri.parse('/api/v3/is-the-market-open?exchange=${exchangeSymbol}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<ExchangeModel, ExchangeModel>($request);
  }
}
