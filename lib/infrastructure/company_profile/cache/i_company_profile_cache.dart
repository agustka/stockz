import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';

abstract class ICompanyProfileCache {
  Future<Cache<CompanyProfileModel>> getCompanyProfile({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  });

  Future addCompanyProfile({required String ticker, required CompanyProfileModel companyProfile});
}
