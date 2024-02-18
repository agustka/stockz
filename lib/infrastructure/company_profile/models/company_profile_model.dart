import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'company_profile_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class CompanyProfileModel {
  final String? symbol;
  final num? price;
  final num? beta;
  final num volAvg;
  final num? mktCap;
  final num? lastDiv;
  final String? range;
  final num? changes;
  final String? companyName;
  final String? currency;
  final String? cik;
  final String? isin;
  final String? cusip;
  final String? exchange;
  final String? exchangeShortName;
  final String? industry;
  final String? website;
  final String? description;
  final String? ceo;
  final String? sector;
  final String? country;
  final String? fullTimeEmployees;
  final String? phone;
  final String? address;
  final String? city;
  final String? state;
  final String? zip;
  final num? dcfDiff;
  final num? dcf;
  final String? image;
  final String? ipoDate;
  final bool? defaultImage;
  final bool? isEtf;
  final bool? isActivelyTrading;
  final bool? isAdr;
  final bool? isFund;

  const CompanyProfileModel({
    required this.symbol,
    required this.price,
    required this.beta,
    required this.volAvg,
    required this.mktCap,
    required this.lastDiv,
    required this.range,
    required this.changes,
    required this.companyName,
    required this.currency,
    required this.cik,
    required this.isin,
    required this.cusip,
    required this.exchange,
    required this.exchangeShortName,
    required this.industry,
    required this.website,
    required this.description,
    required this.ceo,
    required this.sector,
    required this.country,
    required this.fullTimeEmployees,
    required this.phone,
    required this.address,
    required this.city,
    required this.state,
    required this.zip,
    required this.dcfDiff,
    required this.dcf,
    required this.image,
    required this.ipoDate,
    required this.defaultImage,
    required this.isEtf,
    required this.isActivelyTrading,
    required this.isAdr,
    required this.isFund,
  });

  factory CompanyProfileModel.fromJson(Map<String, dynamic> json) {
    return _$CompanyProfileModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CompanyProfileModelToJson(this);
}
