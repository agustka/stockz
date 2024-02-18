// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_sheet_statement_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$BalanceSheetStatementChopperService
    extends BalanceSheetStatementChopperService {
  _$BalanceSheetStatementChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = BalanceSheetStatementChopperService;

  @override
  Future<Response<List<BalanceSheetStatementModel>>> getBalanceSheetStatement({
    required String ticker,
    String period = "annual",
  }) {
    final Uri $url = Uri.parse('/api/v3/balance-sheet-statement/${ticker}');
    final Map<String, dynamic> $params = <String, dynamic>{'period': period};
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<BalanceSheetStatementModel>,
        BalanceSheetStatementModel>($request);
  }
}
