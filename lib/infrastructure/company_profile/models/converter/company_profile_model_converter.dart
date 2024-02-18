import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';
import 'package:stockz/infrastructure/core/models/base_converter.dart';

class CompanyProfileModelConverter extends JsonConverter with BaseConverter {
  @override
  Map<dynamic, Function> get conversions => {
    CompanyProfileModel: (Map<String, dynamic> data) => CompanyProfileModel.fromJson(data),
  };

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final Response rawResponse = await super.convertResponse(response);
    return convertToCustomObject<InnerType, BodyType>(rawResponse, conversions);
  }
}
