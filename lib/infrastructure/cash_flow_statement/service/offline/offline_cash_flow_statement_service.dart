import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart';
import 'package:stockz/infrastructure/core/service/offline_helper.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@Injectable(as: ICashFlowStatementService)
class OfflineCashFlowStatementService with OfflineHelper implements ICashFlowStatementService {
  final String _cashFlowStatementJson = AppAssets.test.offlineData.getCashFlowStatement;

  @override
  Future<Payload<List<CashFlowStatementModel>>> getCashFlowStatement({required String ticker}) async {
    final String data = (await getFileData(_cashFlowStatementJson)).replaceAll(symbolReplacement, ticker);
    final List<dynamic> list = json.decode(data) as List<dynamic>;
    final List<CashFlowStatementModel> models =
    list.map((dynamic e) => CashFlowStatementModel.fromJson(e as Map<String, dynamic>)).toList();
    return Payload.success(models);
  }
}
