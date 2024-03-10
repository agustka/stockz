import 'package:chopper/chopper.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';

part 'company_profile_chopper_service.chopper.dart';

@ChopperApi(baseUrl: "/api/v3/profile")
abstract class CompanyProfileChopperService extends ChopperService {
  @override
  Type get definitionType => runtimeType;

  static CompanyProfileChopperService create([ChopperClient? client]) => _$CompanyProfileChopperService(client);

  /// https://site.financialmodelingprep.com/developer/docs/companies-key-stats-free-api/?direct=true
  @Get(path: "/{ticker}")
  Future<Response<List<CompanyProfileModel>>> getCompanyProfile({@Path("ticker") required String ticker});
}
