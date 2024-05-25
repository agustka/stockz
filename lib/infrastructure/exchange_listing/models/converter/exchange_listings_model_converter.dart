import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/core/models/base_converter.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_listing_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/exchange_model.dart';
import 'package:stockz/infrastructure/exchange_listing/models/index_model.dart';

class ExchangeListingsModelConverter extends JsonConverter with BaseConverter {
  @override
  Map<dynamic, Function> get conversions => {
    ExchangeListingModel: (Map<String, dynamic> data) => ExchangeListingModel.fromJson(data),
    IndexModel: (Map<String, dynamic> data) => IndexModel.fromJson(data),
    ExchangeModel: (Map<String, dynamic> data) => ExchangeModel.fromJson(data),
    String: (String data) => data,
  };

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final Response rawResponse = await super.convertResponse(response);
    return convertToCustomObject<InnerType, BodyType>(rawResponse, conversions);
  }
}
