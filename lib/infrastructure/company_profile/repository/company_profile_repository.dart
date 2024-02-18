import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/company_profile/cache/i_company_profile_cache.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';
import 'package:stockz/infrastructure/company_profile/repository/i_company_profile_repository.dart';
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart';
import 'package:stockz/infrastructure/core/cache/base_cache.dart';
import 'package:stockz/infrastructure/core/cache/cache.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

@LazySingleton(as: ICompanyProfileRepository)
class CompanyProfileRepository implements ICompanyProfileRepository {
  final ICompanyProfileService _service;
  final ICompanyProfileCache _cache;

  CompanyProfileRepository(this._service, this._cache);

  @override
  Future<Payload<CompanyProfile>> getCompanyProfile({
    required String ticker,
    bool forceGet = false,
  }) async {
    if (forceGet) {
      return _fetchCompanyProfile(ticker: ticker);
    }
    return _cache
        .getCompanyProfile(ticker: ticker, policy: CachingPolicy.onlyServeNotExpired)
        .then((Cache<CompanyProfileModel> cache) {
      return cache.maybeMap(
        available: (CacheAvailable<CompanyProfileModel> available) {
          return Payload.success(available.data.toDomain());
        },
        orElse: () {
          return _fetchCompanyProfile(ticker: ticker);
        },
      );
    });
  }

  Future<Payload<CompanyProfile>> _fetchCompanyProfile({required String ticker}) async {
    final Payload<List<CompanyProfileModel>> payload = await _service.getCompanyProfile(ticker: ticker);
    return payload.fold(
      (Failure failure) {
        return Payload.failure(failure);
      },
      (List<CompanyProfileModel> value) {
        if (value.length != 1) {
          err("Expecting only one company profile, but got ${value.length}");
        }
        _cache.addCompanyProfile(ticker: ticker, companyProfile: value.first);
        return Payload.success(value.first.toDomain());
      },
    );
  }
}
