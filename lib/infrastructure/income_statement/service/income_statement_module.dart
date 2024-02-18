import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/infrastructure/income_statement/models/converter/income_statement_model_converter.dart';
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart';
import 'package:stockz/setup.dart';

@module
abstract class IncomeStatementServiceModule {
  IncomeStatementChopperService get incomeStatementChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        IncomeStatementChopperService.create(),
      ],
      converter: IncomeStatementModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<IncomeStatementChopperService>();
  }
}
