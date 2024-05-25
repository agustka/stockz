// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_listings_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ExchangeListingsChopperService
    extends ExchangeListingsChopperService {
  _$ExchangeListingsChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ExchangeListingsChopperService;

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
  Future<Response<List<ExchangeListingModel>>> getAllAvailableListings() {
    final Uri $url = Uri.parse('/api/v3/stock/list');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<ExchangeListingModel>, ExchangeListingModel>($request);
  }

  @override
  Future<Response<List<String>>> getExchangeSymbols() {
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

  @override
  Future<Response<List<ExchangeListingModel>>> getExchangeListings(
      {required String exchangeSymbol}) {
    final Uri $url = Uri.parse('/api/v3/symbol/${exchangeSymbol}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<ExchangeListingModel>, ExchangeListingModel>($request);
  }
}
