import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/company_profile/value_objects/company_country_value_object.dart';
import 'package:stockz/domain/company_profile/value_objects/company_exchange_value_object.dart';
import 'package:stockz/domain/company_profile/value_objects/company_industry_value_object.dart';
import 'package:stockz/domain/company_profile/value_objects/company_sector_value_object.dart';
import 'package:stockz/domain/core/value_objects/bool_value_object.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/rage_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'company_profile_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class CompanyProfileModel {
  final String? symbol;
  final double? price;
  final double? beta;
  final int? volAvg;
  final int? mktCap;
  final double? lastDiv;
  final String? range;
  final double? changes;
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
  final double? dcfDiff;
  final double? dcf;
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

  factory CompanyProfileModel.fromTableRow(CompanyProfileTableRow row) {
    return CompanyProfileModel(
      symbol: row.symbol,
      price: row.price,
      beta: row.beta,
      volAvg: row.volAvg,
      mktCap: row.mktCap,
      lastDiv: row.lastDiv,
      range: row.range,
      changes: row.changes,
      companyName: row.companyName,
      currency: row.currency,
      cik: row.cik,
      isin: row.isin,
      cusip: row.cusip,
      exchange: row.exchange,
      exchangeShortName: row.exchangeShortName,
      industry: row.industry,
      website: row.website,
      description: row.description,
      ceo: row.ceo,
      sector: row.sector,
      country: row.country,
      fullTimeEmployees: row.fullTimeEmployees,
      phone: row.phone,
      address: row.address,
      city: row.city,
      state: row.state,
      zip: row.zip,
      dcfDiff: row.dcfDiff,
      dcf: row.dcf,
      image: row.image,
      ipoDate: row.ipoDate,
      defaultImage: row.defaultImage,
      isEtf: row.isEtf,
      isActivelyTrading: row.isActivelyTrading,
      isAdr: row.isAdr,
      isFund: row.isFund,
    );
  }

  factory CompanyProfileModel.fromJson(Map<String, dynamic> json) {
    return _$CompanyProfileModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CompanyProfileModelToJson(this);

  CompanyProfile toDomain() {
    return CompanyProfile(
      symbol: StringIdValueObject(symbol),
      price: NumberValueObject(price),
      beta: NumberValueObject(beta),
      volAvg: NumberValueObject(volAvg),
      mktCap: NumberValueObject(mktCap),
      lastDiv: NumberValueObject(lastDiv),
      range: RangeValueObject(range),
      changes: NumberValueObject(changes),
      companyName: TextValueObject(companyName),
      currency: CurrencyValueObject(currency),
      cik: StringIdValueObject(cik),
      isin: StringIdValueObject(isin),
      cusip: StringIdValueObject(cusip),
      exchange: CompanyExchangeValueObject(exchange),
      exchangeName: TextValueObject(exchange),
      exchangeShortName: TextValueObject(exchangeShortName),
      industry: CompanyIndustryValueObject(industry),
      website: UrlValueObject(website),
      description: TextValueObject(description),
      ceo: TextValueObject(ceo),
      sector: CompanySectorValueObject(sector),
      country: CompanyCountryValueObject(country),
      fullTimeEmployees: NumberValueObject.fromString(fullTimeEmployees),
      phone: TextValueObject(phone),
      address: TextValueObject(address),
      city: TextValueObject(city),
      state: TextValueObject(state),
      zip: TextValueObject(zip),
      dcfDiff: NumberValueObject(dcfDiff),
      dcf: NumberValueObject(dcf),
      image: UrlValueObject(image),
      ipoDate: DateValueObject.fromString(ipoDate),
      defaultImage: BoolValueObject(input: defaultImage),
      isEtf: BoolValueObject(input: isEtf),
      isActivelyTrading: BoolValueObject(input: isActivelyTrading),
      isAdr: BoolValueObject(input: isAdr),
      isFund: BoolValueObject(input: isFund),
    );
  }
}
