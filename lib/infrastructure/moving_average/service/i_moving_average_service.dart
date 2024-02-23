import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/moving_average/models/moving_average_day_model.dart';

abstract class IMovingAverageService {
  Future<Payload<List<MovingAverageDayModel>>> getMovingAverage({required String ticker, required int period});
}
