import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';

part 'cash_flow_statement_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3/cash-flow-statement")
abstract class CashFlowStatementChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static CashFlowStatementChopperService create([ChopperClient? client]) => _$CashFlowStatementChopperService(client);

  @Post(path: "/{ticker}", optionalBody: true)
  Future<Response<List<CashFlowStatementModel>>> getCashFlowStatement({
    @Path("ticker") required String ticker,
  });
}
