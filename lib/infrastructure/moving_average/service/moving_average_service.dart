import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/infrastructure/moving_average/models/moving_average_day_model.dart';
import 'package:stockz/infrastructure/moving_average/service/chopper/moving_average_chopper_service.dart';
import 'package:stockz/infrastructure/moving_average/service/i_moving_average_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: IMovingAverageService)
class MovingAverageService with BaseService implements IMovingAverageService {
  final MovingAverageChopperService _chopperService;

  MovingAverageService(this._chopperService);

  @override
  Future<Payload<List<MovingAverageDayModel>>> getMovingAverage({
    required String ticker,
    required int period,
    int level = 1,
  }) async {
    try {
      final Response<List<MovingAverageDayModel>> response = await _chopperService.getMovingAverage(
        ticker: ticker,
        period: period,
      );

      if (await needsRetry(response, level)) {
        return getMovingAverage(ticker: ticker, period: period, level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
