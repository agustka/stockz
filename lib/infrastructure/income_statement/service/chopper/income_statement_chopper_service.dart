import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/income_statement/models/income_statement_model.dart';

part 'income_statement_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3/income-statement")
abstract class IncomeStatementChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static IncomeStatementChopperService create([ChopperClient? client]) => _$IncomeStatementChopperService(client);

  @Get(path: "/{ticker}", optionalBody: true)
  Future<Response<List<IncomeStatementModel>>> getIncomeStatement({
    @Path("ticker") required String ticker,
    @Query("period") String period = "annual",
  });
}
