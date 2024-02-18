import 'dart:async';

import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';

abstract class ICashFlowStatementRepository {
  Future<Payload<CashFlowStatements>> getCashFlowStatements({required String ticker, bool forceGet = false});
}
