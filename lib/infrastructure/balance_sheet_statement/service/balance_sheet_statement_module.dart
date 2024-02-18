import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/models/converter/balance_sheet_statement_model_converter.dart';
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/headers_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/setup.dart';

@module
abstract class BalanceSheetStatementServiceModule {
  BalanceSheetStatementChopperService get balanceSheetStatementChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        BalanceSheetStatementChopperService.create(),
      ],
      converter: BalanceSheetStatementModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<HeadersRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<BalanceSheetStatementChopperService>();
  }
}
