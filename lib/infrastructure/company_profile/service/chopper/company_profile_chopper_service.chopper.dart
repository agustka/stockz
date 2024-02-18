// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_profile_chopper_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$CompanyProfileChopperService
    extends CompanyProfileChopperService {
  _$CompanyProfileChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = CompanyProfileChopperService;

  @override
  Future<Response<List<CompanyProfileModel>>> getCompanyProfile(
      {required String ticker}) {
    final Uri $url = Uri.parse('/api/v3/profile/${ticker}');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client
        .send<List<CompanyProfileModel>, CompanyProfileModel>($request);
  }
}
