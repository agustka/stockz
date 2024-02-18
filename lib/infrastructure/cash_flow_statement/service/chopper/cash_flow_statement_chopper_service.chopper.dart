// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_statement_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CashFlowStatementChopperService
    extends CashFlowStatementChopperService {
  _$CashFlowStatementChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CashFlowStatementChopperService;

  @override
  Future<Response<List<CashFlowStatementModel>>> getCashFlowStatement(
      {required String ticker}) {
    final Uri $url = Uri.parse('/api/v3/cash-flow-statement/${ticker}');
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<CashFlowStatementModel>, CashFlowStatementModel>($request);
  }
}
