import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';

abstract class IBalanceSheetStatementService {
  Future<Payload<List<BalanceSheetStatementModel>>> getBalanceSheetStatement({required String ticker});
}
