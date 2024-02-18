import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';

abstract class ICompanyProfileService {
  Future<Payload<CompanyProfileModel>> getCompanyProfile({required String ticker});
}
