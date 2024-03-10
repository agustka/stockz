import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/core/models/base_converter.dart';
import 'package:stockz/infrastructure/stock_listings/models/stock_listing_model.dart';

class StockListingsModelConverter extends JsonConverter with BaseConverter {
  @override
  Map<dynamic, Function> get conversions => {
    StockListingModel: (Map<String, dynamic> data) => StockListingModel.fromJson(data),
  };

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final Response rawResponse = await super.convertResponse(response);
    return convertToCustomObject<InnerType, BodyType>(rawResponse, conversions);
  }
}
