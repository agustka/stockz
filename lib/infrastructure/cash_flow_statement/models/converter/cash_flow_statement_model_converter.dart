import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/core/models/base_converter.dart';

class CashFlowStatementModelConverter extends JsonConverter with BaseConverter {
  @override
  Map<dynamic, Function> get conversions => {
    CashFlowStatementModel: (Map<String, dynamic> data) => CashFlowStatementModel.fromJson(data),
  };

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final Response rawResponse = await super.convertResponse(response);
    return convertToCustomObject<InnerType, BodyType>(rawResponse, conversions);
  }
}
