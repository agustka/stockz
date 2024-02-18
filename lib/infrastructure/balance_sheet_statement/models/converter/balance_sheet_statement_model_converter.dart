import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';
import 'package:stockz/infrastructure/core/models/base_converter.dart';

class BalanceSheetStatementModelConverter extends JsonConverter with BaseConverter {
  @override
  Map<dynamic, Function> get conversions => {
    BalanceSheetStatementModel: (Map<String, dynamic> data) => BalanceSheetStatementModel.fromJson(data),
  };

  @override
  Future<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final Response rawResponse = await super.convertResponse(response);
    return convertToCustomObject<InnerType, BodyType>(rawResponse, conversions);
  }
}
