// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_statement_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$IncomeStatementChopperService
    extends IncomeStatementChopperService {
  _$IncomeStatementChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = IncomeStatementChopperService;

  @override
  Future<Response<List<IncomeStatementModel>>> getIncomeStatement({
    required String ticker,
    String period = "annual",
  }) {
    final Uri $url = Uri.parse('/api/v3/income-statement/${ticker}');
    final Map<String, dynamic> $params = <String, dynamic>{'period': period};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client
        .send<List<IncomeStatementModel>, IncomeStatementModel>($request);
  }
}
