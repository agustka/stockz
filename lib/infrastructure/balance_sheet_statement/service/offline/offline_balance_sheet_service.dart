import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart';
import 'package:stockz/infrastructure/core/service/offline_helper.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@Injectable(as: IBalanceSheetStatementService)
class OfflineBalanceSheetStatementService with OfflineHelper implements IBalanceSheetStatementService {
  final String _balanceSheetStatementJson = AppAssets.test.offlineData.getBalanceSheetStatement;

  @override
  Future<Payload<List<BalanceSheetStatementModel>>> getBalanceSheetStatement({required String ticker}) async {
    final String data = (await getFileData(_balanceSheetStatementJson)).replaceAll(symbolReplacement, ticker);
    final List<dynamic> list = json.decode(data) as List<dynamic>;
    final List<BalanceSheetStatementModel> models =
        list.map((dynamic e) => BalanceSheetStatementModel.fromJson(e as Map<String, dynamic>)).toList();
    return Payload.success(models);
  }
}
