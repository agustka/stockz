// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ExchangeChopperService extends ExchangeChopperService {
  _$ExchangeChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ExchangeChopperService;

  @override
  Future<Response<List<String>>> getExchanges() {
    final Uri $url = Uri.parse('/api/v3/exchanges-list/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<String>, String>($request);
  }
}
