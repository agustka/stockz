import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';

abstract class ICashFlowStatementService {
  Future<Payload<List<CashFlowStatementModel>>> getCashFlowStatement({required String ticker});
}
