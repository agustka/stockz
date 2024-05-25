import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/infrastructure/exchange_listing/models/converter/exchange_listings_model_converter.dart';
import 'package:stockz/infrastructure/exchange_listing/service/chopper/exchange_listings_chopper_service.dart';
import 'package:stockz/setup.dart';

@module
abstract class ExchangeListingsServiceModule {
  ExchangeListingsChopperService get stockListingsChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        ExchangeListingsChopperService.create(),
      ],
      converter: ExchangeListingsModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<ExchangeListingsChopperService>();
  }
}
