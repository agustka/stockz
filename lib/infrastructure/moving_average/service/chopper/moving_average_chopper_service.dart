import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/moving_average/models/moving_average_day_model.dart';

part 'moving_average_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "api/v3/technical_indicator/daily/")
abstract class MovingAverageChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static MovingAverageChopperService create([ChopperClient? client]) => _$MovingAverageChopperService(client);

  @Get(path: "/{ticker}", optionalBody: true)
  Future<Response<List<MovingAverageDayModel>>> getMovingAverage({
    @Path("ticker") required String ticker,
    @Query("period") required int period,
  });
}
