import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';
import 'package:stockz/infrastructure/core/models/base_converter.dart';

class ChartModelConverter extends JsonConverter with BaseConverter {
  @override
  Map<dynamic, Function> get conversions => {
    ChartModel: (Map<String, dynamic> data) => ChartModel.fromJson(data),
    ChartEodItemModel: (Map<String, dynamic> data) => ChartEodItemModel.fromJson(data),
  };

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final Response rawResponse = await super.convertResponse(response);
    return convertToCustomObject<InnerType, BodyType>(rawResponse, conversions);
  }
}
