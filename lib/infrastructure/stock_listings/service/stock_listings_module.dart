import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/infrastructure/stock_listings/models/converter/stock_listings_model_converter.dart';
import 'package:stockz/infrastructure/stock_listings/service/chopper/exchange_chopper_service.dart';
import 'package:stockz/infrastructure/stock_listings/service/chopper/index_chopper_service.dart';
import 'package:stockz/infrastructure/stock_listings/service/chopper/stock_listings_chopper_service.dart';
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

  IndexChopperService get indexChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        IndexChopperService.create(),
      ],
      converter: StockListingsModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<IndexChopperService>();
  }

  ExchangeChopperService get exchangeChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        ExchangeChopperService.create(),
      ],
      converter: StockListingsModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<ExchangeChopperService>();
  }
}
