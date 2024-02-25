import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/company_profile/value_objects/company_country_value_object.dart';
import 'package:stockz/domain/company_profile/value_objects/company_industry_value_object.dart';
import 'package:stockz/domain/company_profile/value_objects/company_sector_value_object.dart';
import 'package:stockz/domain/core/value_objects/bool_value_object.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/exchange_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/rage_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';

@immutable
class CompanyProfile extends Equatable {
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
  final ExchangeValueObject exchange;
  final TextValueObject exchangeName;
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
  final bool valid;

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
    required this.exchangeName,
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
    this.valid = true,
  });

  const factory CompanyProfile.invalid() = _$InvalidCompanyProfile;

  @override
  List<Object?> get props => [
        symbol,
        price,
        beta,
        volAvg,
        mktCap,
        lastDiv,
        range,
        changes,
        companyName,
        currency,
        cik,
        isin,
        cusip,
        exchange,
        exchangeName,
        exchangeShortName,
        industry,
        website,
        description,
        ceo,
        sector,
        country,
        fullTimeEmployees,
        phone,
        address,
        city,
        state,
        zip,
        dcfDiff,
        dcf,
        image,
        ipoDate,
        defaultImage,
        isEtf,
        isActivelyTrading,
        isAdr,
        isFund,
        valid,
      ];
}

class _$InvalidCompanyProfile extends CompanyProfile {
  const _$InvalidCompanyProfile()
      : super(
          symbol: const StringIdValueObject.invalid(),
          price: const NumberValueObject.invalid(),
          beta: const NumberValueObject.invalid(),
          volAvg: const NumberValueObject.invalid(),
          mktCap: const NumberValueObject.invalid(),
          lastDiv: const NumberValueObject.invalid(),
          range: const RangeValueObject.invalid(),
          changes: const NumberValueObject.invalid(),
          companyName: const TextValueObject.invalid(),
          currency: const CurrencyValueObject.invalid(),
          cik: const StringIdValueObject.invalid(),
          isin: const StringIdValueObject.invalid(),
          cusip: const StringIdValueObject.invalid(),
          exchange: const ExchangeValueObject.invalid(),
          exchangeName: const TextValueObject.invalid(),
          exchangeShortName: const TextValueObject.invalid(),
          industry: const CompanyIndustryValueObject.invalid(),
          website: const UrlValueObject.invalid(),
          description: const TextValueObject.invalid(),
          ceo: const TextValueObject.invalid(),
          sector: const CompanySectorValueObject.invalid(),
          country: const CompanyCountryValueObject.invalid(),
          fullTimeEmployees: const NumberValueObject.invalid(),
          phone: const TextValueObject.invalid(),
          address: const TextValueObject.invalid(),
          city: const TextValueObject.invalid(),
          state: const TextValueObject.invalid(),
          zip: const TextValueObject.invalid(),
          dcfDiff: const NumberValueObject.invalid(),
          dcf: const NumberValueObject.invalid(),
          image: const UrlValueObject.invalid(),
          ipoDate: const DateValueObject.invalid(),
          defaultImage: const BoolValueObject.invalid(),
          isEtf: const BoolValueObject.invalid(),
          isActivelyTrading: const BoolValueObject.invalid(),
          isAdr: const BoolValueObject.invalid(),
          isFund: const BoolValueObject.invalid(),
          valid: false,
        );
}
