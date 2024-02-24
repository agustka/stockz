// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ChartChopperService extends ChartChopperService {
  _$ChartChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ChartChopperService;

  @override
  Future<Response<ChartModel>> getChart({
    required String symbol,
    required String from,
    required String to,
  }) {
    final Uri $url = Uri.parse('api/v3/historical-price-full/${symbol}');
    final Map<String, dynamic> $params = <String, dynamic>{
      'from': from,
      'to': to,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<ChartModel, ChartModel>($request);
  }
}
