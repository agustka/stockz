// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$IndexChopperService extends IndexChopperService {
  _$IndexChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = IndexChopperService;

  @override
  Future<Response<List<IndexModel>>> getIndices() {
    final Uri $url = Uri.parse('/api/v3/symbol/available-indexes/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<IndexModel>, IndexModel>($request);
  }
}
