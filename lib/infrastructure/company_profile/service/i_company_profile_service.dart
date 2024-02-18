import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';

abstract class ICompanyProfileService {
  Future<Payload<List<CompanyProfileModel>>> getCompanyProfile({required String ticker});
}
