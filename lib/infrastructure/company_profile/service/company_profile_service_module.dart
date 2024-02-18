import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/company_profile/models/converter/company_profile_model_converter.dart';
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart';
import 'package:stockz/infrastructure/core/service/base_service_module.dart';
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart';
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart';
import 'package:stockz/setup.dart';

@module
abstract class CompanyProfileServiceModule {
  CompanyProfileChopperService get companyProfileChopperService {
    final ChopperClient chopper = ChopperClient(
      client: BaseServiceModule().ioClient,
      baseUrl: Uri.parse(FlavorConfig.instance.variables.fmpHost),
      services: [
        CompanyProfileChopperService.create(),
      ],
      converter: CompanyProfileModelConverter(),
      interceptors: [
        getIt<AuthRequestInterceptor>(),
        getIt<LoggingInterceptor>(),
      ],
    );

    return chopper.getService<CompanyProfileChopperService>();
  }
}
