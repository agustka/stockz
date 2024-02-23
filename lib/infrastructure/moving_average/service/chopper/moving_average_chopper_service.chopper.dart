// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moving_average_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$MovingAverageChopperService extends MovingAverageChopperService {
  _$MovingAverageChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = MovingAverageChopperService;

  @override
  Future<Response<List<MovingAverageDayModel>>> getMovingAverage({
    required String ticker,
    required int period,
  }) {
    final Uri $url = Uri.parse('api/v3/technical_indicator/daily/${ticker}');
    final Map<String, dynamic> $params = <String, dynamic>{'period': period};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<List<MovingAverageDayModel>, MovingAverageDayModel>($request);
  }
}
