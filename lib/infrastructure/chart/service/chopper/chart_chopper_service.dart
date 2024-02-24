import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';

part 'chart_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "api/v3/historical-price-full/")
abstract class ChartChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static ChartChopperService create([ChopperClient? client]) => _$ChartChopperService(client);

  @Get(path: "/{symbol}", optionalBody: true)
  Future<Response<ChartModel>> getChart({
    @Path("symbol") required String symbol,
    @Query("from") required String from,
    @Query("to") required String to,
  });
}
