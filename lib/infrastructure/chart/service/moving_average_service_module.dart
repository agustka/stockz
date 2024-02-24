import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/chart/models/converter/chart_model_converter.dart';
import 'package:stockz/infrastructure/chart/service/chopper/chart_chopper_service.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/setup.dart';

@module
abstract class MovingAverageServiceModule {
  ChartChopperService get chartChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        ChartChopperService.create(),
      ],
      converter: ChartModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<ChartChopperService>();
  }
}
