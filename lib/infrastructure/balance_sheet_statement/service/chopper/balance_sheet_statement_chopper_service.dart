import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/balance_sheet_statement_model.dart';

part 'balance_sheet_statement_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3/balance-sheet-statement")
abstract class BalanceSheetStatementChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static BalanceSheetStatementChopperService create([ChopperClient? client]) =>
      _$BalanceSheetStatementChopperService(client);

  /// https://site.financialmodelingprep.com/developer/docs/balance-sheet-statements-financial-statements
  @Get(path: "/{ticker}", optionalBody: true)
  Future<Response<List<BalanceSheetStatementModel>>> getBalanceSheetStatement({
    @Path("ticker") required String ticker,
    @Query("period") String period = "annual",
  });
}
