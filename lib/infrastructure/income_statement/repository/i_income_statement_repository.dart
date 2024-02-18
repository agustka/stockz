import 'dart:async';

import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/income_statement/entities/income_statements.dart';

abstract class IIncomeStatementRepository {
  Future<Payload<IncomeStatements>> getIncomeStatements({required String ticker, bool forceGet = false});
}
