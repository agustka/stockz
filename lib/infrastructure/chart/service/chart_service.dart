import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';
import 'package:stockz/infrastructure/chart/service/chopper/chart_chopper_service.dart';
import 'package:stockz/infrastructure/chart/service/i_chart_service.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: IChartService)
class ChartService with BaseService implements IChartService {
  final ChartChopperService _chopperService;

  ChartService(this._chopperService);

  @override
  Future<Payload<ChartModel>> getChart({
    required String symbol,
    required String from,
    required String to,
    int level = 1,
  }) async {
    try {
      final Response<ChartModel> response = await _chopperService.getChart(
        symbol: symbol,
        from: from,
        to: to,
      );

      if (await needsRetry(response, level)) {
        return getChart(symbol: symbol, from: from, to: to, level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
