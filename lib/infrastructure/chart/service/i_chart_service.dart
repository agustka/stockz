import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';

abstract class IChartService {
  Future<Payload<ChartModel>> getChart({required String symbol, required String from, required String to});
}
