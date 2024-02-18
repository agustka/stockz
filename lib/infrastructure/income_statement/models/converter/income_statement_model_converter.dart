import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/core/models/base_converter.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';

class IncomeStatementModelConverter extends JsonConverter with BaseConverter {
  @override
  Map<dynamic, Function> get conversions => {
    IncomeStatementModel: (Map<String, dynamic> data) => IncomeStatementModel.fromJson(data),
  };

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final Response rawResponse = await super.convertResponse(response);
    return convertToCustomObject<InnerType, BodyType>(rawResponse, conversions);
  }
}
