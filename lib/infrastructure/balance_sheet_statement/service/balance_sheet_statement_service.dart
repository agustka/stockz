import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: IBalanceSheetStatementService)
class BalanceSheetStatementService with BaseService implements IBalanceSheetStatementService {
  final BalanceSheetStatementChopperService _chopperService;

  BalanceSheetStatementService(this._chopperService);

  @override
  Future<Payload<List<BalanceSheetStatementModel>>> getBalanceSheetStatement({
    required String ticker,
    int level = 1,
  }) async {
    try {
      final Response<List<BalanceSheetStatementModel>> response =
          await _chopperService.getBalanceSheetStatement(ticker: ticker);

      if (await needsRetry(response, level)) {
        return getBalanceSheetStatement(ticker: ticker, level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
