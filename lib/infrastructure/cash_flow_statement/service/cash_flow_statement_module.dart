import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/cash_flow_statement/models/converter/cash_flow_statement_model_converter.dart';
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/setup.dart';

@module
abstract class CashFlowStatementServiceModule {
  CashFlowStatementChopperService get cashFlowStatementChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        CashFlowStatementChopperService.create(),
      ],
      converter: CashFlowStatementModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<CashFlowStatementChopperService>();
  }
}
