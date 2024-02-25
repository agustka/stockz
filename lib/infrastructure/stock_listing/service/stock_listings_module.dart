import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/infrastructure/stock_listing/models/converter/stock_listings_model_converter.dart';
import 'package:stockz/infrastructure/stock_listing/service/chopper/stock_listings_chopper_service.dart';
import 'package:stockz/setup.dart';

@module
abstract class StockListingsServiceModule {
  StockListingsChopperService get stockListingsChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        StockListingsChopperService.create(),
      ],
      converter: StockListingsModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<StockListingsChopperService>();
  }
}
