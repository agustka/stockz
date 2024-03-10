import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart';
import 'package:stockz/infrastructure/core/service/offline_helper.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@Injectable(as: ICompanyProfileService)
class OfflineCompanyProfileService with OfflineHelper implements ICompanyProfileService {
  final String _companyProfileJson = AppAssets.test.offlineData.getCompanyProfile;

  @override
  Future<Payload<List<CompanyProfileModel>>> getCompanyProfile({required String ticker}) async {
    final String data = (await getFileData(_companyProfileJson)).replaceAll(symbolReplacement, ticker);
    final List<dynamic> list = json.decode(data) as List<dynamic>;
    final List<CompanyProfileModel> models =
    list.map((dynamic e) => CompanyProfileModel.fromJson(e as Map<String, dynamic>)).toList();
    return Payload.success(models);
  }
}
