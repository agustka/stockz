import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart';
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart';
import 'package:stockz/infrastructure/core/service/base_service.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@Injectable(as: ICompanyProfileService)
class CompanyProfileService with BaseService implements ICompanyProfileService {
  final CompanyProfileChopperService _chopperService;

  CompanyProfileService(this._chopperService);

  @override
  Future<Payload<List<CompanyProfileModel>>> getCompanyProfile({required String ticker, int level = 0}) async {
    try {
      final Response<List<CompanyProfileModel>> response = await _chopperService.getCompanyProfile(ticker: ticker);

      if (await needsRetry(response, level)) {
        return getCompanyProfile(ticker: ticker, level: level + 1);
      }
      return handleResponse(response);
    } on Exception catch (e, stacktrace) {
      return handleException(e, stacktrace);
    }
  }
}
