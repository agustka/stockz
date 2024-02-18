import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';

abstract class IIncomeStatementService {
  Future<Payload<List<IncomeStatementModel>>> getIncomeStatement({required String ticker});
}
