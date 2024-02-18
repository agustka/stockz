import 'package:flutter/foundation.dart';
import 'package:stockz/domain/company_profile/value_objects/company_country_value_object.dart';
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

@immutable
class CompanyProfile {
  final StringIdValueObject symbol;
  final NumberValueObject price;
  final NumberValueObject beta;
  final NumberValueObject volAvg;
  final NumberValueObject mktCap;
  final NumberValueObject lastDiv;
  final RangeValueObject range;
  final NumberValueObject changes;
  final TextValueObject companyName;
  final CurrencyValueObject currency;
  final StringIdValueObject cik;
  final StringIdValueObject isin;
  final StringIdValueObject cusip;
  final TextValueObject exchange;
  final TextValueObject exchangeShortName;
  final CompanyIndustryValueObject industry;
  final UrlValueObject website;
  final TextValueObject description;
  final TextValueObject ceo;
  final CompanySectorValueObject sector;
  final CompanyCountryValueObject country;
  final NumberValueObject fullTimeEmployees;
  final TextValueObject phone;
  final TextValueObject address;
  final TextValueObject city;
  final TextValueObject state;
  final TextValueObject zip;
  final NumberValueObject dcfDiff;
  final NumberValueObject dcf;
  final UrlValueObject image;
  final DateValueObject ipoDate;
  final BoolValueObject defaultImage;
  final BoolValueObject isEtf;
  final BoolValueObject isActivelyTrading;
  final BoolValueObject isAdr;
  final BoolValueObject isFund;

  const CompanyProfile({
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
}
