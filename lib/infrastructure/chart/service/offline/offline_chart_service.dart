import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';
import 'package:stockz/infrastructure/chart/service/i_chart_service.dart';
import 'package:stockz/infrastructure/core/service/offline_helper.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@Injectable(as: IChartService)
class OfflineChartService with OfflineHelper implements IChartService {
  final String _chartJson = AppAssets.test.offlineData.getChart;

  @override
  Future<Payload<ChartModel>> getChart({required String symbol, required String from, required String to}) async {
    final String data = (await getFileData(_chartJson)).replaceAll(symbolReplacement, symbol);
    final Map<String, dynamic> jsonMap = json.decode(data) as Map<String, dynamic>;
    final ChartModel models = ChartModel.fromJson(jsonMap);
    return Payload.success(models);
  }
}
