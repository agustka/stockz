import 'dart:async';

import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';

abstract class IBalanceSheetStatementRepository {
  Future<Payload<BalanceSheetStatements>> getBalanceSheetStatements({required String ticker, bool forceGet = false});
}
