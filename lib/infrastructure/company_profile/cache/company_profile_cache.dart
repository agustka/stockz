import 'dart:core';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/company_profile/cache/company_profile_dao.dart';
import 'package:stockz/infrastructure/company_profile/cache/i_company_profile_cache.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

@Injectable(as: ICompanyProfileCache)
class CompanyProfileCache with BaseCache implements ICompanyProfileCache {
  final CompanyProfileDao companyProfileDao;

  CompanyProfileCache(this.companyProfileDao);

  @override
  Future<Cache<CompanyProfileModel>> getCompanyProfile({
    required String ticker,
    CachingPolicy policy = CachingPolicy.alwaysProvide,
  }) {
    return serveCache(
      policy: policy,
      getInput: () async => companyProfileDao.getCompanyProfile(ticker: ticker),
      getExpires: (CompanyProfileTableRow? row) => row!.expires,
      conversionMethod: (CompanyProfileTableRow? row) {
        return CompanyProfileModel.fromTableRow(row!);
      },
    );
  }

  @override
  Future addCompanyProfile({
    required String ticker,
    required CompanyProfileModel companyProfile,
  }) {
    final Future added = companyProfileDao.addCompanyProfile(
      ticker: ticker,
      companyProfile: companyProfile,
      ttlSeconds: timeToLive.inSeconds,
    );
    handleInsertionErrors(added, origination: "addCompanyProfile");
    return added;
  }
}
