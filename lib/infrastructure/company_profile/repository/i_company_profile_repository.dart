import 'dart:async';

import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';

abstract class ICompanyProfileRepository {
  Future<Payload<CompanyProfile>> getCompanyProfile({required String ticker, bool forceGet = false});
}
