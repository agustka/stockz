import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/core/service/offline_helper.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@Injectable(as: IIncomeStatementService)
class OfflineIncomeStatementService with OfflineHelper implements IIncomeStatementService {
  final String _incomeStatementJson = AppAssets.test.offlineData.getIncomeStatement;

  @override
  Future<Payload<List<IncomeStatementModel>>> getIncomeStatement({required String ticker}) async {
    final String data = (await getFileData(_incomeStatementJson)).replaceAll(symbolReplacement, ticker);
    final List<dynamic> list = json.decode(data) as List<dynamic>;
    final List<IncomeStatementModel> models =
    list.map((dynamic e) => IncomeStatementModel.fromJson(e as Map<String, dynamic>)).toList();
    return Payload.success(models);
  }
}
