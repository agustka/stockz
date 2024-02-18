import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/cash_flow_statement_model.dart';
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart';
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: ICashFlowStatementService)
class CashFlowStatementService with BaseService implements ICashFlowStatementService {
  final CashFlowStatementChopperService _chopperService;

  CashFlowStatementService(this._chopperService);

  @override
  Future<Payload<List<CashFlowStatementModel>>> getCashFlowStatement({
    required String ticker,
    int level = 0,
  }) async {
    try {
      final Response<List<CashFlowStatementModel>> response =
          await _chopperService.getCashFlowStatement(ticker: ticker);

      if (await needsRetry(response, level)) {
        return getCashFlowStatement(ticker: ticker, level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
