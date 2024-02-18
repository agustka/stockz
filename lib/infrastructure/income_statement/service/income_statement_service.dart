import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart';
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: IIncomeStatementService)
class IncomeStatementService with BaseService implements IIncomeStatementService {
  final IncomeStatementChopperService _chopperService;

  IncomeStatementService(this._chopperService);

  @override
  Future<Payload<List<IncomeStatementModel>>> getIncomeStatement({
    required String ticker,
    int level = 1,
  }) async {
    try {
      final Response<List<IncomeStatementModel>> response = await _chopperService.getIncomeStatement(ticker: ticker);

      if (await needsRetry(response, level)) {
        return getIncomeStatement(ticker: ticker, level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
