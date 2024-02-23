// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_definition.dart';

// ignore_for_file: type=lint
class $CompanyProfileTableRowDefinitionTable
    extends CompanyProfileTableRowDefinition
    with
        TableInfo<$CompanyProfileTableRowDefinitionTable,
            CompanyProfileTableRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyProfileTableRowDefinitionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _betaMeta = const VerificationMeta('beta');
  @override
  late final GeneratedColumn<double> beta = GeneratedColumn<double>(
      'beta', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _volAvgMeta = const VerificationMeta('volAvg');
  @override
  late final GeneratedColumn<int> volAvg = GeneratedColumn<int>(
      'vol_avg', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _mktCapMeta = const VerificationMeta('mktCap');
  @override
  late final GeneratedColumn<int> mktCap = GeneratedColumn<int>(
      'mkt_cap', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _lastDivMeta =
      const VerificationMeta('lastDiv');
  @override
  late final GeneratedColumn<double> lastDiv = GeneratedColumn<double>(
      'last_div', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _rangeMeta = const VerificationMeta('range');
  @override
  late final GeneratedColumn<String> range = GeneratedColumn<String>(
      'range', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _changesMeta =
      const VerificationMeta('changes');
  @override
  late final GeneratedColumn<double> changes = GeneratedColumn<double>(
      'changes', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _companyNameMeta =
      const VerificationMeta('companyName');
  @override
  late final GeneratedColumn<String> companyName = GeneratedColumn<String>(
      'company_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currencyMeta =
      const VerificationMeta('currency');
  @override
  late final GeneratedColumn<String> currency = GeneratedColumn<String>(
      'currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cikMeta = const VerificationMeta('cik');
  @override
  late final GeneratedColumn<String> cik = GeneratedColumn<String>(
      'cik', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isinMeta = const VerificationMeta('isin');
  @override
  late final GeneratedColumn<String> isin = GeneratedColumn<String>(
      'isin', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cusipMeta = const VerificationMeta('cusip');
  @override
  late final GeneratedColumn<String> cusip = GeneratedColumn<String>(
      'cusip', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _exchangeMeta =
      const VerificationMeta('exchange');
  @override
  late final GeneratedColumn<String> exchange = GeneratedColumn<String>(
      'exchange', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _exchangeShortNameMeta =
      const VerificationMeta('exchangeShortName');
  @override
  late final GeneratedColumn<String> exchangeShortName =
      GeneratedColumn<String>('exchange_short_name', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _industryMeta =
      const VerificationMeta('industry');
  @override
  late final GeneratedColumn<String> industry = GeneratedColumn<String>(
      'industry', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _websiteMeta =
      const VerificationMeta('website');
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ceoMeta = const VerificationMeta('ceo');
  @override
  late final GeneratedColumn<String> ceo = GeneratedColumn<String>(
      'ceo', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _sectorMeta = const VerificationMeta('sector');
  @override
  late final GeneratedColumn<String> sector = GeneratedColumn<String>(
      'sector', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fullTimeEmployeesMeta =
      const VerificationMeta('fullTimeEmployees');
  @override
  late final GeneratedColumn<String> fullTimeEmployees =
      GeneratedColumn<String>('full_time_employees', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String> city = GeneratedColumn<String>(
      'city', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _zipMeta = const VerificationMeta('zip');
  @override
  late final GeneratedColumn<String> zip = GeneratedColumn<String>(
      'zip', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dcfDiffMeta =
      const VerificationMeta('dcfDiff');
  @override
  late final GeneratedColumn<double> dcfDiff = GeneratedColumn<double>(
      'dcf_diff', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _dcfMeta = const VerificationMeta('dcf');
  @override
  late final GeneratedColumn<double> dcf = GeneratedColumn<double>(
      'dcf', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ipoDateMeta =
      const VerificationMeta('ipoDate');
  @override
  late final GeneratedColumn<String> ipoDate = GeneratedColumn<String>(
      'ipo_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _defaultImageMeta =
      const VerificationMeta('defaultImage');
  @override
  late final GeneratedColumn<bool> defaultImage = GeneratedColumn<bool>(
      'default_image', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("default_image" IN (0, 1))'));
  static const VerificationMeta _isEtfMeta = const VerificationMeta('isEtf');
  @override
  late final GeneratedColumn<bool> isEtf = GeneratedColumn<bool>(
      'is_etf', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_etf" IN (0, 1))'));
  static const VerificationMeta _isActivelyTradingMeta =
      const VerificationMeta('isActivelyTrading');
  @override
  late final GeneratedColumn<bool> isActivelyTrading = GeneratedColumn<bool>(
      'is_actively_trading', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_actively_trading" IN (0, 1))'));
  static const VerificationMeta _isAdrMeta = const VerificationMeta('isAdr');
  @override
  late final GeneratedColumn<bool> isAdr = GeneratedColumn<bool>(
      'is_adr', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_adr" IN (0, 1))'));
  static const VerificationMeta _isFundMeta = const VerificationMeta('isFund');
  @override
  late final GeneratedColumn<bool> isFund = GeneratedColumn<bool>(
      'is_fund', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_fund" IN (0, 1))'));
  static const VerificationMeta _expiresMeta =
      const VerificationMeta('expires');
  @override
  late final GeneratedColumn<DateTime> expires = GeneratedColumn<DateTime>(
      'expires', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
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
        expires
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'company_profile_table_row_definition';
  @override
  VerificationContext validateIntegrity(
      Insertable<CompanyProfileTableRow> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('beta')) {
      context.handle(
          _betaMeta, beta.isAcceptableOrUnknown(data['beta']!, _betaMeta));
    }
    if (data.containsKey('vol_avg')) {
      context.handle(_volAvgMeta,
          volAvg.isAcceptableOrUnknown(data['vol_avg']!, _volAvgMeta));
    }
    if (data.containsKey('mkt_cap')) {
      context.handle(_mktCapMeta,
          mktCap.isAcceptableOrUnknown(data['mkt_cap']!, _mktCapMeta));
    }
    if (data.containsKey('last_div')) {
      context.handle(_lastDivMeta,
          lastDiv.isAcceptableOrUnknown(data['last_div']!, _lastDivMeta));
    }
    if (data.containsKey('range')) {
      context.handle(
          _rangeMeta, range.isAcceptableOrUnknown(data['range']!, _rangeMeta));
    }
    if (data.containsKey('changes')) {
      context.handle(_changesMeta,
          changes.isAcceptableOrUnknown(data['changes']!, _changesMeta));
    }
    if (data.containsKey('company_name')) {
      context.handle(
          _companyNameMeta,
          companyName.isAcceptableOrUnknown(
              data['company_name']!, _companyNameMeta));
    }
    if (data.containsKey('currency')) {
      context.handle(_currencyMeta,
          currency.isAcceptableOrUnknown(data['currency']!, _currencyMeta));
    }
    if (data.containsKey('cik')) {
      context.handle(
          _cikMeta, cik.isAcceptableOrUnknown(data['cik']!, _cikMeta));
    }
    if (data.containsKey('isin')) {
      context.handle(
          _isinMeta, isin.isAcceptableOrUnknown(data['isin']!, _isinMeta));
    }
    if (data.containsKey('cusip')) {
      context.handle(
          _cusipMeta, cusip.isAcceptableOrUnknown(data['cusip']!, _cusipMeta));
    }
    if (data.containsKey('exchange')) {
      context.handle(_exchangeMeta,
          exchange.isAcceptableOrUnknown(data['exchange']!, _exchangeMeta));
    }
    if (data.containsKey('exchange_short_name')) {
      context.handle(
          _exchangeShortNameMeta,
          exchangeShortName.isAcceptableOrUnknown(
              data['exchange_short_name']!, _exchangeShortNameMeta));
    }
    if (data.containsKey('industry')) {
      context.handle(_industryMeta,
          industry.isAcceptableOrUnknown(data['industry']!, _industryMeta));
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('ceo')) {
      context.handle(
          _ceoMeta, ceo.isAcceptableOrUnknown(data['ceo']!, _ceoMeta));
    }
    if (data.containsKey('sector')) {
      context.handle(_sectorMeta,
          sector.isAcceptableOrUnknown(data['sector']!, _sectorMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('full_time_employees')) {
      context.handle(
          _fullTimeEmployeesMeta,
          fullTimeEmployees.isAcceptableOrUnknown(
              data['full_time_employees']!, _fullTimeEmployeesMeta));
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('city')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['city']!, _cityMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('zip')) {
      context.handle(
          _zipMeta, zip.isAcceptableOrUnknown(data['zip']!, _zipMeta));
    }
    if (data.containsKey('dcf_diff')) {
      context.handle(_dcfDiffMeta,
          dcfDiff.isAcceptableOrUnknown(data['dcf_diff']!, _dcfDiffMeta));
    }
    if (data.containsKey('dcf')) {
      context.handle(
          _dcfMeta, dcf.isAcceptableOrUnknown(data['dcf']!, _dcfMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('ipo_date')) {
      context.handle(_ipoDateMeta,
          ipoDate.isAcceptableOrUnknown(data['ipo_date']!, _ipoDateMeta));
    }
    if (data.containsKey('default_image')) {
      context.handle(
          _defaultImageMeta,
          defaultImage.isAcceptableOrUnknown(
              data['default_image']!, _defaultImageMeta));
    }
    if (data.containsKey('is_etf')) {
      context.handle(
          _isEtfMeta, isEtf.isAcceptableOrUnknown(data['is_etf']!, _isEtfMeta));
    }
    if (data.containsKey('is_actively_trading')) {
      context.handle(
          _isActivelyTradingMeta,
          isActivelyTrading.isAcceptableOrUnknown(
              data['is_actively_trading']!, _isActivelyTradingMeta));
    }
    if (data.containsKey('is_adr')) {
      context.handle(
          _isAdrMeta, isAdr.isAcceptableOrUnknown(data['is_adr']!, _isAdrMeta));
    }
    if (data.containsKey('is_fund')) {
      context.handle(_isFundMeta,
          isFund.isAcceptableOrUnknown(data['is_fund']!, _isFundMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires']!, _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {symbol};
  @override
  CompanyProfileTableRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyProfileTableRow(
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price']),
      beta: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}beta']),
      volAvg: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}vol_avg']),
      mktCap: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}mkt_cap']),
      lastDiv: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}last_div']),
      range: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}range']),
      changes: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}changes']),
      companyName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}company_name']),
      currency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}currency']),
      cik: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cik']),
      isin: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}isin']),
      cusip: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cusip']),
      exchange: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}exchange']),
      exchangeShortName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}exchange_short_name']),
      industry: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}industry']),
      website: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}website']),
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      ceo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ceo']),
      sector: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sector']),
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country']),
      fullTimeEmployees: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}full_time_employees']),
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      city: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}city']),
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      zip: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zip']),
      dcfDiff: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}dcf_diff']),
      dcf: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}dcf']),
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      ipoDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ipo_date']),
      defaultImage: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}default_image']),
      isEtf: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_etf']),
      isActivelyTrading: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}is_actively_trading']),
      isAdr: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_adr']),
      isFund: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_fund']),
      expires: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires'])!,
    );
  }

  @override
  $CompanyProfileTableRowDefinitionTable createAlias(String alias) {
    return $CompanyProfileTableRowDefinitionTable(attachedDatabase, alias);
  }
}

class CompanyProfileTableRow extends DataClass
    implements Insertable<CompanyProfileTableRow> {
  final String symbol;
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
  final DateTime expires;
  const CompanyProfileTableRow(
      {required this.symbol,
      this.price,
      this.beta,
      this.volAvg,
      this.mktCap,
      this.lastDiv,
      this.range,
      this.changes,
      this.companyName,
      this.currency,
      this.cik,
      this.isin,
      this.cusip,
      this.exchange,
      this.exchangeShortName,
      this.industry,
      this.website,
      this.description,
      this.ceo,
      this.sector,
      this.country,
      this.fullTimeEmployees,
      this.phone,
      this.address,
      this.city,
      this.state,
      this.zip,
      this.dcfDiff,
      this.dcf,
      this.image,
      this.ipoDate,
      this.defaultImage,
      this.isEtf,
      this.isActivelyTrading,
      this.isAdr,
      this.isFund,
      required this.expires});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['symbol'] = Variable<String>(symbol);
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<double>(price);
    }
    if (!nullToAbsent || beta != null) {
      map['beta'] = Variable<double>(beta);
    }
    if (!nullToAbsent || volAvg != null) {
      map['vol_avg'] = Variable<int>(volAvg);
    }
    if (!nullToAbsent || mktCap != null) {
      map['mkt_cap'] = Variable<int>(mktCap);
    }
    if (!nullToAbsent || lastDiv != null) {
      map['last_div'] = Variable<double>(lastDiv);
    }
    if (!nullToAbsent || range != null) {
      map['range'] = Variable<String>(range);
    }
    if (!nullToAbsent || changes != null) {
      map['changes'] = Variable<double>(changes);
    }
    if (!nullToAbsent || companyName != null) {
      map['company_name'] = Variable<String>(companyName);
    }
    if (!nullToAbsent || currency != null) {
      map['currency'] = Variable<String>(currency);
    }
    if (!nullToAbsent || cik != null) {
      map['cik'] = Variable<String>(cik);
    }
    if (!nullToAbsent || isin != null) {
      map['isin'] = Variable<String>(isin);
    }
    if (!nullToAbsent || cusip != null) {
      map['cusip'] = Variable<String>(cusip);
    }
    if (!nullToAbsent || exchange != null) {
      map['exchange'] = Variable<String>(exchange);
    }
    if (!nullToAbsent || exchangeShortName != null) {
      map['exchange_short_name'] = Variable<String>(exchangeShortName);
    }
    if (!nullToAbsent || industry != null) {
      map['industry'] = Variable<String>(industry);
    }
    if (!nullToAbsent || website != null) {
      map['website'] = Variable<String>(website);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || ceo != null) {
      map['ceo'] = Variable<String>(ceo);
    }
    if (!nullToAbsent || sector != null) {
      map['sector'] = Variable<String>(sector);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || fullTimeEmployees != null) {
      map['full_time_employees'] = Variable<String>(fullTimeEmployees);
    }
    if (!nullToAbsent || phone != null) {
      map['phone'] = Variable<String>(phone);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || zip != null) {
      map['zip'] = Variable<String>(zip);
    }
    if (!nullToAbsent || dcfDiff != null) {
      map['dcf_diff'] = Variable<double>(dcfDiff);
    }
    if (!nullToAbsent || dcf != null) {
      map['dcf'] = Variable<double>(dcf);
    }
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || ipoDate != null) {
      map['ipo_date'] = Variable<String>(ipoDate);
    }
    if (!nullToAbsent || defaultImage != null) {
      map['default_image'] = Variable<bool>(defaultImage);
    }
    if (!nullToAbsent || isEtf != null) {
      map['is_etf'] = Variable<bool>(isEtf);
    }
    if (!nullToAbsent || isActivelyTrading != null) {
      map['is_actively_trading'] = Variable<bool>(isActivelyTrading);
    }
    if (!nullToAbsent || isAdr != null) {
      map['is_adr'] = Variable<bool>(isAdr);
    }
    if (!nullToAbsent || isFund != null) {
      map['is_fund'] = Variable<bool>(isFund);
    }
    map['expires'] = Variable<DateTime>(expires);
    return map;
  }

  CompanyProfileTableRowDefinitionCompanion toCompanion(bool nullToAbsent) {
    return CompanyProfileTableRowDefinitionCompanion(
      symbol: Value(symbol),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      beta: beta == null && nullToAbsent ? const Value.absent() : Value(beta),
      volAvg:
          volAvg == null && nullToAbsent ? const Value.absent() : Value(volAvg),
      mktCap:
          mktCap == null && nullToAbsent ? const Value.absent() : Value(mktCap),
      lastDiv: lastDiv == null && nullToAbsent
          ? const Value.absent()
          : Value(lastDiv),
      range:
          range == null && nullToAbsent ? const Value.absent() : Value(range),
      changes: changes == null && nullToAbsent
          ? const Value.absent()
          : Value(changes),
      companyName: companyName == null && nullToAbsent
          ? const Value.absent()
          : Value(companyName),
      currency: currency == null && nullToAbsent
          ? const Value.absent()
          : Value(currency),
      cik: cik == null && nullToAbsent ? const Value.absent() : Value(cik),
      isin: isin == null && nullToAbsent ? const Value.absent() : Value(isin),
      cusip:
          cusip == null && nullToAbsent ? const Value.absent() : Value(cusip),
      exchange: exchange == null && nullToAbsent
          ? const Value.absent()
          : Value(exchange),
      exchangeShortName: exchangeShortName == null && nullToAbsent
          ? const Value.absent()
          : Value(exchangeShortName),
      industry: industry == null && nullToAbsent
          ? const Value.absent()
          : Value(industry),
      website: website == null && nullToAbsent
          ? const Value.absent()
          : Value(website),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      ceo: ceo == null && nullToAbsent ? const Value.absent() : Value(ceo),
      sector:
          sector == null && nullToAbsent ? const Value.absent() : Value(sector),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      fullTimeEmployees: fullTimeEmployees == null && nullToAbsent
          ? const Value.absent()
          : Value(fullTimeEmployees),
      phone:
          phone == null && nullToAbsent ? const Value.absent() : Value(phone),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      zip: zip == null && nullToAbsent ? const Value.absent() : Value(zip),
      dcfDiff: dcfDiff == null && nullToAbsent
          ? const Value.absent()
          : Value(dcfDiff),
      dcf: dcf == null && nullToAbsent ? const Value.absent() : Value(dcf),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      ipoDate: ipoDate == null && nullToAbsent
          ? const Value.absent()
          : Value(ipoDate),
      defaultImage: defaultImage == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultImage),
      isEtf:
          isEtf == null && nullToAbsent ? const Value.absent() : Value(isEtf),
      isActivelyTrading: isActivelyTrading == null && nullToAbsent
          ? const Value.absent()
          : Value(isActivelyTrading),
      isAdr:
          isAdr == null && nullToAbsent ? const Value.absent() : Value(isAdr),
      isFund:
          isFund == null && nullToAbsent ? const Value.absent() : Value(isFund),
      expires: Value(expires),
    );
  }

  factory CompanyProfileTableRow.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CompanyProfileTableRow(
      symbol: serializer.fromJson<String>(json['symbol']),
      price: serializer.fromJson<double?>(json['price']),
      beta: serializer.fromJson<double?>(json['beta']),
      volAvg: serializer.fromJson<int?>(json['volAvg']),
      mktCap: serializer.fromJson<int?>(json['mktCap']),
      lastDiv: serializer.fromJson<double?>(json['lastDiv']),
      range: serializer.fromJson<String?>(json['range']),
      changes: serializer.fromJson<double?>(json['changes']),
      companyName: serializer.fromJson<String?>(json['companyName']),
      currency: serializer.fromJson<String?>(json['currency']),
      cik: serializer.fromJson<String?>(json['cik']),
      isin: serializer.fromJson<String?>(json['isin']),
      cusip: serializer.fromJson<String?>(json['cusip']),
      exchange: serializer.fromJson<String?>(json['exchange']),
      exchangeShortName:
          serializer.fromJson<String?>(json['exchangeShortName']),
      industry: serializer.fromJson<String?>(json['industry']),
      website: serializer.fromJson<String?>(json['website']),
      description: serializer.fromJson<String?>(json['description']),
      ceo: serializer.fromJson<String?>(json['ceo']),
      sector: serializer.fromJson<String?>(json['sector']),
      country: serializer.fromJson<String?>(json['country']),
      fullTimeEmployees:
          serializer.fromJson<String?>(json['fullTimeEmployees']),
      phone: serializer.fromJson<String?>(json['phone']),
      address: serializer.fromJson<String?>(json['address']),
      city: serializer.fromJson<String?>(json['city']),
      state: serializer.fromJson<String?>(json['state']),
      zip: serializer.fromJson<String?>(json['zip']),
      dcfDiff: serializer.fromJson<double?>(json['dcfDiff']),
      dcf: serializer.fromJson<double?>(json['dcf']),
      image: serializer.fromJson<String?>(json['image']),
      ipoDate: serializer.fromJson<String?>(json['ipoDate']),
      defaultImage: serializer.fromJson<bool?>(json['defaultImage']),
      isEtf: serializer.fromJson<bool?>(json['isEtf']),
      isActivelyTrading: serializer.fromJson<bool?>(json['isActivelyTrading']),
      isAdr: serializer.fromJson<bool?>(json['isAdr']),
      isFund: serializer.fromJson<bool?>(json['isFund']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'symbol': serializer.toJson<String>(symbol),
      'price': serializer.toJson<double?>(price),
      'beta': serializer.toJson<double?>(beta),
      'volAvg': serializer.toJson<int?>(volAvg),
      'mktCap': serializer.toJson<int?>(mktCap),
      'lastDiv': serializer.toJson<double?>(lastDiv),
      'range': serializer.toJson<String?>(range),
      'changes': serializer.toJson<double?>(changes),
      'companyName': serializer.toJson<String?>(companyName),
      'currency': serializer.toJson<String?>(currency),
      'cik': serializer.toJson<String?>(cik),
      'isin': serializer.toJson<String?>(isin),
      'cusip': serializer.toJson<String?>(cusip),
      'exchange': serializer.toJson<String?>(exchange),
      'exchangeShortName': serializer.toJson<String?>(exchangeShortName),
      'industry': serializer.toJson<String?>(industry),
      'website': serializer.toJson<String?>(website),
      'description': serializer.toJson<String?>(description),
      'ceo': serializer.toJson<String?>(ceo),
      'sector': serializer.toJson<String?>(sector),
      'country': serializer.toJson<String?>(country),
      'fullTimeEmployees': serializer.toJson<String?>(fullTimeEmployees),
      'phone': serializer.toJson<String?>(phone),
      'address': serializer.toJson<String?>(address),
      'city': serializer.toJson<String?>(city),
      'state': serializer.toJson<String?>(state),
      'zip': serializer.toJson<String?>(zip),
      'dcfDiff': serializer.toJson<double?>(dcfDiff),
      'dcf': serializer.toJson<double?>(dcf),
      'image': serializer.toJson<String?>(image),
      'ipoDate': serializer.toJson<String?>(ipoDate),
      'defaultImage': serializer.toJson<bool?>(defaultImage),
      'isEtf': serializer.toJson<bool?>(isEtf),
      'isActivelyTrading': serializer.toJson<bool?>(isActivelyTrading),
      'isAdr': serializer.toJson<bool?>(isAdr),
      'isFund': serializer.toJson<bool?>(isFund),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  CompanyProfileTableRow copyWith(
          {String? symbol,
          Value<double?> price = const Value.absent(),
          Value<double?> beta = const Value.absent(),
          Value<int?> volAvg = const Value.absent(),
          Value<int?> mktCap = const Value.absent(),
          Value<double?> lastDiv = const Value.absent(),
          Value<String?> range = const Value.absent(),
          Value<double?> changes = const Value.absent(),
          Value<String?> companyName = const Value.absent(),
          Value<String?> currency = const Value.absent(),
          Value<String?> cik = const Value.absent(),
          Value<String?> isin = const Value.absent(),
          Value<String?> cusip = const Value.absent(),
          Value<String?> exchange = const Value.absent(),
          Value<String?> exchangeShortName = const Value.absent(),
          Value<String?> industry = const Value.absent(),
          Value<String?> website = const Value.absent(),
          Value<String?> description = const Value.absent(),
          Value<String?> ceo = const Value.absent(),
          Value<String?> sector = const Value.absent(),
          Value<String?> country = const Value.absent(),
          Value<String?> fullTimeEmployees = const Value.absent(),
          Value<String?> phone = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> city = const Value.absent(),
          Value<String?> state = const Value.absent(),
          Value<String?> zip = const Value.absent(),
          Value<double?> dcfDiff = const Value.absent(),
          Value<double?> dcf = const Value.absent(),
          Value<String?> image = const Value.absent(),
          Value<String?> ipoDate = const Value.absent(),
          Value<bool?> defaultImage = const Value.absent(),
          Value<bool?> isEtf = const Value.absent(),
          Value<bool?> isActivelyTrading = const Value.absent(),
          Value<bool?> isAdr = const Value.absent(),
          Value<bool?> isFund = const Value.absent(),
          DateTime? expires}) =>
      CompanyProfileTableRow(
        symbol: symbol ?? this.symbol,
        price: price.present ? price.value : this.price,
        beta: beta.present ? beta.value : this.beta,
        volAvg: volAvg.present ? volAvg.value : this.volAvg,
        mktCap: mktCap.present ? mktCap.value : this.mktCap,
        lastDiv: lastDiv.present ? lastDiv.value : this.lastDiv,
        range: range.present ? range.value : this.range,
        changes: changes.present ? changes.value : this.changes,
        companyName: companyName.present ? companyName.value : this.companyName,
        currency: currency.present ? currency.value : this.currency,
        cik: cik.present ? cik.value : this.cik,
        isin: isin.present ? isin.value : this.isin,
        cusip: cusip.present ? cusip.value : this.cusip,
        exchange: exchange.present ? exchange.value : this.exchange,
        exchangeShortName: exchangeShortName.present
            ? exchangeShortName.value
            : this.exchangeShortName,
        industry: industry.present ? industry.value : this.industry,
        website: website.present ? website.value : this.website,
        description: description.present ? description.value : this.description,
        ceo: ceo.present ? ceo.value : this.ceo,
        sector: sector.present ? sector.value : this.sector,
        country: country.present ? country.value : this.country,
        fullTimeEmployees: fullTimeEmployees.present
            ? fullTimeEmployees.value
            : this.fullTimeEmployees,
        phone: phone.present ? phone.value : this.phone,
        address: address.present ? address.value : this.address,
        city: city.present ? city.value : this.city,
        state: state.present ? state.value : this.state,
        zip: zip.present ? zip.value : this.zip,
        dcfDiff: dcfDiff.present ? dcfDiff.value : this.dcfDiff,
        dcf: dcf.present ? dcf.value : this.dcf,
        image: image.present ? image.value : this.image,
        ipoDate: ipoDate.present ? ipoDate.value : this.ipoDate,
        defaultImage:
            defaultImage.present ? defaultImage.value : this.defaultImage,
        isEtf: isEtf.present ? isEtf.value : this.isEtf,
        isActivelyTrading: isActivelyTrading.present
            ? isActivelyTrading.value
            : this.isActivelyTrading,
        isAdr: isAdr.present ? isAdr.value : this.isAdr,
        isFund: isFund.present ? isFund.value : this.isFund,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('CompanyProfileTableRow(')
          ..write('symbol: $symbol, ')
          ..write('price: $price, ')
          ..write('beta: $beta, ')
          ..write('volAvg: $volAvg, ')
          ..write('mktCap: $mktCap, ')
          ..write('lastDiv: $lastDiv, ')
          ..write('range: $range, ')
          ..write('changes: $changes, ')
          ..write('companyName: $companyName, ')
          ..write('currency: $currency, ')
          ..write('cik: $cik, ')
          ..write('isin: $isin, ')
          ..write('cusip: $cusip, ')
          ..write('exchange: $exchange, ')
          ..write('exchangeShortName: $exchangeShortName, ')
          ..write('industry: $industry, ')
          ..write('website: $website, ')
          ..write('description: $description, ')
          ..write('ceo: $ceo, ')
          ..write('sector: $sector, ')
          ..write('country: $country, ')
          ..write('fullTimeEmployees: $fullTimeEmployees, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('zip: $zip, ')
          ..write('dcfDiff: $dcfDiff, ')
          ..write('dcf: $dcf, ')
          ..write('image: $image, ')
          ..write('ipoDate: $ipoDate, ')
          ..write('defaultImage: $defaultImage, ')
          ..write('isEtf: $isEtf, ')
          ..write('isActivelyTrading: $isActivelyTrading, ')
          ..write('isAdr: $isAdr, ')
          ..write('isFund: $isFund, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
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
        expires
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CompanyProfileTableRow &&
          other.symbol == this.symbol &&
          other.price == this.price &&
          other.beta == this.beta &&
          other.volAvg == this.volAvg &&
          other.mktCap == this.mktCap &&
          other.lastDiv == this.lastDiv &&
          other.range == this.range &&
          other.changes == this.changes &&
          other.companyName == this.companyName &&
          other.currency == this.currency &&
          other.cik == this.cik &&
          other.isin == this.isin &&
          other.cusip == this.cusip &&
          other.exchange == this.exchange &&
          other.exchangeShortName == this.exchangeShortName &&
          other.industry == this.industry &&
          other.website == this.website &&
          other.description == this.description &&
          other.ceo == this.ceo &&
          other.sector == this.sector &&
          other.country == this.country &&
          other.fullTimeEmployees == this.fullTimeEmployees &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.city == this.city &&
          other.state == this.state &&
          other.zip == this.zip &&
          other.dcfDiff == this.dcfDiff &&
          other.dcf == this.dcf &&
          other.image == this.image &&
          other.ipoDate == this.ipoDate &&
          other.defaultImage == this.defaultImage &&
          other.isEtf == this.isEtf &&
          other.isActivelyTrading == this.isActivelyTrading &&
          other.isAdr == this.isAdr &&
          other.isFund == this.isFund &&
          other.expires == this.expires);
}

class CompanyProfileTableRowDefinitionCompanion
    extends UpdateCompanion<CompanyProfileTableRow> {
  final Value<String> symbol;
  final Value<double?> price;
  final Value<double?> beta;
  final Value<int?> volAvg;
  final Value<int?> mktCap;
  final Value<double?> lastDiv;
  final Value<String?> range;
  final Value<double?> changes;
  final Value<String?> companyName;
  final Value<String?> currency;
  final Value<String?> cik;
  final Value<String?> isin;
  final Value<String?> cusip;
  final Value<String?> exchange;
  final Value<String?> exchangeShortName;
  final Value<String?> industry;
  final Value<String?> website;
  final Value<String?> description;
  final Value<String?> ceo;
  final Value<String?> sector;
  final Value<String?> country;
  final Value<String?> fullTimeEmployees;
  final Value<String?> phone;
  final Value<String?> address;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> zip;
  final Value<double?> dcfDiff;
  final Value<double?> dcf;
  final Value<String?> image;
  final Value<String?> ipoDate;
  final Value<bool?> defaultImage;
  final Value<bool?> isEtf;
  final Value<bool?> isActivelyTrading;
  final Value<bool?> isAdr;
  final Value<bool?> isFund;
  final Value<DateTime> expires;
  final Value<int> rowid;
  const CompanyProfileTableRowDefinitionCompanion({
    this.symbol = const Value.absent(),
    this.price = const Value.absent(),
    this.beta = const Value.absent(),
    this.volAvg = const Value.absent(),
    this.mktCap = const Value.absent(),
    this.lastDiv = const Value.absent(),
    this.range = const Value.absent(),
    this.changes = const Value.absent(),
    this.companyName = const Value.absent(),
    this.currency = const Value.absent(),
    this.cik = const Value.absent(),
    this.isin = const Value.absent(),
    this.cusip = const Value.absent(),
    this.exchange = const Value.absent(),
    this.exchangeShortName = const Value.absent(),
    this.industry = const Value.absent(),
    this.website = const Value.absent(),
    this.description = const Value.absent(),
    this.ceo = const Value.absent(),
    this.sector = const Value.absent(),
    this.country = const Value.absent(),
    this.fullTimeEmployees = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.zip = const Value.absent(),
    this.dcfDiff = const Value.absent(),
    this.dcf = const Value.absent(),
    this.image = const Value.absent(),
    this.ipoDate = const Value.absent(),
    this.defaultImage = const Value.absent(),
    this.isEtf = const Value.absent(),
    this.isActivelyTrading = const Value.absent(),
    this.isAdr = const Value.absent(),
    this.isFund = const Value.absent(),
    this.expires = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompanyProfileTableRowDefinitionCompanion.insert({
    required String symbol,
    this.price = const Value.absent(),
    this.beta = const Value.absent(),
    this.volAvg = const Value.absent(),
    this.mktCap = const Value.absent(),
    this.lastDiv = const Value.absent(),
    this.range = const Value.absent(),
    this.changes = const Value.absent(),
    this.companyName = const Value.absent(),
    this.currency = const Value.absent(),
    this.cik = const Value.absent(),
    this.isin = const Value.absent(),
    this.cusip = const Value.absent(),
    this.exchange = const Value.absent(),
    this.exchangeShortName = const Value.absent(),
    this.industry = const Value.absent(),
    this.website = const Value.absent(),
    this.description = const Value.absent(),
    this.ceo = const Value.absent(),
    this.sector = const Value.absent(),
    this.country = const Value.absent(),
    this.fullTimeEmployees = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.zip = const Value.absent(),
    this.dcfDiff = const Value.absent(),
    this.dcf = const Value.absent(),
    this.image = const Value.absent(),
    this.ipoDate = const Value.absent(),
    this.defaultImage = const Value.absent(),
    this.isEtf = const Value.absent(),
    this.isActivelyTrading = const Value.absent(),
    this.isAdr = const Value.absent(),
    this.isFund = const Value.absent(),
    required DateTime expires,
    this.rowid = const Value.absent(),
  })  : symbol = Value(symbol),
        expires = Value(expires);
  static Insertable<CompanyProfileTableRow> custom({
    Expression<String>? symbol,
    Expression<double>? price,
    Expression<double>? beta,
    Expression<int>? volAvg,
    Expression<int>? mktCap,
    Expression<double>? lastDiv,
    Expression<String>? range,
    Expression<double>? changes,
    Expression<String>? companyName,
    Expression<String>? currency,
    Expression<String>? cik,
    Expression<String>? isin,
    Expression<String>? cusip,
    Expression<String>? exchange,
    Expression<String>? exchangeShortName,
    Expression<String>? industry,
    Expression<String>? website,
    Expression<String>? description,
    Expression<String>? ceo,
    Expression<String>? sector,
    Expression<String>? country,
    Expression<String>? fullTimeEmployees,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<String>? city,
    Expression<String>? state,
    Expression<String>? zip,
    Expression<double>? dcfDiff,
    Expression<double>? dcf,
    Expression<String>? image,
    Expression<String>? ipoDate,
    Expression<bool>? defaultImage,
    Expression<bool>? isEtf,
    Expression<bool>? isActivelyTrading,
    Expression<bool>? isAdr,
    Expression<bool>? isFund,
    Expression<DateTime>? expires,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (symbol != null) 'symbol': symbol,
      if (price != null) 'price': price,
      if (beta != null) 'beta': beta,
      if (volAvg != null) 'vol_avg': volAvg,
      if (mktCap != null) 'mkt_cap': mktCap,
      if (lastDiv != null) 'last_div': lastDiv,
      if (range != null) 'range': range,
      if (changes != null) 'changes': changes,
      if (companyName != null) 'company_name': companyName,
      if (currency != null) 'currency': currency,
      if (cik != null) 'cik': cik,
      if (isin != null) 'isin': isin,
      if (cusip != null) 'cusip': cusip,
      if (exchange != null) 'exchange': exchange,
      if (exchangeShortName != null) 'exchange_short_name': exchangeShortName,
      if (industry != null) 'industry': industry,
      if (website != null) 'website': website,
      if (description != null) 'description': description,
      if (ceo != null) 'ceo': ceo,
      if (sector != null) 'sector': sector,
      if (country != null) 'country': country,
      if (fullTimeEmployees != null) 'full_time_employees': fullTimeEmployees,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (city != null) 'city': city,
      if (state != null) 'state': state,
      if (zip != null) 'zip': zip,
      if (dcfDiff != null) 'dcf_diff': dcfDiff,
      if (dcf != null) 'dcf': dcf,
      if (image != null) 'image': image,
      if (ipoDate != null) 'ipo_date': ipoDate,
      if (defaultImage != null) 'default_image': defaultImage,
      if (isEtf != null) 'is_etf': isEtf,
      if (isActivelyTrading != null) 'is_actively_trading': isActivelyTrading,
      if (isAdr != null) 'is_adr': isAdr,
      if (isFund != null) 'is_fund': isFund,
      if (expires != null) 'expires': expires,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompanyProfileTableRowDefinitionCompanion copyWith(
      {Value<String>? symbol,
      Value<double?>? price,
      Value<double?>? beta,
      Value<int?>? volAvg,
      Value<int?>? mktCap,
      Value<double?>? lastDiv,
      Value<String?>? range,
      Value<double?>? changes,
      Value<String?>? companyName,
      Value<String?>? currency,
      Value<String?>? cik,
      Value<String?>? isin,
      Value<String?>? cusip,
      Value<String?>? exchange,
      Value<String?>? exchangeShortName,
      Value<String?>? industry,
      Value<String?>? website,
      Value<String?>? description,
      Value<String?>? ceo,
      Value<String?>? sector,
      Value<String?>? country,
      Value<String?>? fullTimeEmployees,
      Value<String?>? phone,
      Value<String?>? address,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? zip,
      Value<double?>? dcfDiff,
      Value<double?>? dcf,
      Value<String?>? image,
      Value<String?>? ipoDate,
      Value<bool?>? defaultImage,
      Value<bool?>? isEtf,
      Value<bool?>? isActivelyTrading,
      Value<bool?>? isAdr,
      Value<bool?>? isFund,
      Value<DateTime>? expires,
      Value<int>? rowid}) {
    return CompanyProfileTableRowDefinitionCompanion(
      symbol: symbol ?? this.symbol,
      price: price ?? this.price,
      beta: beta ?? this.beta,
      volAvg: volAvg ?? this.volAvg,
      mktCap: mktCap ?? this.mktCap,
      lastDiv: lastDiv ?? this.lastDiv,
      range: range ?? this.range,
      changes: changes ?? this.changes,
      companyName: companyName ?? this.companyName,
      currency: currency ?? this.currency,
      cik: cik ?? this.cik,
      isin: isin ?? this.isin,
      cusip: cusip ?? this.cusip,
      exchange: exchange ?? this.exchange,
      exchangeShortName: exchangeShortName ?? this.exchangeShortName,
      industry: industry ?? this.industry,
      website: website ?? this.website,
      description: description ?? this.description,
      ceo: ceo ?? this.ceo,
      sector: sector ?? this.sector,
      country: country ?? this.country,
      fullTimeEmployees: fullTimeEmployees ?? this.fullTimeEmployees,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      city: city ?? this.city,
      state: state ?? this.state,
      zip: zip ?? this.zip,
      dcfDiff: dcfDiff ?? this.dcfDiff,
      dcf: dcf ?? this.dcf,
      image: image ?? this.image,
      ipoDate: ipoDate ?? this.ipoDate,
      defaultImage: defaultImage ?? this.defaultImage,
      isEtf: isEtf ?? this.isEtf,
      isActivelyTrading: isActivelyTrading ?? this.isActivelyTrading,
      isAdr: isAdr ?? this.isAdr,
      isFund: isFund ?? this.isFund,
      expires: expires ?? this.expires,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (beta.present) {
      map['beta'] = Variable<double>(beta.value);
    }
    if (volAvg.present) {
      map['vol_avg'] = Variable<int>(volAvg.value);
    }
    if (mktCap.present) {
      map['mkt_cap'] = Variable<int>(mktCap.value);
    }
    if (lastDiv.present) {
      map['last_div'] = Variable<double>(lastDiv.value);
    }
    if (range.present) {
      map['range'] = Variable<String>(range.value);
    }
    if (changes.present) {
      map['changes'] = Variable<double>(changes.value);
    }
    if (companyName.present) {
      map['company_name'] = Variable<String>(companyName.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(currency.value);
    }
    if (cik.present) {
      map['cik'] = Variable<String>(cik.value);
    }
    if (isin.present) {
      map['isin'] = Variable<String>(isin.value);
    }
    if (cusip.present) {
      map['cusip'] = Variable<String>(cusip.value);
    }
    if (exchange.present) {
      map['exchange'] = Variable<String>(exchange.value);
    }
    if (exchangeShortName.present) {
      map['exchange_short_name'] = Variable<String>(exchangeShortName.value);
    }
    if (industry.present) {
      map['industry'] = Variable<String>(industry.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (ceo.present) {
      map['ceo'] = Variable<String>(ceo.value);
    }
    if (sector.present) {
      map['sector'] = Variable<String>(sector.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (fullTimeEmployees.present) {
      map['full_time_employees'] = Variable<String>(fullTimeEmployees.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (zip.present) {
      map['zip'] = Variable<String>(zip.value);
    }
    if (dcfDiff.present) {
      map['dcf_diff'] = Variable<double>(dcfDiff.value);
    }
    if (dcf.present) {
      map['dcf'] = Variable<double>(dcf.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (ipoDate.present) {
      map['ipo_date'] = Variable<String>(ipoDate.value);
    }
    if (defaultImage.present) {
      map['default_image'] = Variable<bool>(defaultImage.value);
    }
    if (isEtf.present) {
      map['is_etf'] = Variable<bool>(isEtf.value);
    }
    if (isActivelyTrading.present) {
      map['is_actively_trading'] = Variable<bool>(isActivelyTrading.value);
    }
    if (isAdr.present) {
      map['is_adr'] = Variable<bool>(isAdr.value);
    }
    if (isFund.present) {
      map['is_fund'] = Variable<bool>(isFund.value);
    }
    if (expires.present) {
      map['expires'] = Variable<DateTime>(expires.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyProfileTableRowDefinitionCompanion(')
          ..write('symbol: $symbol, ')
          ..write('price: $price, ')
          ..write('beta: $beta, ')
          ..write('volAvg: $volAvg, ')
          ..write('mktCap: $mktCap, ')
          ..write('lastDiv: $lastDiv, ')
          ..write('range: $range, ')
          ..write('changes: $changes, ')
          ..write('companyName: $companyName, ')
          ..write('currency: $currency, ')
          ..write('cik: $cik, ')
          ..write('isin: $isin, ')
          ..write('cusip: $cusip, ')
          ..write('exchange: $exchange, ')
          ..write('exchangeShortName: $exchangeShortName, ')
          ..write('industry: $industry, ')
          ..write('website: $website, ')
          ..write('description: $description, ')
          ..write('ceo: $ceo, ')
          ..write('sector: $sector, ')
          ..write('country: $country, ')
          ..write('fullTimeEmployees: $fullTimeEmployees, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('zip: $zip, ')
          ..write('dcfDiff: $dcfDiff, ')
          ..write('dcf: $dcf, ')
          ..write('image: $image, ')
          ..write('ipoDate: $ipoDate, ')
          ..write('defaultImage: $defaultImage, ')
          ..write('isEtf: $isEtf, ')
          ..write('isActivelyTrading: $isActivelyTrading, ')
          ..write('isAdr: $isAdr, ')
          ..write('isFund: $isFund, ')
          ..write('expires: $expires, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $BalanceSheetStatementTableRowDefinitionTable
    extends BalanceSheetStatementTableRowDefinition
    with
        TableInfo<$BalanceSheetStatementTableRowDefinitionTable,
            BalanceSheetStatementTableRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BalanceSheetStatementTableRowDefinitionTable(this.attachedDatabase,
      [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reportedCurrencyMeta =
      const VerificationMeta('reportedCurrency');
  @override
  late final GeneratedColumn<String> reportedCurrency = GeneratedColumn<String>(
      'reported_currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cikMeta = const VerificationMeta('cik');
  @override
  late final GeneratedColumn<String> cik = GeneratedColumn<String>(
      'cik', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fillingDateMeta =
      const VerificationMeta('fillingDate');
  @override
  late final GeneratedColumn<String> fillingDate = GeneratedColumn<String>(
      'filling_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _acceptedDateMeta =
      const VerificationMeta('acceptedDate');
  @override
  late final GeneratedColumn<String> acceptedDate = GeneratedColumn<String>(
      'accepted_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _calendarYearMeta =
      const VerificationMeta('calendarYear');
  @override
  late final GeneratedColumn<String> calendarYear = GeneratedColumn<String>(
      'calendar_year', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _periodMeta = const VerificationMeta('period');
  @override
  late final GeneratedColumn<String> period = GeneratedColumn<String>(
      'period', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cashAndCashEquivalentsMeta =
      const VerificationMeta('cashAndCashEquivalents');
  @override
  late final GeneratedColumn<int> cashAndCashEquivalents = GeneratedColumn<int>(
      'cash_and_cash_equivalents', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _shortTermInvestmentsMeta =
      const VerificationMeta('shortTermInvestments');
  @override
  late final GeneratedColumn<int> shortTermInvestments = GeneratedColumn<int>(
      'short_term_investments', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cashAndShortTermInvestmentsMeta =
      const VerificationMeta('cashAndShortTermInvestments');
  @override
  late final GeneratedColumn<int> cashAndShortTermInvestments =
      GeneratedColumn<int>('cash_and_short_term_investments', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netReceivablesMeta =
      const VerificationMeta('netReceivables');
  @override
  late final GeneratedColumn<int> netReceivables = GeneratedColumn<int>(
      'net_receivables', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _inventoryMeta =
      const VerificationMeta('inventory');
  @override
  late final GeneratedColumn<int> inventory = GeneratedColumn<int>(
      'inventory', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherCurrentAssetsMeta =
      const VerificationMeta('otherCurrentAssets');
  @override
  late final GeneratedColumn<int> otherCurrentAssets = GeneratedColumn<int>(
      'other_current_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalCurrentAssetsMeta =
      const VerificationMeta('totalCurrentAssets');
  @override
  late final GeneratedColumn<int> totalCurrentAssets = GeneratedColumn<int>(
      'total_current_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _propertyPlantEquipmentNetMeta =
      const VerificationMeta('propertyPlantEquipmentNet');
  @override
  late final GeneratedColumn<int> propertyPlantEquipmentNet =
      GeneratedColumn<int>('property_plant_equipment_net', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _goodwillMeta =
      const VerificationMeta('goodwill');
  @override
  late final GeneratedColumn<int> goodwill = GeneratedColumn<int>(
      'goodwill', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _intangibleAssetsMeta =
      const VerificationMeta('intangibleAssets');
  @override
  late final GeneratedColumn<int> intangibleAssets = GeneratedColumn<int>(
      'intangible_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _goodwillAndIntangibleAssetsMeta =
      const VerificationMeta('goodwillAndIntangibleAssets');
  @override
  late final GeneratedColumn<int> goodwillAndIntangibleAssets =
      GeneratedColumn<int>('goodwill_and_intangible_assets', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _longTermInvestmentsMeta =
      const VerificationMeta('longTermInvestments');
  @override
  late final GeneratedColumn<int> longTermInvestments = GeneratedColumn<int>(
      'long_term_investments', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _taxAssetsMeta =
      const VerificationMeta('taxAssets');
  @override
  late final GeneratedColumn<int> taxAssets = GeneratedColumn<int>(
      'tax_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherNonCurrentAssetsMeta =
      const VerificationMeta('otherNonCurrentAssets');
  @override
  late final GeneratedColumn<int> otherNonCurrentAssets = GeneratedColumn<int>(
      'other_non_current_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalNonCurrentAssetsMeta =
      const VerificationMeta('totalNonCurrentAssets');
  @override
  late final GeneratedColumn<int> totalNonCurrentAssets = GeneratedColumn<int>(
      'total_non_current_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherAssetsMeta =
      const VerificationMeta('otherAssets');
  @override
  late final GeneratedColumn<int> otherAssets = GeneratedColumn<int>(
      'other_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalAssetsMeta =
      const VerificationMeta('totalAssets');
  @override
  late final GeneratedColumn<int> totalAssets = GeneratedColumn<int>(
      'total_assets', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accountPayablesMeta =
      const VerificationMeta('accountPayables');
  @override
  late final GeneratedColumn<int> accountPayables = GeneratedColumn<int>(
      'account_payables', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _shortTermDebtMeta =
      const VerificationMeta('shortTermDebt');
  @override
  late final GeneratedColumn<int> shortTermDebt = GeneratedColumn<int>(
      'short_term_debt', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _taxPayablesMeta =
      const VerificationMeta('taxPayables');
  @override
  late final GeneratedColumn<int> taxPayables = GeneratedColumn<int>(
      'tax_payables', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deferredRevenueMeta =
      const VerificationMeta('deferredRevenue');
  @override
  late final GeneratedColumn<int> deferredRevenue = GeneratedColumn<int>(
      'deferred_revenue', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherCurrentLiabilitiesMeta =
      const VerificationMeta('otherCurrentLiabilities');
  @override
  late final GeneratedColumn<int> otherCurrentLiabilities =
      GeneratedColumn<int>('other_current_liabilities', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalCurrentLiabilitiesMeta =
      const VerificationMeta('totalCurrentLiabilities');
  @override
  late final GeneratedColumn<int> totalCurrentLiabilities =
      GeneratedColumn<int>('total_current_liabilities', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _longTermDebtMeta =
      const VerificationMeta('longTermDebt');
  @override
  late final GeneratedColumn<int> longTermDebt = GeneratedColumn<int>(
      'long_term_debt', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deferredRevenueNonCurrentMeta =
      const VerificationMeta('deferredRevenueNonCurrent');
  @override
  late final GeneratedColumn<int> deferredRevenueNonCurrent =
      GeneratedColumn<int>('deferred_revenue_non_current', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deferredTaxLiabilitiesNonCurrentMeta =
      const VerificationMeta('deferredTaxLiabilitiesNonCurrent');
  @override
  late final GeneratedColumn<int> deferredTaxLiabilitiesNonCurrent =
      GeneratedColumn<int>(
          'deferred_tax_liabilities_non_current', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherNonCurrentLiabilitiesMeta =
      const VerificationMeta('otherNonCurrentLiabilities');
  @override
  late final GeneratedColumn<int> otherNonCurrentLiabilities =
      GeneratedColumn<int>('other_non_current_liabilities', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalNonCurrentLiabilitiesMeta =
      const VerificationMeta('totalNonCurrentLiabilities');
  @override
  late final GeneratedColumn<int> totalNonCurrentLiabilities =
      GeneratedColumn<int>('total_non_current_liabilities', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherLiabilitiesMeta =
      const VerificationMeta('otherLiabilities');
  @override
  late final GeneratedColumn<int> otherLiabilities = GeneratedColumn<int>(
      'other_liabilities', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _capitalLeaseObligationsMeta =
      const VerificationMeta('capitalLeaseObligations');
  @override
  late final GeneratedColumn<int> capitalLeaseObligations =
      GeneratedColumn<int>('capital_lease_obligations', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalLiabilitiesMeta =
      const VerificationMeta('totalLiabilities');
  @override
  late final GeneratedColumn<int> totalLiabilities = GeneratedColumn<int>(
      'total_liabilities', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _preferredStockMeta =
      const VerificationMeta('preferredStock');
  @override
  late final GeneratedColumn<int> preferredStock = GeneratedColumn<int>(
      'preferred_stock', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _commonStockMeta =
      const VerificationMeta('commonStock');
  @override
  late final GeneratedColumn<int> commonStock = GeneratedColumn<int>(
      'common_stock', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _retainedEarningsMeta =
      const VerificationMeta('retainedEarnings');
  @override
  late final GeneratedColumn<int> retainedEarnings = GeneratedColumn<int>(
      'retained_earnings', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accumulatedOtherComprehensiveIncomeLossMeta =
      const VerificationMeta('accumulatedOtherComprehensiveIncomeLoss');
  @override
  late final GeneratedColumn<int> accumulatedOtherComprehensiveIncomeLoss =
      GeneratedColumn<int>(
          'accumulated_other_comprehensive_income_loss', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _othertotalStockholdersEquityMeta =
      const VerificationMeta('othertotalStockholdersEquity');
  @override
  late final GeneratedColumn<int> othertotalStockholdersEquity =
      GeneratedColumn<int>('othertotal_stockholders_equity', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalStockholdersEquityMeta =
      const VerificationMeta('totalStockholdersEquity');
  @override
  late final GeneratedColumn<int> totalStockholdersEquity =
      GeneratedColumn<int>('total_stockholders_equity', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalEquityMeta =
      const VerificationMeta('totalEquity');
  @override
  late final GeneratedColumn<int> totalEquity = GeneratedColumn<int>(
      'total_equity', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalLiabilitiesAndStockholdersEquityMeta =
      const VerificationMeta('totalLiabilitiesAndStockholdersEquity');
  @override
  late final GeneratedColumn<int> totalLiabilitiesAndStockholdersEquity =
      GeneratedColumn<int>(
          'total_liabilities_and_stockholders_equity', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _minorityInterestMeta =
      const VerificationMeta('minorityInterest');
  @override
  late final GeneratedColumn<int> minorityInterest = GeneratedColumn<int>(
      'minority_interest', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalLiabilitiesAndTotalEquityMeta =
      const VerificationMeta('totalLiabilitiesAndTotalEquity');
  @override
  late final GeneratedColumn<int> totalLiabilitiesAndTotalEquity =
      GeneratedColumn<int>(
          'total_liabilities_and_total_equity', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalInvestmentsMeta =
      const VerificationMeta('totalInvestments');
  @override
  late final GeneratedColumn<int> totalInvestments = GeneratedColumn<int>(
      'total_investments', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _totalDebtMeta =
      const VerificationMeta('totalDebt');
  @override
  late final GeneratedColumn<int> totalDebt = GeneratedColumn<int>(
      'total_debt', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netDebtMeta =
      const VerificationMeta('netDebt');
  @override
  late final GeneratedColumn<int> netDebt = GeneratedColumn<int>(
      'net_debt', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _finalLinkMeta =
      const VerificationMeta('finalLink');
  @override
  late final GeneratedColumn<String> finalLink = GeneratedColumn<String>(
      'final_link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _expiresMeta =
      const VerificationMeta('expires');
  @override
  late final GeneratedColumn<DateTime> expires = GeneratedColumn<DateTime>(
      'expires', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        date,
        symbol,
        reportedCurrency,
        cik,
        fillingDate,
        acceptedDate,
        calendarYear,
        period,
        cashAndCashEquivalents,
        shortTermInvestments,
        cashAndShortTermInvestments,
        netReceivables,
        inventory,
        otherCurrentAssets,
        totalCurrentAssets,
        propertyPlantEquipmentNet,
        goodwill,
        intangibleAssets,
        goodwillAndIntangibleAssets,
        longTermInvestments,
        taxAssets,
        otherNonCurrentAssets,
        totalNonCurrentAssets,
        otherAssets,
        totalAssets,
        accountPayables,
        shortTermDebt,
        taxPayables,
        deferredRevenue,
        otherCurrentLiabilities,
        totalCurrentLiabilities,
        longTermDebt,
        deferredRevenueNonCurrent,
        deferredTaxLiabilitiesNonCurrent,
        otherNonCurrentLiabilities,
        totalNonCurrentLiabilities,
        otherLiabilities,
        capitalLeaseObligations,
        totalLiabilities,
        preferredStock,
        commonStock,
        retainedEarnings,
        accumulatedOtherComprehensiveIncomeLoss,
        othertotalStockholdersEquity,
        totalStockholdersEquity,
        totalEquity,
        totalLiabilitiesAndStockholdersEquity,
        minorityInterest,
        totalLiabilitiesAndTotalEquity,
        totalInvestments,
        totalDebt,
        netDebt,
        link,
        finalLink,
        expires
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'balance_sheet_statement_table_row_definition';
  @override
  VerificationContext validateIntegrity(
      Insertable<BalanceSheetStatementTableRow> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('reported_currency')) {
      context.handle(
          _reportedCurrencyMeta,
          reportedCurrency.isAcceptableOrUnknown(
              data['reported_currency']!, _reportedCurrencyMeta));
    }
    if (data.containsKey('cik')) {
      context.handle(
          _cikMeta, cik.isAcceptableOrUnknown(data['cik']!, _cikMeta));
    }
    if (data.containsKey('filling_date')) {
      context.handle(
          _fillingDateMeta,
          fillingDate.isAcceptableOrUnknown(
              data['filling_date']!, _fillingDateMeta));
    }
    if (data.containsKey('accepted_date')) {
      context.handle(
          _acceptedDateMeta,
          acceptedDate.isAcceptableOrUnknown(
              data['accepted_date']!, _acceptedDateMeta));
    }
    if (data.containsKey('calendar_year')) {
      context.handle(
          _calendarYearMeta,
          calendarYear.isAcceptableOrUnknown(
              data['calendar_year']!, _calendarYearMeta));
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period']!, _periodMeta));
    }
    if (data.containsKey('cash_and_cash_equivalents')) {
      context.handle(
          _cashAndCashEquivalentsMeta,
          cashAndCashEquivalents.isAcceptableOrUnknown(
              data['cash_and_cash_equivalents']!, _cashAndCashEquivalentsMeta));
    }
    if (data.containsKey('short_term_investments')) {
      context.handle(
          _shortTermInvestmentsMeta,
          shortTermInvestments.isAcceptableOrUnknown(
              data['short_term_investments']!, _shortTermInvestmentsMeta));
    }
    if (data.containsKey('cash_and_short_term_investments')) {
      context.handle(
          _cashAndShortTermInvestmentsMeta,
          cashAndShortTermInvestments.isAcceptableOrUnknown(
              data['cash_and_short_term_investments']!,
              _cashAndShortTermInvestmentsMeta));
    }
    if (data.containsKey('net_receivables')) {
      context.handle(
          _netReceivablesMeta,
          netReceivables.isAcceptableOrUnknown(
              data['net_receivables']!, _netReceivablesMeta));
    }
    if (data.containsKey('inventory')) {
      context.handle(_inventoryMeta,
          inventory.isAcceptableOrUnknown(data['inventory']!, _inventoryMeta));
    }
    if (data.containsKey('other_current_assets')) {
      context.handle(
          _otherCurrentAssetsMeta,
          otherCurrentAssets.isAcceptableOrUnknown(
              data['other_current_assets']!, _otherCurrentAssetsMeta));
    }
    if (data.containsKey('total_current_assets')) {
      context.handle(
          _totalCurrentAssetsMeta,
          totalCurrentAssets.isAcceptableOrUnknown(
              data['total_current_assets']!, _totalCurrentAssetsMeta));
    }
    if (data.containsKey('property_plant_equipment_net')) {
      context.handle(
          _propertyPlantEquipmentNetMeta,
          propertyPlantEquipmentNet.isAcceptableOrUnknown(
              data['property_plant_equipment_net']!,
              _propertyPlantEquipmentNetMeta));
    }
    if (data.containsKey('goodwill')) {
      context.handle(_goodwillMeta,
          goodwill.isAcceptableOrUnknown(data['goodwill']!, _goodwillMeta));
    }
    if (data.containsKey('intangible_assets')) {
      context.handle(
          _intangibleAssetsMeta,
          intangibleAssets.isAcceptableOrUnknown(
              data['intangible_assets']!, _intangibleAssetsMeta));
    }
    if (data.containsKey('goodwill_and_intangible_assets')) {
      context.handle(
          _goodwillAndIntangibleAssetsMeta,
          goodwillAndIntangibleAssets.isAcceptableOrUnknown(
              data['goodwill_and_intangible_assets']!,
              _goodwillAndIntangibleAssetsMeta));
    }
    if (data.containsKey('long_term_investments')) {
      context.handle(
          _longTermInvestmentsMeta,
          longTermInvestments.isAcceptableOrUnknown(
              data['long_term_investments']!, _longTermInvestmentsMeta));
    }
    if (data.containsKey('tax_assets')) {
      context.handle(_taxAssetsMeta,
          taxAssets.isAcceptableOrUnknown(data['tax_assets']!, _taxAssetsMeta));
    }
    if (data.containsKey('other_non_current_assets')) {
      context.handle(
          _otherNonCurrentAssetsMeta,
          otherNonCurrentAssets.isAcceptableOrUnknown(
              data['other_non_current_assets']!, _otherNonCurrentAssetsMeta));
    }
    if (data.containsKey('total_non_current_assets')) {
      context.handle(
          _totalNonCurrentAssetsMeta,
          totalNonCurrentAssets.isAcceptableOrUnknown(
              data['total_non_current_assets']!, _totalNonCurrentAssetsMeta));
    }
    if (data.containsKey('other_assets')) {
      context.handle(
          _otherAssetsMeta,
          otherAssets.isAcceptableOrUnknown(
              data['other_assets']!, _otherAssetsMeta));
    }
    if (data.containsKey('total_assets')) {
      context.handle(
          _totalAssetsMeta,
          totalAssets.isAcceptableOrUnknown(
              data['total_assets']!, _totalAssetsMeta));
    }
    if (data.containsKey('account_payables')) {
      context.handle(
          _accountPayablesMeta,
          accountPayables.isAcceptableOrUnknown(
              data['account_payables']!, _accountPayablesMeta));
    }
    if (data.containsKey('short_term_debt')) {
      context.handle(
          _shortTermDebtMeta,
          shortTermDebt.isAcceptableOrUnknown(
              data['short_term_debt']!, _shortTermDebtMeta));
    }
    if (data.containsKey('tax_payables')) {
      context.handle(
          _taxPayablesMeta,
          taxPayables.isAcceptableOrUnknown(
              data['tax_payables']!, _taxPayablesMeta));
    }
    if (data.containsKey('deferred_revenue')) {
      context.handle(
          _deferredRevenueMeta,
          deferredRevenue.isAcceptableOrUnknown(
              data['deferred_revenue']!, _deferredRevenueMeta));
    }
    if (data.containsKey('other_current_liabilities')) {
      context.handle(
          _otherCurrentLiabilitiesMeta,
          otherCurrentLiabilities.isAcceptableOrUnknown(
              data['other_current_liabilities']!,
              _otherCurrentLiabilitiesMeta));
    }
    if (data.containsKey('total_current_liabilities')) {
      context.handle(
          _totalCurrentLiabilitiesMeta,
          totalCurrentLiabilities.isAcceptableOrUnknown(
              data['total_current_liabilities']!,
              _totalCurrentLiabilitiesMeta));
    }
    if (data.containsKey('long_term_debt')) {
      context.handle(
          _longTermDebtMeta,
          longTermDebt.isAcceptableOrUnknown(
              data['long_term_debt']!, _longTermDebtMeta));
    }
    if (data.containsKey('deferred_revenue_non_current')) {
      context.handle(
          _deferredRevenueNonCurrentMeta,
          deferredRevenueNonCurrent.isAcceptableOrUnknown(
              data['deferred_revenue_non_current']!,
              _deferredRevenueNonCurrentMeta));
    }
    if (data.containsKey('deferred_tax_liabilities_non_current')) {
      context.handle(
          _deferredTaxLiabilitiesNonCurrentMeta,
          deferredTaxLiabilitiesNonCurrent.isAcceptableOrUnknown(
              data['deferred_tax_liabilities_non_current']!,
              _deferredTaxLiabilitiesNonCurrentMeta));
    }
    if (data.containsKey('other_non_current_liabilities')) {
      context.handle(
          _otherNonCurrentLiabilitiesMeta,
          otherNonCurrentLiabilities.isAcceptableOrUnknown(
              data['other_non_current_liabilities']!,
              _otherNonCurrentLiabilitiesMeta));
    }
    if (data.containsKey('total_non_current_liabilities')) {
      context.handle(
          _totalNonCurrentLiabilitiesMeta,
          totalNonCurrentLiabilities.isAcceptableOrUnknown(
              data['total_non_current_liabilities']!,
              _totalNonCurrentLiabilitiesMeta));
    }
    if (data.containsKey('other_liabilities')) {
      context.handle(
          _otherLiabilitiesMeta,
          otherLiabilities.isAcceptableOrUnknown(
              data['other_liabilities']!, _otherLiabilitiesMeta));
    }
    if (data.containsKey('capital_lease_obligations')) {
      context.handle(
          _capitalLeaseObligationsMeta,
          capitalLeaseObligations.isAcceptableOrUnknown(
              data['capital_lease_obligations']!,
              _capitalLeaseObligationsMeta));
    }
    if (data.containsKey('total_liabilities')) {
      context.handle(
          _totalLiabilitiesMeta,
          totalLiabilities.isAcceptableOrUnknown(
              data['total_liabilities']!, _totalLiabilitiesMeta));
    }
    if (data.containsKey('preferred_stock')) {
      context.handle(
          _preferredStockMeta,
          preferredStock.isAcceptableOrUnknown(
              data['preferred_stock']!, _preferredStockMeta));
    }
    if (data.containsKey('common_stock')) {
      context.handle(
          _commonStockMeta,
          commonStock.isAcceptableOrUnknown(
              data['common_stock']!, _commonStockMeta));
    }
    if (data.containsKey('retained_earnings')) {
      context.handle(
          _retainedEarningsMeta,
          retainedEarnings.isAcceptableOrUnknown(
              data['retained_earnings']!, _retainedEarningsMeta));
    }
    if (data.containsKey('accumulated_other_comprehensive_income_loss')) {
      context.handle(
          _accumulatedOtherComprehensiveIncomeLossMeta,
          accumulatedOtherComprehensiveIncomeLoss.isAcceptableOrUnknown(
              data['accumulated_other_comprehensive_income_loss']!,
              _accumulatedOtherComprehensiveIncomeLossMeta));
    }
    if (data.containsKey('othertotal_stockholders_equity')) {
      context.handle(
          _othertotalStockholdersEquityMeta,
          othertotalStockholdersEquity.isAcceptableOrUnknown(
              data['othertotal_stockholders_equity']!,
              _othertotalStockholdersEquityMeta));
    }
    if (data.containsKey('total_stockholders_equity')) {
      context.handle(
          _totalStockholdersEquityMeta,
          totalStockholdersEquity.isAcceptableOrUnknown(
              data['total_stockholders_equity']!,
              _totalStockholdersEquityMeta));
    }
    if (data.containsKey('total_equity')) {
      context.handle(
          _totalEquityMeta,
          totalEquity.isAcceptableOrUnknown(
              data['total_equity']!, _totalEquityMeta));
    }
    if (data.containsKey('total_liabilities_and_stockholders_equity')) {
      context.handle(
          _totalLiabilitiesAndStockholdersEquityMeta,
          totalLiabilitiesAndStockholdersEquity.isAcceptableOrUnknown(
              data['total_liabilities_and_stockholders_equity']!,
              _totalLiabilitiesAndStockholdersEquityMeta));
    }
    if (data.containsKey('minority_interest')) {
      context.handle(
          _minorityInterestMeta,
          minorityInterest.isAcceptableOrUnknown(
              data['minority_interest']!, _minorityInterestMeta));
    }
    if (data.containsKey('total_liabilities_and_total_equity')) {
      context.handle(
          _totalLiabilitiesAndTotalEquityMeta,
          totalLiabilitiesAndTotalEquity.isAcceptableOrUnknown(
              data['total_liabilities_and_total_equity']!,
              _totalLiabilitiesAndTotalEquityMeta));
    }
    if (data.containsKey('total_investments')) {
      context.handle(
          _totalInvestmentsMeta,
          totalInvestments.isAcceptableOrUnknown(
              data['total_investments']!, _totalInvestmentsMeta));
    }
    if (data.containsKey('total_debt')) {
      context.handle(_totalDebtMeta,
          totalDebt.isAcceptableOrUnknown(data['total_debt']!, _totalDebtMeta));
    }
    if (data.containsKey('net_debt')) {
      context.handle(_netDebtMeta,
          netDebt.isAcceptableOrUnknown(data['net_debt']!, _netDebtMeta));
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    }
    if (data.containsKey('final_link')) {
      context.handle(_finalLinkMeta,
          finalLink.isAcceptableOrUnknown(data['final_link']!, _finalLinkMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires']!, _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {symbol, date};
  @override
  BalanceSheetStatementTableRow map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BalanceSheetStatementTableRow(
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      reportedCurrency: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}reported_currency']),
      cik: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cik']),
      fillingDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}filling_date']),
      acceptedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}accepted_date']),
      calendarYear: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}calendar_year']),
      period: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}period']),
      cashAndCashEquivalents: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}cash_and_cash_equivalents']),
      shortTermInvestments: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}short_term_investments']),
      cashAndShortTermInvestments: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}cash_and_short_term_investments']),
      netReceivables: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}net_receivables']),
      inventory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}inventory']),
      otherCurrentAssets: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}other_current_assets']),
      totalCurrentAssets: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_current_assets']),
      propertyPlantEquipmentNet: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}property_plant_equipment_net']),
      goodwill: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}goodwill']),
      intangibleAssets: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}intangible_assets']),
      goodwillAndIntangibleAssets: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}goodwill_and_intangible_assets']),
      longTermInvestments: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}long_term_investments']),
      taxAssets: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tax_assets']),
      otherNonCurrentAssets: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}other_non_current_assets']),
      totalNonCurrentAssets: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}total_non_current_assets']),
      otherAssets: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}other_assets']),
      totalAssets: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_assets']),
      accountPayables: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}account_payables']),
      shortTermDebt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}short_term_debt']),
      taxPayables: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tax_payables']),
      deferredRevenue: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}deferred_revenue']),
      otherCurrentLiabilities: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}other_current_liabilities']),
      totalCurrentLiabilities: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}total_current_liabilities']),
      longTermDebt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}long_term_debt']),
      deferredRevenueNonCurrent: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}deferred_revenue_non_current']),
      deferredTaxLiabilitiesNonCurrent: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}deferred_tax_liabilities_non_current']),
      otherNonCurrentLiabilities: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}other_non_current_liabilities']),
      totalNonCurrentLiabilities: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}total_non_current_liabilities']),
      otherLiabilities: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}other_liabilities']),
      capitalLeaseObligations: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}capital_lease_obligations']),
      totalLiabilities: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_liabilities']),
      preferredStock: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}preferred_stock']),
      commonStock: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}common_stock']),
      retainedEarnings: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}retained_earnings']),
      accumulatedOtherComprehensiveIncomeLoss: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data[
              '${effectivePrefix}accumulated_other_comprehensive_income_loss']),
      othertotalStockholdersEquity: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}othertotal_stockholders_equity']),
      totalStockholdersEquity: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}total_stockholders_equity']),
      totalEquity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_equity']),
      totalLiabilitiesAndStockholdersEquity: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}total_liabilities_and_stockholders_equity']),
      minorityInterest: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}minority_interest']),
      totalLiabilitiesAndTotalEquity: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}total_liabilities_and_total_equity']),
      totalInvestments: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_investments']),
      totalDebt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}total_debt']),
      netDebt: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}net_debt']),
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link']),
      finalLink: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}final_link']),
      expires: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires'])!,
    );
  }

  @override
  $BalanceSheetStatementTableRowDefinitionTable createAlias(String alias) {
    return $BalanceSheetStatementTableRowDefinitionTable(
        attachedDatabase, alias);
  }
}

class BalanceSheetStatementTableRow extends DataClass
    implements Insertable<BalanceSheetStatementTableRow> {
  final String date;
  final String symbol;
  final String? reportedCurrency;
  final String? cik;
  final String? fillingDate;
  final String? acceptedDate;
  final String? calendarYear;
  final String? period;
  final int? cashAndCashEquivalents;
  final int? shortTermInvestments;
  final int? cashAndShortTermInvestments;
  final int? netReceivables;
  final int? inventory;
  final int? otherCurrentAssets;
  final int? totalCurrentAssets;
  final int? propertyPlantEquipmentNet;
  final int? goodwill;
  final int? intangibleAssets;
  final int? goodwillAndIntangibleAssets;
  final int? longTermInvestments;
  final int? taxAssets;
  final int? otherNonCurrentAssets;
  final int? totalNonCurrentAssets;
  final int? otherAssets;
  final int? totalAssets;
  final int? accountPayables;
  final int? shortTermDebt;
  final int? taxPayables;
  final int? deferredRevenue;
  final int? otherCurrentLiabilities;
  final int? totalCurrentLiabilities;
  final int? longTermDebt;
  final int? deferredRevenueNonCurrent;
  final int? deferredTaxLiabilitiesNonCurrent;
  final int? otherNonCurrentLiabilities;
  final int? totalNonCurrentLiabilities;
  final int? otherLiabilities;
  final int? capitalLeaseObligations;
  final int? totalLiabilities;
  final int? preferredStock;
  final int? commonStock;
  final int? retainedEarnings;
  final int? accumulatedOtherComprehensiveIncomeLoss;
  final int? othertotalStockholdersEquity;
  final int? totalStockholdersEquity;
  final int? totalEquity;
  final int? totalLiabilitiesAndStockholdersEquity;
  final int? minorityInterest;
  final int? totalLiabilitiesAndTotalEquity;
  final int? totalInvestments;
  final int? totalDebt;
  final int? netDebt;
  final String? link;
  final String? finalLink;
  final DateTime expires;
  const BalanceSheetStatementTableRow(
      {required this.date,
      required this.symbol,
      this.reportedCurrency,
      this.cik,
      this.fillingDate,
      this.acceptedDate,
      this.calendarYear,
      this.period,
      this.cashAndCashEquivalents,
      this.shortTermInvestments,
      this.cashAndShortTermInvestments,
      this.netReceivables,
      this.inventory,
      this.otherCurrentAssets,
      this.totalCurrentAssets,
      this.propertyPlantEquipmentNet,
      this.goodwill,
      this.intangibleAssets,
      this.goodwillAndIntangibleAssets,
      this.longTermInvestments,
      this.taxAssets,
      this.otherNonCurrentAssets,
      this.totalNonCurrentAssets,
      this.otherAssets,
      this.totalAssets,
      this.accountPayables,
      this.shortTermDebt,
      this.taxPayables,
      this.deferredRevenue,
      this.otherCurrentLiabilities,
      this.totalCurrentLiabilities,
      this.longTermDebt,
      this.deferredRevenueNonCurrent,
      this.deferredTaxLiabilitiesNonCurrent,
      this.otherNonCurrentLiabilities,
      this.totalNonCurrentLiabilities,
      this.otherLiabilities,
      this.capitalLeaseObligations,
      this.totalLiabilities,
      this.preferredStock,
      this.commonStock,
      this.retainedEarnings,
      this.accumulatedOtherComprehensiveIncomeLoss,
      this.othertotalStockholdersEquity,
      this.totalStockholdersEquity,
      this.totalEquity,
      this.totalLiabilitiesAndStockholdersEquity,
      this.minorityInterest,
      this.totalLiabilitiesAndTotalEquity,
      this.totalInvestments,
      this.totalDebt,
      this.netDebt,
      this.link,
      this.finalLink,
      required this.expires});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['date'] = Variable<String>(date);
    map['symbol'] = Variable<String>(symbol);
    if (!nullToAbsent || reportedCurrency != null) {
      map['reported_currency'] = Variable<String>(reportedCurrency);
    }
    if (!nullToAbsent || cik != null) {
      map['cik'] = Variable<String>(cik);
    }
    if (!nullToAbsent || fillingDate != null) {
      map['filling_date'] = Variable<String>(fillingDate);
    }
    if (!nullToAbsent || acceptedDate != null) {
      map['accepted_date'] = Variable<String>(acceptedDate);
    }
    if (!nullToAbsent || calendarYear != null) {
      map['calendar_year'] = Variable<String>(calendarYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<String>(period);
    }
    if (!nullToAbsent || cashAndCashEquivalents != null) {
      map['cash_and_cash_equivalents'] = Variable<int>(cashAndCashEquivalents);
    }
    if (!nullToAbsent || shortTermInvestments != null) {
      map['short_term_investments'] = Variable<int>(shortTermInvestments);
    }
    if (!nullToAbsent || cashAndShortTermInvestments != null) {
      map['cash_and_short_term_investments'] =
          Variable<int>(cashAndShortTermInvestments);
    }
    if (!nullToAbsent || netReceivables != null) {
      map['net_receivables'] = Variable<int>(netReceivables);
    }
    if (!nullToAbsent || inventory != null) {
      map['inventory'] = Variable<int>(inventory);
    }
    if (!nullToAbsent || otherCurrentAssets != null) {
      map['other_current_assets'] = Variable<int>(otherCurrentAssets);
    }
    if (!nullToAbsent || totalCurrentAssets != null) {
      map['total_current_assets'] = Variable<int>(totalCurrentAssets);
    }
    if (!nullToAbsent || propertyPlantEquipmentNet != null) {
      map['property_plant_equipment_net'] =
          Variable<int>(propertyPlantEquipmentNet);
    }
    if (!nullToAbsent || goodwill != null) {
      map['goodwill'] = Variable<int>(goodwill);
    }
    if (!nullToAbsent || intangibleAssets != null) {
      map['intangible_assets'] = Variable<int>(intangibleAssets);
    }
    if (!nullToAbsent || goodwillAndIntangibleAssets != null) {
      map['goodwill_and_intangible_assets'] =
          Variable<int>(goodwillAndIntangibleAssets);
    }
    if (!nullToAbsent || longTermInvestments != null) {
      map['long_term_investments'] = Variable<int>(longTermInvestments);
    }
    if (!nullToAbsent || taxAssets != null) {
      map['tax_assets'] = Variable<int>(taxAssets);
    }
    if (!nullToAbsent || otherNonCurrentAssets != null) {
      map['other_non_current_assets'] = Variable<int>(otherNonCurrentAssets);
    }
    if (!nullToAbsent || totalNonCurrentAssets != null) {
      map['total_non_current_assets'] = Variable<int>(totalNonCurrentAssets);
    }
    if (!nullToAbsent || otherAssets != null) {
      map['other_assets'] = Variable<int>(otherAssets);
    }
    if (!nullToAbsent || totalAssets != null) {
      map['total_assets'] = Variable<int>(totalAssets);
    }
    if (!nullToAbsent || accountPayables != null) {
      map['account_payables'] = Variable<int>(accountPayables);
    }
    if (!nullToAbsent || shortTermDebt != null) {
      map['short_term_debt'] = Variable<int>(shortTermDebt);
    }
    if (!nullToAbsent || taxPayables != null) {
      map['tax_payables'] = Variable<int>(taxPayables);
    }
    if (!nullToAbsent || deferredRevenue != null) {
      map['deferred_revenue'] = Variable<int>(deferredRevenue);
    }
    if (!nullToAbsent || otherCurrentLiabilities != null) {
      map['other_current_liabilities'] = Variable<int>(otherCurrentLiabilities);
    }
    if (!nullToAbsent || totalCurrentLiabilities != null) {
      map['total_current_liabilities'] = Variable<int>(totalCurrentLiabilities);
    }
    if (!nullToAbsent || longTermDebt != null) {
      map['long_term_debt'] = Variable<int>(longTermDebt);
    }
    if (!nullToAbsent || deferredRevenueNonCurrent != null) {
      map['deferred_revenue_non_current'] =
          Variable<int>(deferredRevenueNonCurrent);
    }
    if (!nullToAbsent || deferredTaxLiabilitiesNonCurrent != null) {
      map['deferred_tax_liabilities_non_current'] =
          Variable<int>(deferredTaxLiabilitiesNonCurrent);
    }
    if (!nullToAbsent || otherNonCurrentLiabilities != null) {
      map['other_non_current_liabilities'] =
          Variable<int>(otherNonCurrentLiabilities);
    }
    if (!nullToAbsent || totalNonCurrentLiabilities != null) {
      map['total_non_current_liabilities'] =
          Variable<int>(totalNonCurrentLiabilities);
    }
    if (!nullToAbsent || otherLiabilities != null) {
      map['other_liabilities'] = Variable<int>(otherLiabilities);
    }
    if (!nullToAbsent || capitalLeaseObligations != null) {
      map['capital_lease_obligations'] = Variable<int>(capitalLeaseObligations);
    }
    if (!nullToAbsent || totalLiabilities != null) {
      map['total_liabilities'] = Variable<int>(totalLiabilities);
    }
    if (!nullToAbsent || preferredStock != null) {
      map['preferred_stock'] = Variable<int>(preferredStock);
    }
    if (!nullToAbsent || commonStock != null) {
      map['common_stock'] = Variable<int>(commonStock);
    }
    if (!nullToAbsent || retainedEarnings != null) {
      map['retained_earnings'] = Variable<int>(retainedEarnings);
    }
    if (!nullToAbsent || accumulatedOtherComprehensiveIncomeLoss != null) {
      map['accumulated_other_comprehensive_income_loss'] =
          Variable<int>(accumulatedOtherComprehensiveIncomeLoss);
    }
    if (!nullToAbsent || othertotalStockholdersEquity != null) {
      map['othertotal_stockholders_equity'] =
          Variable<int>(othertotalStockholdersEquity);
    }
    if (!nullToAbsent || totalStockholdersEquity != null) {
      map['total_stockholders_equity'] = Variable<int>(totalStockholdersEquity);
    }
    if (!nullToAbsent || totalEquity != null) {
      map['total_equity'] = Variable<int>(totalEquity);
    }
    if (!nullToAbsent || totalLiabilitiesAndStockholdersEquity != null) {
      map['total_liabilities_and_stockholders_equity'] =
          Variable<int>(totalLiabilitiesAndStockholdersEquity);
    }
    if (!nullToAbsent || minorityInterest != null) {
      map['minority_interest'] = Variable<int>(minorityInterest);
    }
    if (!nullToAbsent || totalLiabilitiesAndTotalEquity != null) {
      map['total_liabilities_and_total_equity'] =
          Variable<int>(totalLiabilitiesAndTotalEquity);
    }
    if (!nullToAbsent || totalInvestments != null) {
      map['total_investments'] = Variable<int>(totalInvestments);
    }
    if (!nullToAbsent || totalDebt != null) {
      map['total_debt'] = Variable<int>(totalDebt);
    }
    if (!nullToAbsent || netDebt != null) {
      map['net_debt'] = Variable<int>(netDebt);
    }
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String>(link);
    }
    if (!nullToAbsent || finalLink != null) {
      map['final_link'] = Variable<String>(finalLink);
    }
    map['expires'] = Variable<DateTime>(expires);
    return map;
  }

  BalanceSheetStatementTableRowDefinitionCompanion toCompanion(
      bool nullToAbsent) {
    return BalanceSheetStatementTableRowDefinitionCompanion(
      date: Value(date),
      symbol: Value(symbol),
      reportedCurrency: reportedCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(reportedCurrency),
      cik: cik == null && nullToAbsent ? const Value.absent() : Value(cik),
      fillingDate: fillingDate == null && nullToAbsent
          ? const Value.absent()
          : Value(fillingDate),
      acceptedDate: acceptedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(acceptedDate),
      calendarYear: calendarYear == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      cashAndCashEquivalents: cashAndCashEquivalents == null && nullToAbsent
          ? const Value.absent()
          : Value(cashAndCashEquivalents),
      shortTermInvestments: shortTermInvestments == null && nullToAbsent
          ? const Value.absent()
          : Value(shortTermInvestments),
      cashAndShortTermInvestments:
          cashAndShortTermInvestments == null && nullToAbsent
              ? const Value.absent()
              : Value(cashAndShortTermInvestments),
      netReceivables: netReceivables == null && nullToAbsent
          ? const Value.absent()
          : Value(netReceivables),
      inventory: inventory == null && nullToAbsent
          ? const Value.absent()
          : Value(inventory),
      otherCurrentAssets: otherCurrentAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(otherCurrentAssets),
      totalCurrentAssets: totalCurrentAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(totalCurrentAssets),
      propertyPlantEquipmentNet:
          propertyPlantEquipmentNet == null && nullToAbsent
              ? const Value.absent()
              : Value(propertyPlantEquipmentNet),
      goodwill: goodwill == null && nullToAbsent
          ? const Value.absent()
          : Value(goodwill),
      intangibleAssets: intangibleAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(intangibleAssets),
      goodwillAndIntangibleAssets:
          goodwillAndIntangibleAssets == null && nullToAbsent
              ? const Value.absent()
              : Value(goodwillAndIntangibleAssets),
      longTermInvestments: longTermInvestments == null && nullToAbsent
          ? const Value.absent()
          : Value(longTermInvestments),
      taxAssets: taxAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(taxAssets),
      otherNonCurrentAssets: otherNonCurrentAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(otherNonCurrentAssets),
      totalNonCurrentAssets: totalNonCurrentAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(totalNonCurrentAssets),
      otherAssets: otherAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(otherAssets),
      totalAssets: totalAssets == null && nullToAbsent
          ? const Value.absent()
          : Value(totalAssets),
      accountPayables: accountPayables == null && nullToAbsent
          ? const Value.absent()
          : Value(accountPayables),
      shortTermDebt: shortTermDebt == null && nullToAbsent
          ? const Value.absent()
          : Value(shortTermDebt),
      taxPayables: taxPayables == null && nullToAbsent
          ? const Value.absent()
          : Value(taxPayables),
      deferredRevenue: deferredRevenue == null && nullToAbsent
          ? const Value.absent()
          : Value(deferredRevenue),
      otherCurrentLiabilities: otherCurrentLiabilities == null && nullToAbsent
          ? const Value.absent()
          : Value(otherCurrentLiabilities),
      totalCurrentLiabilities: totalCurrentLiabilities == null && nullToAbsent
          ? const Value.absent()
          : Value(totalCurrentLiabilities),
      longTermDebt: longTermDebt == null && nullToAbsent
          ? const Value.absent()
          : Value(longTermDebt),
      deferredRevenueNonCurrent:
          deferredRevenueNonCurrent == null && nullToAbsent
              ? const Value.absent()
              : Value(deferredRevenueNonCurrent),
      deferredTaxLiabilitiesNonCurrent:
          deferredTaxLiabilitiesNonCurrent == null && nullToAbsent
              ? const Value.absent()
              : Value(deferredTaxLiabilitiesNonCurrent),
      otherNonCurrentLiabilities:
          otherNonCurrentLiabilities == null && nullToAbsent
              ? const Value.absent()
              : Value(otherNonCurrentLiabilities),
      totalNonCurrentLiabilities:
          totalNonCurrentLiabilities == null && nullToAbsent
              ? const Value.absent()
              : Value(totalNonCurrentLiabilities),
      otherLiabilities: otherLiabilities == null && nullToAbsent
          ? const Value.absent()
          : Value(otherLiabilities),
      capitalLeaseObligations: capitalLeaseObligations == null && nullToAbsent
          ? const Value.absent()
          : Value(capitalLeaseObligations),
      totalLiabilities: totalLiabilities == null && nullToAbsent
          ? const Value.absent()
          : Value(totalLiabilities),
      preferredStock: preferredStock == null && nullToAbsent
          ? const Value.absent()
          : Value(preferredStock),
      commonStock: commonStock == null && nullToAbsent
          ? const Value.absent()
          : Value(commonStock),
      retainedEarnings: retainedEarnings == null && nullToAbsent
          ? const Value.absent()
          : Value(retainedEarnings),
      accumulatedOtherComprehensiveIncomeLoss:
          accumulatedOtherComprehensiveIncomeLoss == null && nullToAbsent
              ? const Value.absent()
              : Value(accumulatedOtherComprehensiveIncomeLoss),
      othertotalStockholdersEquity:
          othertotalStockholdersEquity == null && nullToAbsent
              ? const Value.absent()
              : Value(othertotalStockholdersEquity),
      totalStockholdersEquity: totalStockholdersEquity == null && nullToAbsent
          ? const Value.absent()
          : Value(totalStockholdersEquity),
      totalEquity: totalEquity == null && nullToAbsent
          ? const Value.absent()
          : Value(totalEquity),
      totalLiabilitiesAndStockholdersEquity:
          totalLiabilitiesAndStockholdersEquity == null && nullToAbsent
              ? const Value.absent()
              : Value(totalLiabilitiesAndStockholdersEquity),
      minorityInterest: minorityInterest == null && nullToAbsent
          ? const Value.absent()
          : Value(minorityInterest),
      totalLiabilitiesAndTotalEquity:
          totalLiabilitiesAndTotalEquity == null && nullToAbsent
              ? const Value.absent()
              : Value(totalLiabilitiesAndTotalEquity),
      totalInvestments: totalInvestments == null && nullToAbsent
          ? const Value.absent()
          : Value(totalInvestments),
      totalDebt: totalDebt == null && nullToAbsent
          ? const Value.absent()
          : Value(totalDebt),
      netDebt: netDebt == null && nullToAbsent
          ? const Value.absent()
          : Value(netDebt),
      link: link == null && nullToAbsent ? const Value.absent() : Value(link),
      finalLink: finalLink == null && nullToAbsent
          ? const Value.absent()
          : Value(finalLink),
      expires: Value(expires),
    );
  }

  factory BalanceSheetStatementTableRow.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return BalanceSheetStatementTableRow(
      date: serializer.fromJson<String>(json['date']),
      symbol: serializer.fromJson<String>(json['symbol']),
      reportedCurrency: serializer.fromJson<String?>(json['reportedCurrency']),
      cik: serializer.fromJson<String?>(json['cik']),
      fillingDate: serializer.fromJson<String?>(json['fillingDate']),
      acceptedDate: serializer.fromJson<String?>(json['acceptedDate']),
      calendarYear: serializer.fromJson<String?>(json['calendarYear']),
      period: serializer.fromJson<String?>(json['period']),
      cashAndCashEquivalents:
          serializer.fromJson<int?>(json['cashAndCashEquivalents']),
      shortTermInvestments:
          serializer.fromJson<int?>(json['shortTermInvestments']),
      cashAndShortTermInvestments:
          serializer.fromJson<int?>(json['cashAndShortTermInvestments']),
      netReceivables: serializer.fromJson<int?>(json['netReceivables']),
      inventory: serializer.fromJson<int?>(json['inventory']),
      otherCurrentAssets: serializer.fromJson<int?>(json['otherCurrentAssets']),
      totalCurrentAssets: serializer.fromJson<int?>(json['totalCurrentAssets']),
      propertyPlantEquipmentNet:
          serializer.fromJson<int?>(json['propertyPlantEquipmentNet']),
      goodwill: serializer.fromJson<int?>(json['goodwill']),
      intangibleAssets: serializer.fromJson<int?>(json['intangibleAssets']),
      goodwillAndIntangibleAssets:
          serializer.fromJson<int?>(json['goodwillAndIntangibleAssets']),
      longTermInvestments:
          serializer.fromJson<int?>(json['longTermInvestments']),
      taxAssets: serializer.fromJson<int?>(json['taxAssets']),
      otherNonCurrentAssets:
          serializer.fromJson<int?>(json['otherNonCurrentAssets']),
      totalNonCurrentAssets:
          serializer.fromJson<int?>(json['totalNonCurrentAssets']),
      otherAssets: serializer.fromJson<int?>(json['otherAssets']),
      totalAssets: serializer.fromJson<int?>(json['totalAssets']),
      accountPayables: serializer.fromJson<int?>(json['accountPayables']),
      shortTermDebt: serializer.fromJson<int?>(json['shortTermDebt']),
      taxPayables: serializer.fromJson<int?>(json['taxPayables']),
      deferredRevenue: serializer.fromJson<int?>(json['deferredRevenue']),
      otherCurrentLiabilities:
          serializer.fromJson<int?>(json['otherCurrentLiabilities']),
      totalCurrentLiabilities:
          serializer.fromJson<int?>(json['totalCurrentLiabilities']),
      longTermDebt: serializer.fromJson<int?>(json['longTermDebt']),
      deferredRevenueNonCurrent:
          serializer.fromJson<int?>(json['deferredRevenueNonCurrent']),
      deferredTaxLiabilitiesNonCurrent:
          serializer.fromJson<int?>(json['deferredTaxLiabilitiesNonCurrent']),
      otherNonCurrentLiabilities:
          serializer.fromJson<int?>(json['otherNonCurrentLiabilities']),
      totalNonCurrentLiabilities:
          serializer.fromJson<int?>(json['totalNonCurrentLiabilities']),
      otherLiabilities: serializer.fromJson<int?>(json['otherLiabilities']),
      capitalLeaseObligations:
          serializer.fromJson<int?>(json['capitalLeaseObligations']),
      totalLiabilities: serializer.fromJson<int?>(json['totalLiabilities']),
      preferredStock: serializer.fromJson<int?>(json['preferredStock']),
      commonStock: serializer.fromJson<int?>(json['commonStock']),
      retainedEarnings: serializer.fromJson<int?>(json['retainedEarnings']),
      accumulatedOtherComprehensiveIncomeLoss: serializer
          .fromJson<int?>(json['accumulatedOtherComprehensiveIncomeLoss']),
      othertotalStockholdersEquity:
          serializer.fromJson<int?>(json['othertotalStockholdersEquity']),
      totalStockholdersEquity:
          serializer.fromJson<int?>(json['totalStockholdersEquity']),
      totalEquity: serializer.fromJson<int?>(json['totalEquity']),
      totalLiabilitiesAndStockholdersEquity: serializer
          .fromJson<int?>(json['totalLiabilitiesAndStockholdersEquity']),
      minorityInterest: serializer.fromJson<int?>(json['minorityInterest']),
      totalLiabilitiesAndTotalEquity:
          serializer.fromJson<int?>(json['totalLiabilitiesAndTotalEquity']),
      totalInvestments: serializer.fromJson<int?>(json['totalInvestments']),
      totalDebt: serializer.fromJson<int?>(json['totalDebt']),
      netDebt: serializer.fromJson<int?>(json['netDebt']),
      link: serializer.fromJson<String?>(json['link']),
      finalLink: serializer.fromJson<String?>(json['finalLink']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<String>(date),
      'symbol': serializer.toJson<String>(symbol),
      'reportedCurrency': serializer.toJson<String?>(reportedCurrency),
      'cik': serializer.toJson<String?>(cik),
      'fillingDate': serializer.toJson<String?>(fillingDate),
      'acceptedDate': serializer.toJson<String?>(acceptedDate),
      'calendarYear': serializer.toJson<String?>(calendarYear),
      'period': serializer.toJson<String?>(period),
      'cashAndCashEquivalents': serializer.toJson<int?>(cashAndCashEquivalents),
      'shortTermInvestments': serializer.toJson<int?>(shortTermInvestments),
      'cashAndShortTermInvestments':
          serializer.toJson<int?>(cashAndShortTermInvestments),
      'netReceivables': serializer.toJson<int?>(netReceivables),
      'inventory': serializer.toJson<int?>(inventory),
      'otherCurrentAssets': serializer.toJson<int?>(otherCurrentAssets),
      'totalCurrentAssets': serializer.toJson<int?>(totalCurrentAssets),
      'propertyPlantEquipmentNet':
          serializer.toJson<int?>(propertyPlantEquipmentNet),
      'goodwill': serializer.toJson<int?>(goodwill),
      'intangibleAssets': serializer.toJson<int?>(intangibleAssets),
      'goodwillAndIntangibleAssets':
          serializer.toJson<int?>(goodwillAndIntangibleAssets),
      'longTermInvestments': serializer.toJson<int?>(longTermInvestments),
      'taxAssets': serializer.toJson<int?>(taxAssets),
      'otherNonCurrentAssets': serializer.toJson<int?>(otherNonCurrentAssets),
      'totalNonCurrentAssets': serializer.toJson<int?>(totalNonCurrentAssets),
      'otherAssets': serializer.toJson<int?>(otherAssets),
      'totalAssets': serializer.toJson<int?>(totalAssets),
      'accountPayables': serializer.toJson<int?>(accountPayables),
      'shortTermDebt': serializer.toJson<int?>(shortTermDebt),
      'taxPayables': serializer.toJson<int?>(taxPayables),
      'deferredRevenue': serializer.toJson<int?>(deferredRevenue),
      'otherCurrentLiabilities':
          serializer.toJson<int?>(otherCurrentLiabilities),
      'totalCurrentLiabilities':
          serializer.toJson<int?>(totalCurrentLiabilities),
      'longTermDebt': serializer.toJson<int?>(longTermDebt),
      'deferredRevenueNonCurrent':
          serializer.toJson<int?>(deferredRevenueNonCurrent),
      'deferredTaxLiabilitiesNonCurrent':
          serializer.toJson<int?>(deferredTaxLiabilitiesNonCurrent),
      'otherNonCurrentLiabilities':
          serializer.toJson<int?>(otherNonCurrentLiabilities),
      'totalNonCurrentLiabilities':
          serializer.toJson<int?>(totalNonCurrentLiabilities),
      'otherLiabilities': serializer.toJson<int?>(otherLiabilities),
      'capitalLeaseObligations':
          serializer.toJson<int?>(capitalLeaseObligations),
      'totalLiabilities': serializer.toJson<int?>(totalLiabilities),
      'preferredStock': serializer.toJson<int?>(preferredStock),
      'commonStock': serializer.toJson<int?>(commonStock),
      'retainedEarnings': serializer.toJson<int?>(retainedEarnings),
      'accumulatedOtherComprehensiveIncomeLoss':
          serializer.toJson<int?>(accumulatedOtherComprehensiveIncomeLoss),
      'othertotalStockholdersEquity':
          serializer.toJson<int?>(othertotalStockholdersEquity),
      'totalStockholdersEquity':
          serializer.toJson<int?>(totalStockholdersEquity),
      'totalEquity': serializer.toJson<int?>(totalEquity),
      'totalLiabilitiesAndStockholdersEquity':
          serializer.toJson<int?>(totalLiabilitiesAndStockholdersEquity),
      'minorityInterest': serializer.toJson<int?>(minorityInterest),
      'totalLiabilitiesAndTotalEquity':
          serializer.toJson<int?>(totalLiabilitiesAndTotalEquity),
      'totalInvestments': serializer.toJson<int?>(totalInvestments),
      'totalDebt': serializer.toJson<int?>(totalDebt),
      'netDebt': serializer.toJson<int?>(netDebt),
      'link': serializer.toJson<String?>(link),
      'finalLink': serializer.toJson<String?>(finalLink),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  BalanceSheetStatementTableRow copyWith(
          {String? date,
          String? symbol,
          Value<String?> reportedCurrency = const Value.absent(),
          Value<String?> cik = const Value.absent(),
          Value<String?> fillingDate = const Value.absent(),
          Value<String?> acceptedDate = const Value.absent(),
          Value<String?> calendarYear = const Value.absent(),
          Value<String?> period = const Value.absent(),
          Value<int?> cashAndCashEquivalents = const Value.absent(),
          Value<int?> shortTermInvestments = const Value.absent(),
          Value<int?> cashAndShortTermInvestments = const Value.absent(),
          Value<int?> netReceivables = const Value.absent(),
          Value<int?> inventory = const Value.absent(),
          Value<int?> otherCurrentAssets = const Value.absent(),
          Value<int?> totalCurrentAssets = const Value.absent(),
          Value<int?> propertyPlantEquipmentNet = const Value.absent(),
          Value<int?> goodwill = const Value.absent(),
          Value<int?> intangibleAssets = const Value.absent(),
          Value<int?> goodwillAndIntangibleAssets = const Value.absent(),
          Value<int?> longTermInvestments = const Value.absent(),
          Value<int?> taxAssets = const Value.absent(),
          Value<int?> otherNonCurrentAssets = const Value.absent(),
          Value<int?> totalNonCurrentAssets = const Value.absent(),
          Value<int?> otherAssets = const Value.absent(),
          Value<int?> totalAssets = const Value.absent(),
          Value<int?> accountPayables = const Value.absent(),
          Value<int?> shortTermDebt = const Value.absent(),
          Value<int?> taxPayables = const Value.absent(),
          Value<int?> deferredRevenue = const Value.absent(),
          Value<int?> otherCurrentLiabilities = const Value.absent(),
          Value<int?> totalCurrentLiabilities = const Value.absent(),
          Value<int?> longTermDebt = const Value.absent(),
          Value<int?> deferredRevenueNonCurrent = const Value.absent(),
          Value<int?> deferredTaxLiabilitiesNonCurrent = const Value.absent(),
          Value<int?> otherNonCurrentLiabilities = const Value.absent(),
          Value<int?> totalNonCurrentLiabilities = const Value.absent(),
          Value<int?> otherLiabilities = const Value.absent(),
          Value<int?> capitalLeaseObligations = const Value.absent(),
          Value<int?> totalLiabilities = const Value.absent(),
          Value<int?> preferredStock = const Value.absent(),
          Value<int?> commonStock = const Value.absent(),
          Value<int?> retainedEarnings = const Value.absent(),
          Value<int?> accumulatedOtherComprehensiveIncomeLoss =
              const Value.absent(),
          Value<int?> othertotalStockholdersEquity = const Value.absent(),
          Value<int?> totalStockholdersEquity = const Value.absent(),
          Value<int?> totalEquity = const Value.absent(),
          Value<int?> totalLiabilitiesAndStockholdersEquity =
              const Value.absent(),
          Value<int?> minorityInterest = const Value.absent(),
          Value<int?> totalLiabilitiesAndTotalEquity = const Value.absent(),
          Value<int?> totalInvestments = const Value.absent(),
          Value<int?> totalDebt = const Value.absent(),
          Value<int?> netDebt = const Value.absent(),
          Value<String?> link = const Value.absent(),
          Value<String?> finalLink = const Value.absent(),
          DateTime? expires}) =>
      BalanceSheetStatementTableRow(
        date: date ?? this.date,
        symbol: symbol ?? this.symbol,
        reportedCurrency: reportedCurrency.present
            ? reportedCurrency.value
            : this.reportedCurrency,
        cik: cik.present ? cik.value : this.cik,
        fillingDate: fillingDate.present ? fillingDate.value : this.fillingDate,
        acceptedDate:
            acceptedDate.present ? acceptedDate.value : this.acceptedDate,
        calendarYear:
            calendarYear.present ? calendarYear.value : this.calendarYear,
        period: period.present ? period.value : this.period,
        cashAndCashEquivalents: cashAndCashEquivalents.present
            ? cashAndCashEquivalents.value
            : this.cashAndCashEquivalents,
        shortTermInvestments: shortTermInvestments.present
            ? shortTermInvestments.value
            : this.shortTermInvestments,
        cashAndShortTermInvestments: cashAndShortTermInvestments.present
            ? cashAndShortTermInvestments.value
            : this.cashAndShortTermInvestments,
        netReceivables:
            netReceivables.present ? netReceivables.value : this.netReceivables,
        inventory: inventory.present ? inventory.value : this.inventory,
        otherCurrentAssets: otherCurrentAssets.present
            ? otherCurrentAssets.value
            : this.otherCurrentAssets,
        totalCurrentAssets: totalCurrentAssets.present
            ? totalCurrentAssets.value
            : this.totalCurrentAssets,
        propertyPlantEquipmentNet: propertyPlantEquipmentNet.present
            ? propertyPlantEquipmentNet.value
            : this.propertyPlantEquipmentNet,
        goodwill: goodwill.present ? goodwill.value : this.goodwill,
        intangibleAssets: intangibleAssets.present
            ? intangibleAssets.value
            : this.intangibleAssets,
        goodwillAndIntangibleAssets: goodwillAndIntangibleAssets.present
            ? goodwillAndIntangibleAssets.value
            : this.goodwillAndIntangibleAssets,
        longTermInvestments: longTermInvestments.present
            ? longTermInvestments.value
            : this.longTermInvestments,
        taxAssets: taxAssets.present ? taxAssets.value : this.taxAssets,
        otherNonCurrentAssets: otherNonCurrentAssets.present
            ? otherNonCurrentAssets.value
            : this.otherNonCurrentAssets,
        totalNonCurrentAssets: totalNonCurrentAssets.present
            ? totalNonCurrentAssets.value
            : this.totalNonCurrentAssets,
        otherAssets: otherAssets.present ? otherAssets.value : this.otherAssets,
        totalAssets: totalAssets.present ? totalAssets.value : this.totalAssets,
        accountPayables: accountPayables.present
            ? accountPayables.value
            : this.accountPayables,
        shortTermDebt:
            shortTermDebt.present ? shortTermDebt.value : this.shortTermDebt,
        taxPayables: taxPayables.present ? taxPayables.value : this.taxPayables,
        deferredRevenue: deferredRevenue.present
            ? deferredRevenue.value
            : this.deferredRevenue,
        otherCurrentLiabilities: otherCurrentLiabilities.present
            ? otherCurrentLiabilities.value
            : this.otherCurrentLiabilities,
        totalCurrentLiabilities: totalCurrentLiabilities.present
            ? totalCurrentLiabilities.value
            : this.totalCurrentLiabilities,
        longTermDebt:
            longTermDebt.present ? longTermDebt.value : this.longTermDebt,
        deferredRevenueNonCurrent: deferredRevenueNonCurrent.present
            ? deferredRevenueNonCurrent.value
            : this.deferredRevenueNonCurrent,
        deferredTaxLiabilitiesNonCurrent:
            deferredTaxLiabilitiesNonCurrent.present
                ? deferredTaxLiabilitiesNonCurrent.value
                : this.deferredTaxLiabilitiesNonCurrent,
        otherNonCurrentLiabilities: otherNonCurrentLiabilities.present
            ? otherNonCurrentLiabilities.value
            : this.otherNonCurrentLiabilities,
        totalNonCurrentLiabilities: totalNonCurrentLiabilities.present
            ? totalNonCurrentLiabilities.value
            : this.totalNonCurrentLiabilities,
        otherLiabilities: otherLiabilities.present
            ? otherLiabilities.value
            : this.otherLiabilities,
        capitalLeaseObligations: capitalLeaseObligations.present
            ? capitalLeaseObligations.value
            : this.capitalLeaseObligations,
        totalLiabilities: totalLiabilities.present
            ? totalLiabilities.value
            : this.totalLiabilities,
        preferredStock:
            preferredStock.present ? preferredStock.value : this.preferredStock,
        commonStock: commonStock.present ? commonStock.value : this.commonStock,
        retainedEarnings: retainedEarnings.present
            ? retainedEarnings.value
            : this.retainedEarnings,
        accumulatedOtherComprehensiveIncomeLoss:
            accumulatedOtherComprehensiveIncomeLoss.present
                ? accumulatedOtherComprehensiveIncomeLoss.value
                : this.accumulatedOtherComprehensiveIncomeLoss,
        othertotalStockholdersEquity: othertotalStockholdersEquity.present
            ? othertotalStockholdersEquity.value
            : this.othertotalStockholdersEquity,
        totalStockholdersEquity: totalStockholdersEquity.present
            ? totalStockholdersEquity.value
            : this.totalStockholdersEquity,
        totalEquity: totalEquity.present ? totalEquity.value : this.totalEquity,
        totalLiabilitiesAndStockholdersEquity:
            totalLiabilitiesAndStockholdersEquity.present
                ? totalLiabilitiesAndStockholdersEquity.value
                : this.totalLiabilitiesAndStockholdersEquity,
        minorityInterest: minorityInterest.present
            ? minorityInterest.value
            : this.minorityInterest,
        totalLiabilitiesAndTotalEquity: totalLiabilitiesAndTotalEquity.present
            ? totalLiabilitiesAndTotalEquity.value
            : this.totalLiabilitiesAndTotalEquity,
        totalInvestments: totalInvestments.present
            ? totalInvestments.value
            : this.totalInvestments,
        totalDebt: totalDebt.present ? totalDebt.value : this.totalDebt,
        netDebt: netDebt.present ? netDebt.value : this.netDebt,
        link: link.present ? link.value : this.link,
        finalLink: finalLink.present ? finalLink.value : this.finalLink,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('BalanceSheetStatementTableRow(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('reportedCurrency: $reportedCurrency, ')
          ..write('cik: $cik, ')
          ..write('fillingDate: $fillingDate, ')
          ..write('acceptedDate: $acceptedDate, ')
          ..write('calendarYear: $calendarYear, ')
          ..write('period: $period, ')
          ..write('cashAndCashEquivalents: $cashAndCashEquivalents, ')
          ..write('shortTermInvestments: $shortTermInvestments, ')
          ..write('cashAndShortTermInvestments: $cashAndShortTermInvestments, ')
          ..write('netReceivables: $netReceivables, ')
          ..write('inventory: $inventory, ')
          ..write('otherCurrentAssets: $otherCurrentAssets, ')
          ..write('totalCurrentAssets: $totalCurrentAssets, ')
          ..write('propertyPlantEquipmentNet: $propertyPlantEquipmentNet, ')
          ..write('goodwill: $goodwill, ')
          ..write('intangibleAssets: $intangibleAssets, ')
          ..write('goodwillAndIntangibleAssets: $goodwillAndIntangibleAssets, ')
          ..write('longTermInvestments: $longTermInvestments, ')
          ..write('taxAssets: $taxAssets, ')
          ..write('otherNonCurrentAssets: $otherNonCurrentAssets, ')
          ..write('totalNonCurrentAssets: $totalNonCurrentAssets, ')
          ..write('otherAssets: $otherAssets, ')
          ..write('totalAssets: $totalAssets, ')
          ..write('accountPayables: $accountPayables, ')
          ..write('shortTermDebt: $shortTermDebt, ')
          ..write('taxPayables: $taxPayables, ')
          ..write('deferredRevenue: $deferredRevenue, ')
          ..write('otherCurrentLiabilities: $otherCurrentLiabilities, ')
          ..write('totalCurrentLiabilities: $totalCurrentLiabilities, ')
          ..write('longTermDebt: $longTermDebt, ')
          ..write('deferredRevenueNonCurrent: $deferredRevenueNonCurrent, ')
          ..write(
              'deferredTaxLiabilitiesNonCurrent: $deferredTaxLiabilitiesNonCurrent, ')
          ..write('otherNonCurrentLiabilities: $otherNonCurrentLiabilities, ')
          ..write('totalNonCurrentLiabilities: $totalNonCurrentLiabilities, ')
          ..write('otherLiabilities: $otherLiabilities, ')
          ..write('capitalLeaseObligations: $capitalLeaseObligations, ')
          ..write('totalLiabilities: $totalLiabilities, ')
          ..write('preferredStock: $preferredStock, ')
          ..write('commonStock: $commonStock, ')
          ..write('retainedEarnings: $retainedEarnings, ')
          ..write(
              'accumulatedOtherComprehensiveIncomeLoss: $accumulatedOtherComprehensiveIncomeLoss, ')
          ..write(
              'othertotalStockholdersEquity: $othertotalStockholdersEquity, ')
          ..write('totalStockholdersEquity: $totalStockholdersEquity, ')
          ..write('totalEquity: $totalEquity, ')
          ..write(
              'totalLiabilitiesAndStockholdersEquity: $totalLiabilitiesAndStockholdersEquity, ')
          ..write('minorityInterest: $minorityInterest, ')
          ..write(
              'totalLiabilitiesAndTotalEquity: $totalLiabilitiesAndTotalEquity, ')
          ..write('totalInvestments: $totalInvestments, ')
          ..write('totalDebt: $totalDebt, ')
          ..write('netDebt: $netDebt, ')
          ..write('link: $link, ')
          ..write('finalLink: $finalLink, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        date,
        symbol,
        reportedCurrency,
        cik,
        fillingDate,
        acceptedDate,
        calendarYear,
        period,
        cashAndCashEquivalents,
        shortTermInvestments,
        cashAndShortTermInvestments,
        netReceivables,
        inventory,
        otherCurrentAssets,
        totalCurrentAssets,
        propertyPlantEquipmentNet,
        goodwill,
        intangibleAssets,
        goodwillAndIntangibleAssets,
        longTermInvestments,
        taxAssets,
        otherNonCurrentAssets,
        totalNonCurrentAssets,
        otherAssets,
        totalAssets,
        accountPayables,
        shortTermDebt,
        taxPayables,
        deferredRevenue,
        otherCurrentLiabilities,
        totalCurrentLiabilities,
        longTermDebt,
        deferredRevenueNonCurrent,
        deferredTaxLiabilitiesNonCurrent,
        otherNonCurrentLiabilities,
        totalNonCurrentLiabilities,
        otherLiabilities,
        capitalLeaseObligations,
        totalLiabilities,
        preferredStock,
        commonStock,
        retainedEarnings,
        accumulatedOtherComprehensiveIncomeLoss,
        othertotalStockholdersEquity,
        totalStockholdersEquity,
        totalEquity,
        totalLiabilitiesAndStockholdersEquity,
        minorityInterest,
        totalLiabilitiesAndTotalEquity,
        totalInvestments,
        totalDebt,
        netDebt,
        link,
        finalLink,
        expires
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is BalanceSheetStatementTableRow &&
          other.date == this.date &&
          other.symbol == this.symbol &&
          other.reportedCurrency == this.reportedCurrency &&
          other.cik == this.cik &&
          other.fillingDate == this.fillingDate &&
          other.acceptedDate == this.acceptedDate &&
          other.calendarYear == this.calendarYear &&
          other.period == this.period &&
          other.cashAndCashEquivalents == this.cashAndCashEquivalents &&
          other.shortTermInvestments == this.shortTermInvestments &&
          other.cashAndShortTermInvestments ==
              this.cashAndShortTermInvestments &&
          other.netReceivables == this.netReceivables &&
          other.inventory == this.inventory &&
          other.otherCurrentAssets == this.otherCurrentAssets &&
          other.totalCurrentAssets == this.totalCurrentAssets &&
          other.propertyPlantEquipmentNet == this.propertyPlantEquipmentNet &&
          other.goodwill == this.goodwill &&
          other.intangibleAssets == this.intangibleAssets &&
          other.goodwillAndIntangibleAssets ==
              this.goodwillAndIntangibleAssets &&
          other.longTermInvestments == this.longTermInvestments &&
          other.taxAssets == this.taxAssets &&
          other.otherNonCurrentAssets == this.otherNonCurrentAssets &&
          other.totalNonCurrentAssets == this.totalNonCurrentAssets &&
          other.otherAssets == this.otherAssets &&
          other.totalAssets == this.totalAssets &&
          other.accountPayables == this.accountPayables &&
          other.shortTermDebt == this.shortTermDebt &&
          other.taxPayables == this.taxPayables &&
          other.deferredRevenue == this.deferredRevenue &&
          other.otherCurrentLiabilities == this.otherCurrentLiabilities &&
          other.totalCurrentLiabilities == this.totalCurrentLiabilities &&
          other.longTermDebt == this.longTermDebt &&
          other.deferredRevenueNonCurrent == this.deferredRevenueNonCurrent &&
          other.deferredTaxLiabilitiesNonCurrent ==
              this.deferredTaxLiabilitiesNonCurrent &&
          other.otherNonCurrentLiabilities == this.otherNonCurrentLiabilities &&
          other.totalNonCurrentLiabilities == this.totalNonCurrentLiabilities &&
          other.otherLiabilities == this.otherLiabilities &&
          other.capitalLeaseObligations == this.capitalLeaseObligations &&
          other.totalLiabilities == this.totalLiabilities &&
          other.preferredStock == this.preferredStock &&
          other.commonStock == this.commonStock &&
          other.retainedEarnings == this.retainedEarnings &&
          other.accumulatedOtherComprehensiveIncomeLoss ==
              this.accumulatedOtherComprehensiveIncomeLoss &&
          other.othertotalStockholdersEquity ==
              this.othertotalStockholdersEquity &&
          other.totalStockholdersEquity == this.totalStockholdersEquity &&
          other.totalEquity == this.totalEquity &&
          other.totalLiabilitiesAndStockholdersEquity ==
              this.totalLiabilitiesAndStockholdersEquity &&
          other.minorityInterest == this.minorityInterest &&
          other.totalLiabilitiesAndTotalEquity ==
              this.totalLiabilitiesAndTotalEquity &&
          other.totalInvestments == this.totalInvestments &&
          other.totalDebt == this.totalDebt &&
          other.netDebt == this.netDebt &&
          other.link == this.link &&
          other.finalLink == this.finalLink &&
          other.expires == this.expires);
}

class BalanceSheetStatementTableRowDefinitionCompanion
    extends UpdateCompanion<BalanceSheetStatementTableRow> {
  final Value<String> date;
  final Value<String> symbol;
  final Value<String?> reportedCurrency;
  final Value<String?> cik;
  final Value<String?> fillingDate;
  final Value<String?> acceptedDate;
  final Value<String?> calendarYear;
  final Value<String?> period;
  final Value<int?> cashAndCashEquivalents;
  final Value<int?> shortTermInvestments;
  final Value<int?> cashAndShortTermInvestments;
  final Value<int?> netReceivables;
  final Value<int?> inventory;
  final Value<int?> otherCurrentAssets;
  final Value<int?> totalCurrentAssets;
  final Value<int?> propertyPlantEquipmentNet;
  final Value<int?> goodwill;
  final Value<int?> intangibleAssets;
  final Value<int?> goodwillAndIntangibleAssets;
  final Value<int?> longTermInvestments;
  final Value<int?> taxAssets;
  final Value<int?> otherNonCurrentAssets;
  final Value<int?> totalNonCurrentAssets;
  final Value<int?> otherAssets;
  final Value<int?> totalAssets;
  final Value<int?> accountPayables;
  final Value<int?> shortTermDebt;
  final Value<int?> taxPayables;
  final Value<int?> deferredRevenue;
  final Value<int?> otherCurrentLiabilities;
  final Value<int?> totalCurrentLiabilities;
  final Value<int?> longTermDebt;
  final Value<int?> deferredRevenueNonCurrent;
  final Value<int?> deferredTaxLiabilitiesNonCurrent;
  final Value<int?> otherNonCurrentLiabilities;
  final Value<int?> totalNonCurrentLiabilities;
  final Value<int?> otherLiabilities;
  final Value<int?> capitalLeaseObligations;
  final Value<int?> totalLiabilities;
  final Value<int?> preferredStock;
  final Value<int?> commonStock;
  final Value<int?> retainedEarnings;
  final Value<int?> accumulatedOtherComprehensiveIncomeLoss;
  final Value<int?> othertotalStockholdersEquity;
  final Value<int?> totalStockholdersEquity;
  final Value<int?> totalEquity;
  final Value<int?> totalLiabilitiesAndStockholdersEquity;
  final Value<int?> minorityInterest;
  final Value<int?> totalLiabilitiesAndTotalEquity;
  final Value<int?> totalInvestments;
  final Value<int?> totalDebt;
  final Value<int?> netDebt;
  final Value<String?> link;
  final Value<String?> finalLink;
  final Value<DateTime> expires;
  final Value<int> rowid;
  const BalanceSheetStatementTableRowDefinitionCompanion({
    this.date = const Value.absent(),
    this.symbol = const Value.absent(),
    this.reportedCurrency = const Value.absent(),
    this.cik = const Value.absent(),
    this.fillingDate = const Value.absent(),
    this.acceptedDate = const Value.absent(),
    this.calendarYear = const Value.absent(),
    this.period = const Value.absent(),
    this.cashAndCashEquivalents = const Value.absent(),
    this.shortTermInvestments = const Value.absent(),
    this.cashAndShortTermInvestments = const Value.absent(),
    this.netReceivables = const Value.absent(),
    this.inventory = const Value.absent(),
    this.otherCurrentAssets = const Value.absent(),
    this.totalCurrentAssets = const Value.absent(),
    this.propertyPlantEquipmentNet = const Value.absent(),
    this.goodwill = const Value.absent(),
    this.intangibleAssets = const Value.absent(),
    this.goodwillAndIntangibleAssets = const Value.absent(),
    this.longTermInvestments = const Value.absent(),
    this.taxAssets = const Value.absent(),
    this.otherNonCurrentAssets = const Value.absent(),
    this.totalNonCurrentAssets = const Value.absent(),
    this.otherAssets = const Value.absent(),
    this.totalAssets = const Value.absent(),
    this.accountPayables = const Value.absent(),
    this.shortTermDebt = const Value.absent(),
    this.taxPayables = const Value.absent(),
    this.deferredRevenue = const Value.absent(),
    this.otherCurrentLiabilities = const Value.absent(),
    this.totalCurrentLiabilities = const Value.absent(),
    this.longTermDebt = const Value.absent(),
    this.deferredRevenueNonCurrent = const Value.absent(),
    this.deferredTaxLiabilitiesNonCurrent = const Value.absent(),
    this.otherNonCurrentLiabilities = const Value.absent(),
    this.totalNonCurrentLiabilities = const Value.absent(),
    this.otherLiabilities = const Value.absent(),
    this.capitalLeaseObligations = const Value.absent(),
    this.totalLiabilities = const Value.absent(),
    this.preferredStock = const Value.absent(),
    this.commonStock = const Value.absent(),
    this.retainedEarnings = const Value.absent(),
    this.accumulatedOtherComprehensiveIncomeLoss = const Value.absent(),
    this.othertotalStockholdersEquity = const Value.absent(),
    this.totalStockholdersEquity = const Value.absent(),
    this.totalEquity = const Value.absent(),
    this.totalLiabilitiesAndStockholdersEquity = const Value.absent(),
    this.minorityInterest = const Value.absent(),
    this.totalLiabilitiesAndTotalEquity = const Value.absent(),
    this.totalInvestments = const Value.absent(),
    this.totalDebt = const Value.absent(),
    this.netDebt = const Value.absent(),
    this.link = const Value.absent(),
    this.finalLink = const Value.absent(),
    this.expires = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BalanceSheetStatementTableRowDefinitionCompanion.insert({
    required String date,
    required String symbol,
    this.reportedCurrency = const Value.absent(),
    this.cik = const Value.absent(),
    this.fillingDate = const Value.absent(),
    this.acceptedDate = const Value.absent(),
    this.calendarYear = const Value.absent(),
    this.period = const Value.absent(),
    this.cashAndCashEquivalents = const Value.absent(),
    this.shortTermInvestments = const Value.absent(),
    this.cashAndShortTermInvestments = const Value.absent(),
    this.netReceivables = const Value.absent(),
    this.inventory = const Value.absent(),
    this.otherCurrentAssets = const Value.absent(),
    this.totalCurrentAssets = const Value.absent(),
    this.propertyPlantEquipmentNet = const Value.absent(),
    this.goodwill = const Value.absent(),
    this.intangibleAssets = const Value.absent(),
    this.goodwillAndIntangibleAssets = const Value.absent(),
    this.longTermInvestments = const Value.absent(),
    this.taxAssets = const Value.absent(),
    this.otherNonCurrentAssets = const Value.absent(),
    this.totalNonCurrentAssets = const Value.absent(),
    this.otherAssets = const Value.absent(),
    this.totalAssets = const Value.absent(),
    this.accountPayables = const Value.absent(),
    this.shortTermDebt = const Value.absent(),
    this.taxPayables = const Value.absent(),
    this.deferredRevenue = const Value.absent(),
    this.otherCurrentLiabilities = const Value.absent(),
    this.totalCurrentLiabilities = const Value.absent(),
    this.longTermDebt = const Value.absent(),
    this.deferredRevenueNonCurrent = const Value.absent(),
    this.deferredTaxLiabilitiesNonCurrent = const Value.absent(),
    this.otherNonCurrentLiabilities = const Value.absent(),
    this.totalNonCurrentLiabilities = const Value.absent(),
    this.otherLiabilities = const Value.absent(),
    this.capitalLeaseObligations = const Value.absent(),
    this.totalLiabilities = const Value.absent(),
    this.preferredStock = const Value.absent(),
    this.commonStock = const Value.absent(),
    this.retainedEarnings = const Value.absent(),
    this.accumulatedOtherComprehensiveIncomeLoss = const Value.absent(),
    this.othertotalStockholdersEquity = const Value.absent(),
    this.totalStockholdersEquity = const Value.absent(),
    this.totalEquity = const Value.absent(),
    this.totalLiabilitiesAndStockholdersEquity = const Value.absent(),
    this.minorityInterest = const Value.absent(),
    this.totalLiabilitiesAndTotalEquity = const Value.absent(),
    this.totalInvestments = const Value.absent(),
    this.totalDebt = const Value.absent(),
    this.netDebt = const Value.absent(),
    this.link = const Value.absent(),
    this.finalLink = const Value.absent(),
    required DateTime expires,
    this.rowid = const Value.absent(),
  })  : date = Value(date),
        symbol = Value(symbol),
        expires = Value(expires);
  static Insertable<BalanceSheetStatementTableRow> custom({
    Expression<String>? date,
    Expression<String>? symbol,
    Expression<String>? reportedCurrency,
    Expression<String>? cik,
    Expression<String>? fillingDate,
    Expression<String>? acceptedDate,
    Expression<String>? calendarYear,
    Expression<String>? period,
    Expression<int>? cashAndCashEquivalents,
    Expression<int>? shortTermInvestments,
    Expression<int>? cashAndShortTermInvestments,
    Expression<int>? netReceivables,
    Expression<int>? inventory,
    Expression<int>? otherCurrentAssets,
    Expression<int>? totalCurrentAssets,
    Expression<int>? propertyPlantEquipmentNet,
    Expression<int>? goodwill,
    Expression<int>? intangibleAssets,
    Expression<int>? goodwillAndIntangibleAssets,
    Expression<int>? longTermInvestments,
    Expression<int>? taxAssets,
    Expression<int>? otherNonCurrentAssets,
    Expression<int>? totalNonCurrentAssets,
    Expression<int>? otherAssets,
    Expression<int>? totalAssets,
    Expression<int>? accountPayables,
    Expression<int>? shortTermDebt,
    Expression<int>? taxPayables,
    Expression<int>? deferredRevenue,
    Expression<int>? otherCurrentLiabilities,
    Expression<int>? totalCurrentLiabilities,
    Expression<int>? longTermDebt,
    Expression<int>? deferredRevenueNonCurrent,
    Expression<int>? deferredTaxLiabilitiesNonCurrent,
    Expression<int>? otherNonCurrentLiabilities,
    Expression<int>? totalNonCurrentLiabilities,
    Expression<int>? otherLiabilities,
    Expression<int>? capitalLeaseObligations,
    Expression<int>? totalLiabilities,
    Expression<int>? preferredStock,
    Expression<int>? commonStock,
    Expression<int>? retainedEarnings,
    Expression<int>? accumulatedOtherComprehensiveIncomeLoss,
    Expression<int>? othertotalStockholdersEquity,
    Expression<int>? totalStockholdersEquity,
    Expression<int>? totalEquity,
    Expression<int>? totalLiabilitiesAndStockholdersEquity,
    Expression<int>? minorityInterest,
    Expression<int>? totalLiabilitiesAndTotalEquity,
    Expression<int>? totalInvestments,
    Expression<int>? totalDebt,
    Expression<int>? netDebt,
    Expression<String>? link,
    Expression<String>? finalLink,
    Expression<DateTime>? expires,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (symbol != null) 'symbol': symbol,
      if (reportedCurrency != null) 'reported_currency': reportedCurrency,
      if (cik != null) 'cik': cik,
      if (fillingDate != null) 'filling_date': fillingDate,
      if (acceptedDate != null) 'accepted_date': acceptedDate,
      if (calendarYear != null) 'calendar_year': calendarYear,
      if (period != null) 'period': period,
      if (cashAndCashEquivalents != null)
        'cash_and_cash_equivalents': cashAndCashEquivalents,
      if (shortTermInvestments != null)
        'short_term_investments': shortTermInvestments,
      if (cashAndShortTermInvestments != null)
        'cash_and_short_term_investments': cashAndShortTermInvestments,
      if (netReceivables != null) 'net_receivables': netReceivables,
      if (inventory != null) 'inventory': inventory,
      if (otherCurrentAssets != null)
        'other_current_assets': otherCurrentAssets,
      if (totalCurrentAssets != null)
        'total_current_assets': totalCurrentAssets,
      if (propertyPlantEquipmentNet != null)
        'property_plant_equipment_net': propertyPlantEquipmentNet,
      if (goodwill != null) 'goodwill': goodwill,
      if (intangibleAssets != null) 'intangible_assets': intangibleAssets,
      if (goodwillAndIntangibleAssets != null)
        'goodwill_and_intangible_assets': goodwillAndIntangibleAssets,
      if (longTermInvestments != null)
        'long_term_investments': longTermInvestments,
      if (taxAssets != null) 'tax_assets': taxAssets,
      if (otherNonCurrentAssets != null)
        'other_non_current_assets': otherNonCurrentAssets,
      if (totalNonCurrentAssets != null)
        'total_non_current_assets': totalNonCurrentAssets,
      if (otherAssets != null) 'other_assets': otherAssets,
      if (totalAssets != null) 'total_assets': totalAssets,
      if (accountPayables != null) 'account_payables': accountPayables,
      if (shortTermDebt != null) 'short_term_debt': shortTermDebt,
      if (taxPayables != null) 'tax_payables': taxPayables,
      if (deferredRevenue != null) 'deferred_revenue': deferredRevenue,
      if (otherCurrentLiabilities != null)
        'other_current_liabilities': otherCurrentLiabilities,
      if (totalCurrentLiabilities != null)
        'total_current_liabilities': totalCurrentLiabilities,
      if (longTermDebt != null) 'long_term_debt': longTermDebt,
      if (deferredRevenueNonCurrent != null)
        'deferred_revenue_non_current': deferredRevenueNonCurrent,
      if (deferredTaxLiabilitiesNonCurrent != null)
        'deferred_tax_liabilities_non_current':
            deferredTaxLiabilitiesNonCurrent,
      if (otherNonCurrentLiabilities != null)
        'other_non_current_liabilities': otherNonCurrentLiabilities,
      if (totalNonCurrentLiabilities != null)
        'total_non_current_liabilities': totalNonCurrentLiabilities,
      if (otherLiabilities != null) 'other_liabilities': otherLiabilities,
      if (capitalLeaseObligations != null)
        'capital_lease_obligations': capitalLeaseObligations,
      if (totalLiabilities != null) 'total_liabilities': totalLiabilities,
      if (preferredStock != null) 'preferred_stock': preferredStock,
      if (commonStock != null) 'common_stock': commonStock,
      if (retainedEarnings != null) 'retained_earnings': retainedEarnings,
      if (accumulatedOtherComprehensiveIncomeLoss != null)
        'accumulated_other_comprehensive_income_loss':
            accumulatedOtherComprehensiveIncomeLoss,
      if (othertotalStockholdersEquity != null)
        'othertotal_stockholders_equity': othertotalStockholdersEquity,
      if (totalStockholdersEquity != null)
        'total_stockholders_equity': totalStockholdersEquity,
      if (totalEquity != null) 'total_equity': totalEquity,
      if (totalLiabilitiesAndStockholdersEquity != null)
        'total_liabilities_and_stockholders_equity':
            totalLiabilitiesAndStockholdersEquity,
      if (minorityInterest != null) 'minority_interest': minorityInterest,
      if (totalLiabilitiesAndTotalEquity != null)
        'total_liabilities_and_total_equity': totalLiabilitiesAndTotalEquity,
      if (totalInvestments != null) 'total_investments': totalInvestments,
      if (totalDebt != null) 'total_debt': totalDebt,
      if (netDebt != null) 'net_debt': netDebt,
      if (link != null) 'link': link,
      if (finalLink != null) 'final_link': finalLink,
      if (expires != null) 'expires': expires,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BalanceSheetStatementTableRowDefinitionCompanion copyWith(
      {Value<String>? date,
      Value<String>? symbol,
      Value<String?>? reportedCurrency,
      Value<String?>? cik,
      Value<String?>? fillingDate,
      Value<String?>? acceptedDate,
      Value<String?>? calendarYear,
      Value<String?>? period,
      Value<int?>? cashAndCashEquivalents,
      Value<int?>? shortTermInvestments,
      Value<int?>? cashAndShortTermInvestments,
      Value<int?>? netReceivables,
      Value<int?>? inventory,
      Value<int?>? otherCurrentAssets,
      Value<int?>? totalCurrentAssets,
      Value<int?>? propertyPlantEquipmentNet,
      Value<int?>? goodwill,
      Value<int?>? intangibleAssets,
      Value<int?>? goodwillAndIntangibleAssets,
      Value<int?>? longTermInvestments,
      Value<int?>? taxAssets,
      Value<int?>? otherNonCurrentAssets,
      Value<int?>? totalNonCurrentAssets,
      Value<int?>? otherAssets,
      Value<int?>? totalAssets,
      Value<int?>? accountPayables,
      Value<int?>? shortTermDebt,
      Value<int?>? taxPayables,
      Value<int?>? deferredRevenue,
      Value<int?>? otherCurrentLiabilities,
      Value<int?>? totalCurrentLiabilities,
      Value<int?>? longTermDebt,
      Value<int?>? deferredRevenueNonCurrent,
      Value<int?>? deferredTaxLiabilitiesNonCurrent,
      Value<int?>? otherNonCurrentLiabilities,
      Value<int?>? totalNonCurrentLiabilities,
      Value<int?>? otherLiabilities,
      Value<int?>? capitalLeaseObligations,
      Value<int?>? totalLiabilities,
      Value<int?>? preferredStock,
      Value<int?>? commonStock,
      Value<int?>? retainedEarnings,
      Value<int?>? accumulatedOtherComprehensiveIncomeLoss,
      Value<int?>? othertotalStockholdersEquity,
      Value<int?>? totalStockholdersEquity,
      Value<int?>? totalEquity,
      Value<int?>? totalLiabilitiesAndStockholdersEquity,
      Value<int?>? minorityInterest,
      Value<int?>? totalLiabilitiesAndTotalEquity,
      Value<int?>? totalInvestments,
      Value<int?>? totalDebt,
      Value<int?>? netDebt,
      Value<String?>? link,
      Value<String?>? finalLink,
      Value<DateTime>? expires,
      Value<int>? rowid}) {
    return BalanceSheetStatementTableRowDefinitionCompanion(
      date: date ?? this.date,
      symbol: symbol ?? this.symbol,
      reportedCurrency: reportedCurrency ?? this.reportedCurrency,
      cik: cik ?? this.cik,
      fillingDate: fillingDate ?? this.fillingDate,
      acceptedDate: acceptedDate ?? this.acceptedDate,
      calendarYear: calendarYear ?? this.calendarYear,
      period: period ?? this.period,
      cashAndCashEquivalents:
          cashAndCashEquivalents ?? this.cashAndCashEquivalents,
      shortTermInvestments: shortTermInvestments ?? this.shortTermInvestments,
      cashAndShortTermInvestments:
          cashAndShortTermInvestments ?? this.cashAndShortTermInvestments,
      netReceivables: netReceivables ?? this.netReceivables,
      inventory: inventory ?? this.inventory,
      otherCurrentAssets: otherCurrentAssets ?? this.otherCurrentAssets,
      totalCurrentAssets: totalCurrentAssets ?? this.totalCurrentAssets,
      propertyPlantEquipmentNet:
          propertyPlantEquipmentNet ?? this.propertyPlantEquipmentNet,
      goodwill: goodwill ?? this.goodwill,
      intangibleAssets: intangibleAssets ?? this.intangibleAssets,
      goodwillAndIntangibleAssets:
          goodwillAndIntangibleAssets ?? this.goodwillAndIntangibleAssets,
      longTermInvestments: longTermInvestments ?? this.longTermInvestments,
      taxAssets: taxAssets ?? this.taxAssets,
      otherNonCurrentAssets:
          otherNonCurrentAssets ?? this.otherNonCurrentAssets,
      totalNonCurrentAssets:
          totalNonCurrentAssets ?? this.totalNonCurrentAssets,
      otherAssets: otherAssets ?? this.otherAssets,
      totalAssets: totalAssets ?? this.totalAssets,
      accountPayables: accountPayables ?? this.accountPayables,
      shortTermDebt: shortTermDebt ?? this.shortTermDebt,
      taxPayables: taxPayables ?? this.taxPayables,
      deferredRevenue: deferredRevenue ?? this.deferredRevenue,
      otherCurrentLiabilities:
          otherCurrentLiabilities ?? this.otherCurrentLiabilities,
      totalCurrentLiabilities:
          totalCurrentLiabilities ?? this.totalCurrentLiabilities,
      longTermDebt: longTermDebt ?? this.longTermDebt,
      deferredRevenueNonCurrent:
          deferredRevenueNonCurrent ?? this.deferredRevenueNonCurrent,
      deferredTaxLiabilitiesNonCurrent: deferredTaxLiabilitiesNonCurrent ??
          this.deferredTaxLiabilitiesNonCurrent,
      otherNonCurrentLiabilities:
          otherNonCurrentLiabilities ?? this.otherNonCurrentLiabilities,
      totalNonCurrentLiabilities:
          totalNonCurrentLiabilities ?? this.totalNonCurrentLiabilities,
      otherLiabilities: otherLiabilities ?? this.otherLiabilities,
      capitalLeaseObligations:
          capitalLeaseObligations ?? this.capitalLeaseObligations,
      totalLiabilities: totalLiabilities ?? this.totalLiabilities,
      preferredStock: preferredStock ?? this.preferredStock,
      commonStock: commonStock ?? this.commonStock,
      retainedEarnings: retainedEarnings ?? this.retainedEarnings,
      accumulatedOtherComprehensiveIncomeLoss:
          accumulatedOtherComprehensiveIncomeLoss ??
              this.accumulatedOtherComprehensiveIncomeLoss,
      othertotalStockholdersEquity:
          othertotalStockholdersEquity ?? this.othertotalStockholdersEquity,
      totalStockholdersEquity:
          totalStockholdersEquity ?? this.totalStockholdersEquity,
      totalEquity: totalEquity ?? this.totalEquity,
      totalLiabilitiesAndStockholdersEquity:
          totalLiabilitiesAndStockholdersEquity ??
              this.totalLiabilitiesAndStockholdersEquity,
      minorityInterest: minorityInterest ?? this.minorityInterest,
      totalLiabilitiesAndTotalEquity:
          totalLiabilitiesAndTotalEquity ?? this.totalLiabilitiesAndTotalEquity,
      totalInvestments: totalInvestments ?? this.totalInvestments,
      totalDebt: totalDebt ?? this.totalDebt,
      netDebt: netDebt ?? this.netDebt,
      link: link ?? this.link,
      finalLink: finalLink ?? this.finalLink,
      expires: expires ?? this.expires,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (reportedCurrency.present) {
      map['reported_currency'] = Variable<String>(reportedCurrency.value);
    }
    if (cik.present) {
      map['cik'] = Variable<String>(cik.value);
    }
    if (fillingDate.present) {
      map['filling_date'] = Variable<String>(fillingDate.value);
    }
    if (acceptedDate.present) {
      map['accepted_date'] = Variable<String>(acceptedDate.value);
    }
    if (calendarYear.present) {
      map['calendar_year'] = Variable<String>(calendarYear.value);
    }
    if (period.present) {
      map['period'] = Variable<String>(period.value);
    }
    if (cashAndCashEquivalents.present) {
      map['cash_and_cash_equivalents'] =
          Variable<int>(cashAndCashEquivalents.value);
    }
    if (shortTermInvestments.present) {
      map['short_term_investments'] = Variable<int>(shortTermInvestments.value);
    }
    if (cashAndShortTermInvestments.present) {
      map['cash_and_short_term_investments'] =
          Variable<int>(cashAndShortTermInvestments.value);
    }
    if (netReceivables.present) {
      map['net_receivables'] = Variable<int>(netReceivables.value);
    }
    if (inventory.present) {
      map['inventory'] = Variable<int>(inventory.value);
    }
    if (otherCurrentAssets.present) {
      map['other_current_assets'] = Variable<int>(otherCurrentAssets.value);
    }
    if (totalCurrentAssets.present) {
      map['total_current_assets'] = Variable<int>(totalCurrentAssets.value);
    }
    if (propertyPlantEquipmentNet.present) {
      map['property_plant_equipment_net'] =
          Variable<int>(propertyPlantEquipmentNet.value);
    }
    if (goodwill.present) {
      map['goodwill'] = Variable<int>(goodwill.value);
    }
    if (intangibleAssets.present) {
      map['intangible_assets'] = Variable<int>(intangibleAssets.value);
    }
    if (goodwillAndIntangibleAssets.present) {
      map['goodwill_and_intangible_assets'] =
          Variable<int>(goodwillAndIntangibleAssets.value);
    }
    if (longTermInvestments.present) {
      map['long_term_investments'] = Variable<int>(longTermInvestments.value);
    }
    if (taxAssets.present) {
      map['tax_assets'] = Variable<int>(taxAssets.value);
    }
    if (otherNonCurrentAssets.present) {
      map['other_non_current_assets'] =
          Variable<int>(otherNonCurrentAssets.value);
    }
    if (totalNonCurrentAssets.present) {
      map['total_non_current_assets'] =
          Variable<int>(totalNonCurrentAssets.value);
    }
    if (otherAssets.present) {
      map['other_assets'] = Variable<int>(otherAssets.value);
    }
    if (totalAssets.present) {
      map['total_assets'] = Variable<int>(totalAssets.value);
    }
    if (accountPayables.present) {
      map['account_payables'] = Variable<int>(accountPayables.value);
    }
    if (shortTermDebt.present) {
      map['short_term_debt'] = Variable<int>(shortTermDebt.value);
    }
    if (taxPayables.present) {
      map['tax_payables'] = Variable<int>(taxPayables.value);
    }
    if (deferredRevenue.present) {
      map['deferred_revenue'] = Variable<int>(deferredRevenue.value);
    }
    if (otherCurrentLiabilities.present) {
      map['other_current_liabilities'] =
          Variable<int>(otherCurrentLiabilities.value);
    }
    if (totalCurrentLiabilities.present) {
      map['total_current_liabilities'] =
          Variable<int>(totalCurrentLiabilities.value);
    }
    if (longTermDebt.present) {
      map['long_term_debt'] = Variable<int>(longTermDebt.value);
    }
    if (deferredRevenueNonCurrent.present) {
      map['deferred_revenue_non_current'] =
          Variable<int>(deferredRevenueNonCurrent.value);
    }
    if (deferredTaxLiabilitiesNonCurrent.present) {
      map['deferred_tax_liabilities_non_current'] =
          Variable<int>(deferredTaxLiabilitiesNonCurrent.value);
    }
    if (otherNonCurrentLiabilities.present) {
      map['other_non_current_liabilities'] =
          Variable<int>(otherNonCurrentLiabilities.value);
    }
    if (totalNonCurrentLiabilities.present) {
      map['total_non_current_liabilities'] =
          Variable<int>(totalNonCurrentLiabilities.value);
    }
    if (otherLiabilities.present) {
      map['other_liabilities'] = Variable<int>(otherLiabilities.value);
    }
    if (capitalLeaseObligations.present) {
      map['capital_lease_obligations'] =
          Variable<int>(capitalLeaseObligations.value);
    }
    if (totalLiabilities.present) {
      map['total_liabilities'] = Variable<int>(totalLiabilities.value);
    }
    if (preferredStock.present) {
      map['preferred_stock'] = Variable<int>(preferredStock.value);
    }
    if (commonStock.present) {
      map['common_stock'] = Variable<int>(commonStock.value);
    }
    if (retainedEarnings.present) {
      map['retained_earnings'] = Variable<int>(retainedEarnings.value);
    }
    if (accumulatedOtherComprehensiveIncomeLoss.present) {
      map['accumulated_other_comprehensive_income_loss'] =
          Variable<int>(accumulatedOtherComprehensiveIncomeLoss.value);
    }
    if (othertotalStockholdersEquity.present) {
      map['othertotal_stockholders_equity'] =
          Variable<int>(othertotalStockholdersEquity.value);
    }
    if (totalStockholdersEquity.present) {
      map['total_stockholders_equity'] =
          Variable<int>(totalStockholdersEquity.value);
    }
    if (totalEquity.present) {
      map['total_equity'] = Variable<int>(totalEquity.value);
    }
    if (totalLiabilitiesAndStockholdersEquity.present) {
      map['total_liabilities_and_stockholders_equity'] =
          Variable<int>(totalLiabilitiesAndStockholdersEquity.value);
    }
    if (minorityInterest.present) {
      map['minority_interest'] = Variable<int>(minorityInterest.value);
    }
    if (totalLiabilitiesAndTotalEquity.present) {
      map['total_liabilities_and_total_equity'] =
          Variable<int>(totalLiabilitiesAndTotalEquity.value);
    }
    if (totalInvestments.present) {
      map['total_investments'] = Variable<int>(totalInvestments.value);
    }
    if (totalDebt.present) {
      map['total_debt'] = Variable<int>(totalDebt.value);
    }
    if (netDebt.present) {
      map['net_debt'] = Variable<int>(netDebt.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (finalLink.present) {
      map['final_link'] = Variable<String>(finalLink.value);
    }
    if (expires.present) {
      map['expires'] = Variable<DateTime>(expires.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BalanceSheetStatementTableRowDefinitionCompanion(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('reportedCurrency: $reportedCurrency, ')
          ..write('cik: $cik, ')
          ..write('fillingDate: $fillingDate, ')
          ..write('acceptedDate: $acceptedDate, ')
          ..write('calendarYear: $calendarYear, ')
          ..write('period: $period, ')
          ..write('cashAndCashEquivalents: $cashAndCashEquivalents, ')
          ..write('shortTermInvestments: $shortTermInvestments, ')
          ..write('cashAndShortTermInvestments: $cashAndShortTermInvestments, ')
          ..write('netReceivables: $netReceivables, ')
          ..write('inventory: $inventory, ')
          ..write('otherCurrentAssets: $otherCurrentAssets, ')
          ..write('totalCurrentAssets: $totalCurrentAssets, ')
          ..write('propertyPlantEquipmentNet: $propertyPlantEquipmentNet, ')
          ..write('goodwill: $goodwill, ')
          ..write('intangibleAssets: $intangibleAssets, ')
          ..write('goodwillAndIntangibleAssets: $goodwillAndIntangibleAssets, ')
          ..write('longTermInvestments: $longTermInvestments, ')
          ..write('taxAssets: $taxAssets, ')
          ..write('otherNonCurrentAssets: $otherNonCurrentAssets, ')
          ..write('totalNonCurrentAssets: $totalNonCurrentAssets, ')
          ..write('otherAssets: $otherAssets, ')
          ..write('totalAssets: $totalAssets, ')
          ..write('accountPayables: $accountPayables, ')
          ..write('shortTermDebt: $shortTermDebt, ')
          ..write('taxPayables: $taxPayables, ')
          ..write('deferredRevenue: $deferredRevenue, ')
          ..write('otherCurrentLiabilities: $otherCurrentLiabilities, ')
          ..write('totalCurrentLiabilities: $totalCurrentLiabilities, ')
          ..write('longTermDebt: $longTermDebt, ')
          ..write('deferredRevenueNonCurrent: $deferredRevenueNonCurrent, ')
          ..write(
              'deferredTaxLiabilitiesNonCurrent: $deferredTaxLiabilitiesNonCurrent, ')
          ..write('otherNonCurrentLiabilities: $otherNonCurrentLiabilities, ')
          ..write('totalNonCurrentLiabilities: $totalNonCurrentLiabilities, ')
          ..write('otherLiabilities: $otherLiabilities, ')
          ..write('capitalLeaseObligations: $capitalLeaseObligations, ')
          ..write('totalLiabilities: $totalLiabilities, ')
          ..write('preferredStock: $preferredStock, ')
          ..write('commonStock: $commonStock, ')
          ..write('retainedEarnings: $retainedEarnings, ')
          ..write(
              'accumulatedOtherComprehensiveIncomeLoss: $accumulatedOtherComprehensiveIncomeLoss, ')
          ..write(
              'othertotalStockholdersEquity: $othertotalStockholdersEquity, ')
          ..write('totalStockholdersEquity: $totalStockholdersEquity, ')
          ..write('totalEquity: $totalEquity, ')
          ..write(
              'totalLiabilitiesAndStockholdersEquity: $totalLiabilitiesAndStockholdersEquity, ')
          ..write('minorityInterest: $minorityInterest, ')
          ..write(
              'totalLiabilitiesAndTotalEquity: $totalLiabilitiesAndTotalEquity, ')
          ..write('totalInvestments: $totalInvestments, ')
          ..write('totalDebt: $totalDebt, ')
          ..write('netDebt: $netDebt, ')
          ..write('link: $link, ')
          ..write('finalLink: $finalLink, ')
          ..write('expires: $expires, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CashFlowStatementTableRowDefinitionTable
    extends CashFlowStatementTableRowDefinition
    with
        TableInfo<$CashFlowStatementTableRowDefinitionTable,
            CashFlowStatementTableRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CashFlowStatementTableRowDefinitionTable(this.attachedDatabase,
      [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reportedCurrencyMeta =
      const VerificationMeta('reportedCurrency');
  @override
  late final GeneratedColumn<String> reportedCurrency = GeneratedColumn<String>(
      'reported_currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cikMeta = const VerificationMeta('cik');
  @override
  late final GeneratedColumn<String> cik = GeneratedColumn<String>(
      'cik', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fillingDateMeta =
      const VerificationMeta('fillingDate');
  @override
  late final GeneratedColumn<String> fillingDate = GeneratedColumn<String>(
      'filling_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _acceptedDateMeta =
      const VerificationMeta('acceptedDate');
  @override
  late final GeneratedColumn<String> acceptedDate = GeneratedColumn<String>(
      'accepted_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _calendarYearMeta =
      const VerificationMeta('calendarYear');
  @override
  late final GeneratedColumn<String> calendarYear = GeneratedColumn<String>(
      'calendar_year', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _periodMeta = const VerificationMeta('period');
  @override
  late final GeneratedColumn<String> period = GeneratedColumn<String>(
      'period', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _netIncomeMeta =
      const VerificationMeta('netIncome');
  @override
  late final GeneratedColumn<int> netIncome = GeneratedColumn<int>(
      'net_income', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _depreciationAndAmortizationMeta =
      const VerificationMeta('depreciationAndAmortization');
  @override
  late final GeneratedColumn<int> depreciationAndAmortization =
      GeneratedColumn<int>('depreciation_and_amortization', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _deferredIncomeTaxMeta =
      const VerificationMeta('deferredIncomeTax');
  @override
  late final GeneratedColumn<int> deferredIncomeTax = GeneratedColumn<int>(
      'deferred_income_tax', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _stockBasedCompensationMeta =
      const VerificationMeta('stockBasedCompensation');
  @override
  late final GeneratedColumn<int> stockBasedCompensation = GeneratedColumn<int>(
      'stock_based_compensation', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _changeInWorkingCapitalMeta =
      const VerificationMeta('changeInWorkingCapital');
  @override
  late final GeneratedColumn<int> changeInWorkingCapital = GeneratedColumn<int>(
      'change_in_working_capital', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accountsReceivablesMeta =
      const VerificationMeta('accountsReceivables');
  @override
  late final GeneratedColumn<int> accountsReceivables = GeneratedColumn<int>(
      'accounts_receivables', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _inventoryMeta =
      const VerificationMeta('inventory');
  @override
  late final GeneratedColumn<int> inventory = GeneratedColumn<int>(
      'inventory', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accountsPayablesMeta =
      const VerificationMeta('accountsPayables');
  @override
  late final GeneratedColumn<int> accountsPayables = GeneratedColumn<int>(
      'accounts_payables', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherWorkingCapitalMeta =
      const VerificationMeta('otherWorkingCapital');
  @override
  late final GeneratedColumn<int> otherWorkingCapital = GeneratedColumn<int>(
      'other_working_capital', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherNonCashItemsMeta =
      const VerificationMeta('otherNonCashItems');
  @override
  late final GeneratedColumn<int> otherNonCashItems = GeneratedColumn<int>(
      'other_non_cash_items', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netCashProvidedByOperatingActivitiesMeta =
      const VerificationMeta('netCashProvidedByOperatingActivities');
  @override
  late final GeneratedColumn<int> netCashProvidedByOperatingActivities =
      GeneratedColumn<int>(
          'net_cash_provided_by_operating_activities', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _investmentsInPropertyPlantAndEquipmentMeta =
      const VerificationMeta('investmentsInPropertyPlantAndEquipment');
  @override
  late final GeneratedColumn<int> investmentsInPropertyPlantAndEquipment =
      GeneratedColumn<int>(
          'investments_in_property_plant_and_equipment', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _acquisitionsNetMeta =
      const VerificationMeta('acquisitionsNet');
  @override
  late final GeneratedColumn<int> acquisitionsNet = GeneratedColumn<int>(
      'acquisitions_net', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _purchasesOfInvestmentsMeta =
      const VerificationMeta('purchasesOfInvestments');
  @override
  late final GeneratedColumn<int> purchasesOfInvestments = GeneratedColumn<int>(
      'purchases_of_investments', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _salesMaturitiesOfInvestmentsMeta =
      const VerificationMeta('salesMaturitiesOfInvestments');
  @override
  late final GeneratedColumn<int> salesMaturitiesOfInvestments =
      GeneratedColumn<int>('sales_maturities_of_investments', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherInvestingActivitesMeta =
      const VerificationMeta('otherInvestingActivites');
  @override
  late final GeneratedColumn<int> otherInvestingActivites =
      GeneratedColumn<int>('other_investing_activites', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netCashUsedForInvestingActivitesMeta =
      const VerificationMeta('netCashUsedForInvestingActivites');
  @override
  late final GeneratedColumn<int> netCashUsedForInvestingActivites =
      GeneratedColumn<int>(
          'net_cash_used_for_investing_activites', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _debtRepaymentMeta =
      const VerificationMeta('debtRepayment');
  @override
  late final GeneratedColumn<int> debtRepayment = GeneratedColumn<int>(
      'debt_repayment', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _commonStockIssuedMeta =
      const VerificationMeta('commonStockIssued');
  @override
  late final GeneratedColumn<int> commonStockIssued = GeneratedColumn<int>(
      'common_stock_issued', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _commonStockRepurchasedMeta =
      const VerificationMeta('commonStockRepurchased');
  @override
  late final GeneratedColumn<int> commonStockRepurchased = GeneratedColumn<int>(
      'common_stock_repurchased', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dividendsPaidMeta =
      const VerificationMeta('dividendsPaid');
  @override
  late final GeneratedColumn<int> dividendsPaid = GeneratedColumn<int>(
      'dividends_paid', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherFinancingActivitesMeta =
      const VerificationMeta('otherFinancingActivites');
  @override
  late final GeneratedColumn<int> otherFinancingActivites =
      GeneratedColumn<int>('other_financing_activites', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netCashUsedProvidedByFinancingActivitiesMeta =
      const VerificationMeta('netCashUsedProvidedByFinancingActivities');
  @override
  late final GeneratedColumn<int> netCashUsedProvidedByFinancingActivities =
      GeneratedColumn<int>(
          'net_cash_used_provided_by_financing_activities', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _effectOfForexChangesOnCashMeta =
      const VerificationMeta('effectOfForexChangesOnCash');
  @override
  late final GeneratedColumn<int> effectOfForexChangesOnCash =
      GeneratedColumn<int>('effect_of_forex_changes_on_cash', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netChangeInCashMeta =
      const VerificationMeta('netChangeInCash');
  @override
  late final GeneratedColumn<int> netChangeInCash = GeneratedColumn<int>(
      'net_change_in_cash', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cashAtEndOfPeriodMeta =
      const VerificationMeta('cashAtEndOfPeriod');
  @override
  late final GeneratedColumn<int> cashAtEndOfPeriod = GeneratedColumn<int>(
      'cash_at_end_of_period', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cashAtBeginningOfPeriodMeta =
      const VerificationMeta('cashAtBeginningOfPeriod');
  @override
  late final GeneratedColumn<int> cashAtBeginningOfPeriod =
      GeneratedColumn<int>('cash_at_beginning_of_period', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _operatingCashFlowMeta =
      const VerificationMeta('operatingCashFlow');
  @override
  late final GeneratedColumn<int> operatingCashFlow = GeneratedColumn<int>(
      'operating_cash_flow', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _capitalExpenditureMeta =
      const VerificationMeta('capitalExpenditure');
  @override
  late final GeneratedColumn<int> capitalExpenditure = GeneratedColumn<int>(
      'capital_expenditure', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _freeCashFlowMeta =
      const VerificationMeta('freeCashFlow');
  @override
  late final GeneratedColumn<int> freeCashFlow = GeneratedColumn<int>(
      'free_cash_flow', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _finalLinkMeta =
      const VerificationMeta('finalLink');
  @override
  late final GeneratedColumn<String> finalLink = GeneratedColumn<String>(
      'final_link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _expiresMeta =
      const VerificationMeta('expires');
  @override
  late final GeneratedColumn<DateTime> expires = GeneratedColumn<DateTime>(
      'expires', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        date,
        symbol,
        reportedCurrency,
        cik,
        fillingDate,
        acceptedDate,
        calendarYear,
        period,
        netIncome,
        depreciationAndAmortization,
        deferredIncomeTax,
        stockBasedCompensation,
        changeInWorkingCapital,
        accountsReceivables,
        inventory,
        accountsPayables,
        otherWorkingCapital,
        otherNonCashItems,
        netCashProvidedByOperatingActivities,
        investmentsInPropertyPlantAndEquipment,
        acquisitionsNet,
        purchasesOfInvestments,
        salesMaturitiesOfInvestments,
        otherInvestingActivites,
        netCashUsedForInvestingActivites,
        debtRepayment,
        commonStockIssued,
        commonStockRepurchased,
        dividendsPaid,
        otherFinancingActivites,
        netCashUsedProvidedByFinancingActivities,
        effectOfForexChangesOnCash,
        netChangeInCash,
        cashAtEndOfPeriod,
        cashAtBeginningOfPeriod,
        operatingCashFlow,
        capitalExpenditure,
        freeCashFlow,
        link,
        finalLink,
        expires
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cash_flow_statement_table_row_definition';
  @override
  VerificationContext validateIntegrity(
      Insertable<CashFlowStatementTableRow> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('reported_currency')) {
      context.handle(
          _reportedCurrencyMeta,
          reportedCurrency.isAcceptableOrUnknown(
              data['reported_currency']!, _reportedCurrencyMeta));
    }
    if (data.containsKey('cik')) {
      context.handle(
          _cikMeta, cik.isAcceptableOrUnknown(data['cik']!, _cikMeta));
    }
    if (data.containsKey('filling_date')) {
      context.handle(
          _fillingDateMeta,
          fillingDate.isAcceptableOrUnknown(
              data['filling_date']!, _fillingDateMeta));
    }
    if (data.containsKey('accepted_date')) {
      context.handle(
          _acceptedDateMeta,
          acceptedDate.isAcceptableOrUnknown(
              data['accepted_date']!, _acceptedDateMeta));
    }
    if (data.containsKey('calendar_year')) {
      context.handle(
          _calendarYearMeta,
          calendarYear.isAcceptableOrUnknown(
              data['calendar_year']!, _calendarYearMeta));
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period']!, _periodMeta));
    }
    if (data.containsKey('net_income')) {
      context.handle(_netIncomeMeta,
          netIncome.isAcceptableOrUnknown(data['net_income']!, _netIncomeMeta));
    }
    if (data.containsKey('depreciation_and_amortization')) {
      context.handle(
          _depreciationAndAmortizationMeta,
          depreciationAndAmortization.isAcceptableOrUnknown(
              data['depreciation_and_amortization']!,
              _depreciationAndAmortizationMeta));
    }
    if (data.containsKey('deferred_income_tax')) {
      context.handle(
          _deferredIncomeTaxMeta,
          deferredIncomeTax.isAcceptableOrUnknown(
              data['deferred_income_tax']!, _deferredIncomeTaxMeta));
    }
    if (data.containsKey('stock_based_compensation')) {
      context.handle(
          _stockBasedCompensationMeta,
          stockBasedCompensation.isAcceptableOrUnknown(
              data['stock_based_compensation']!, _stockBasedCompensationMeta));
    }
    if (data.containsKey('change_in_working_capital')) {
      context.handle(
          _changeInWorkingCapitalMeta,
          changeInWorkingCapital.isAcceptableOrUnknown(
              data['change_in_working_capital']!, _changeInWorkingCapitalMeta));
    }
    if (data.containsKey('accounts_receivables')) {
      context.handle(
          _accountsReceivablesMeta,
          accountsReceivables.isAcceptableOrUnknown(
              data['accounts_receivables']!, _accountsReceivablesMeta));
    }
    if (data.containsKey('inventory')) {
      context.handle(_inventoryMeta,
          inventory.isAcceptableOrUnknown(data['inventory']!, _inventoryMeta));
    }
    if (data.containsKey('accounts_payables')) {
      context.handle(
          _accountsPayablesMeta,
          accountsPayables.isAcceptableOrUnknown(
              data['accounts_payables']!, _accountsPayablesMeta));
    }
    if (data.containsKey('other_working_capital')) {
      context.handle(
          _otherWorkingCapitalMeta,
          otherWorkingCapital.isAcceptableOrUnknown(
              data['other_working_capital']!, _otherWorkingCapitalMeta));
    }
    if (data.containsKey('other_non_cash_items')) {
      context.handle(
          _otherNonCashItemsMeta,
          otherNonCashItems.isAcceptableOrUnknown(
              data['other_non_cash_items']!, _otherNonCashItemsMeta));
    }
    if (data.containsKey('net_cash_provided_by_operating_activities')) {
      context.handle(
          _netCashProvidedByOperatingActivitiesMeta,
          netCashProvidedByOperatingActivities.isAcceptableOrUnknown(
              data['net_cash_provided_by_operating_activities']!,
              _netCashProvidedByOperatingActivitiesMeta));
    }
    if (data.containsKey('investments_in_property_plant_and_equipment')) {
      context.handle(
          _investmentsInPropertyPlantAndEquipmentMeta,
          investmentsInPropertyPlantAndEquipment.isAcceptableOrUnknown(
              data['investments_in_property_plant_and_equipment']!,
              _investmentsInPropertyPlantAndEquipmentMeta));
    }
    if (data.containsKey('acquisitions_net')) {
      context.handle(
          _acquisitionsNetMeta,
          acquisitionsNet.isAcceptableOrUnknown(
              data['acquisitions_net']!, _acquisitionsNetMeta));
    }
    if (data.containsKey('purchases_of_investments')) {
      context.handle(
          _purchasesOfInvestmentsMeta,
          purchasesOfInvestments.isAcceptableOrUnknown(
              data['purchases_of_investments']!, _purchasesOfInvestmentsMeta));
    }
    if (data.containsKey('sales_maturities_of_investments')) {
      context.handle(
          _salesMaturitiesOfInvestmentsMeta,
          salesMaturitiesOfInvestments.isAcceptableOrUnknown(
              data['sales_maturities_of_investments']!,
              _salesMaturitiesOfInvestmentsMeta));
    }
    if (data.containsKey('other_investing_activites')) {
      context.handle(
          _otherInvestingActivitesMeta,
          otherInvestingActivites.isAcceptableOrUnknown(
              data['other_investing_activites']!,
              _otherInvestingActivitesMeta));
    }
    if (data.containsKey('net_cash_used_for_investing_activites')) {
      context.handle(
          _netCashUsedForInvestingActivitesMeta,
          netCashUsedForInvestingActivites.isAcceptableOrUnknown(
              data['net_cash_used_for_investing_activites']!,
              _netCashUsedForInvestingActivitesMeta));
    }
    if (data.containsKey('debt_repayment')) {
      context.handle(
          _debtRepaymentMeta,
          debtRepayment.isAcceptableOrUnknown(
              data['debt_repayment']!, _debtRepaymentMeta));
    }
    if (data.containsKey('common_stock_issued')) {
      context.handle(
          _commonStockIssuedMeta,
          commonStockIssued.isAcceptableOrUnknown(
              data['common_stock_issued']!, _commonStockIssuedMeta));
    }
    if (data.containsKey('common_stock_repurchased')) {
      context.handle(
          _commonStockRepurchasedMeta,
          commonStockRepurchased.isAcceptableOrUnknown(
              data['common_stock_repurchased']!, _commonStockRepurchasedMeta));
    }
    if (data.containsKey('dividends_paid')) {
      context.handle(
          _dividendsPaidMeta,
          dividendsPaid.isAcceptableOrUnknown(
              data['dividends_paid']!, _dividendsPaidMeta));
    }
    if (data.containsKey('other_financing_activites')) {
      context.handle(
          _otherFinancingActivitesMeta,
          otherFinancingActivites.isAcceptableOrUnknown(
              data['other_financing_activites']!,
              _otherFinancingActivitesMeta));
    }
    if (data.containsKey('net_cash_used_provided_by_financing_activities')) {
      context.handle(
          _netCashUsedProvidedByFinancingActivitiesMeta,
          netCashUsedProvidedByFinancingActivities.isAcceptableOrUnknown(
              data['net_cash_used_provided_by_financing_activities']!,
              _netCashUsedProvidedByFinancingActivitiesMeta));
    }
    if (data.containsKey('effect_of_forex_changes_on_cash')) {
      context.handle(
          _effectOfForexChangesOnCashMeta,
          effectOfForexChangesOnCash.isAcceptableOrUnknown(
              data['effect_of_forex_changes_on_cash']!,
              _effectOfForexChangesOnCashMeta));
    }
    if (data.containsKey('net_change_in_cash')) {
      context.handle(
          _netChangeInCashMeta,
          netChangeInCash.isAcceptableOrUnknown(
              data['net_change_in_cash']!, _netChangeInCashMeta));
    }
    if (data.containsKey('cash_at_end_of_period')) {
      context.handle(
          _cashAtEndOfPeriodMeta,
          cashAtEndOfPeriod.isAcceptableOrUnknown(
              data['cash_at_end_of_period']!, _cashAtEndOfPeriodMeta));
    }
    if (data.containsKey('cash_at_beginning_of_period')) {
      context.handle(
          _cashAtBeginningOfPeriodMeta,
          cashAtBeginningOfPeriod.isAcceptableOrUnknown(
              data['cash_at_beginning_of_period']!,
              _cashAtBeginningOfPeriodMeta));
    }
    if (data.containsKey('operating_cash_flow')) {
      context.handle(
          _operatingCashFlowMeta,
          operatingCashFlow.isAcceptableOrUnknown(
              data['operating_cash_flow']!, _operatingCashFlowMeta));
    }
    if (data.containsKey('capital_expenditure')) {
      context.handle(
          _capitalExpenditureMeta,
          capitalExpenditure.isAcceptableOrUnknown(
              data['capital_expenditure']!, _capitalExpenditureMeta));
    }
    if (data.containsKey('free_cash_flow')) {
      context.handle(
          _freeCashFlowMeta,
          freeCashFlow.isAcceptableOrUnknown(
              data['free_cash_flow']!, _freeCashFlowMeta));
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    }
    if (data.containsKey('final_link')) {
      context.handle(_finalLinkMeta,
          finalLink.isAcceptableOrUnknown(data['final_link']!, _finalLinkMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires']!, _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {symbol, date};
  @override
  CashFlowStatementTableRow map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CashFlowStatementTableRow(
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      reportedCurrency: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}reported_currency']),
      cik: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cik']),
      fillingDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}filling_date']),
      acceptedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}accepted_date']),
      calendarYear: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}calendar_year']),
      period: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}period']),
      netIncome: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}net_income']),
      depreciationAndAmortization: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}depreciation_and_amortization']),
      deferredIncomeTax: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}deferred_income_tax']),
      stockBasedCompensation: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}stock_based_compensation']),
      changeInWorkingCapital: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}change_in_working_capital']),
      accountsReceivables: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}accounts_receivables']),
      inventory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}inventory']),
      accountsPayables: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}accounts_payables']),
      otherWorkingCapital: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}other_working_capital']),
      otherNonCashItems: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}other_non_cash_items']),
      netCashProvidedByOperatingActivities: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}net_cash_provided_by_operating_activities']),
      investmentsInPropertyPlantAndEquipment: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data[
              '${effectivePrefix}investments_in_property_plant_and_equipment']),
      acquisitionsNet: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acquisitions_net']),
      purchasesOfInvestments: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}purchases_of_investments']),
      salesMaturitiesOfInvestments: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}sales_maturities_of_investments']),
      otherInvestingActivites: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}other_investing_activites']),
      netCashUsedForInvestingActivites: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}net_cash_used_for_investing_activites']),
      debtRepayment: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}debt_repayment']),
      commonStockIssued: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}common_stock_issued']),
      commonStockRepurchased: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}common_stock_repurchased']),
      dividendsPaid: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}dividends_paid']),
      otherFinancingActivites: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}other_financing_activites']),
      netCashUsedProvidedByFinancingActivities: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data[
              '${effectivePrefix}net_cash_used_provided_by_financing_activities']),
      effectOfForexChangesOnCash: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}effect_of_forex_changes_on_cash']),
      netChangeInCash: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}net_change_in_cash']),
      cashAtEndOfPeriod: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}cash_at_end_of_period']),
      cashAtBeginningOfPeriod: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}cash_at_beginning_of_period']),
      operatingCashFlow: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}operating_cash_flow']),
      capitalExpenditure: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}capital_expenditure']),
      freeCashFlow: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}free_cash_flow']),
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link']),
      finalLink: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}final_link']),
      expires: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires'])!,
    );
  }

  @override
  $CashFlowStatementTableRowDefinitionTable createAlias(String alias) {
    return $CashFlowStatementTableRowDefinitionTable(attachedDatabase, alias);
  }
}

class CashFlowStatementTableRow extends DataClass
    implements Insertable<CashFlowStatementTableRow> {
  final String date;
  final String symbol;
  final String? reportedCurrency;
  final String? cik;
  final String? fillingDate;
  final String? acceptedDate;
  final String? calendarYear;
  final String? period;
  final int? netIncome;
  final int? depreciationAndAmortization;
  final int? deferredIncomeTax;
  final int? stockBasedCompensation;
  final int? changeInWorkingCapital;
  final int? accountsReceivables;
  final int? inventory;
  final int? accountsPayables;
  final int? otherWorkingCapital;
  final int? otherNonCashItems;
  final int? netCashProvidedByOperatingActivities;
  final int? investmentsInPropertyPlantAndEquipment;
  final int? acquisitionsNet;
  final int? purchasesOfInvestments;
  final int? salesMaturitiesOfInvestments;
  final int? otherInvestingActivites;
  final int? netCashUsedForInvestingActivites;
  final int? debtRepayment;
  final int? commonStockIssued;
  final int? commonStockRepurchased;
  final int? dividendsPaid;
  final int? otherFinancingActivites;
  final int? netCashUsedProvidedByFinancingActivities;
  final int? effectOfForexChangesOnCash;
  final int? netChangeInCash;
  final int? cashAtEndOfPeriod;
  final int? cashAtBeginningOfPeriod;
  final int? operatingCashFlow;
  final int? capitalExpenditure;
  final int? freeCashFlow;
  final String? link;
  final String? finalLink;
  final DateTime expires;
  const CashFlowStatementTableRow(
      {required this.date,
      required this.symbol,
      this.reportedCurrency,
      this.cik,
      this.fillingDate,
      this.acceptedDate,
      this.calendarYear,
      this.period,
      this.netIncome,
      this.depreciationAndAmortization,
      this.deferredIncomeTax,
      this.stockBasedCompensation,
      this.changeInWorkingCapital,
      this.accountsReceivables,
      this.inventory,
      this.accountsPayables,
      this.otherWorkingCapital,
      this.otherNonCashItems,
      this.netCashProvidedByOperatingActivities,
      this.investmentsInPropertyPlantAndEquipment,
      this.acquisitionsNet,
      this.purchasesOfInvestments,
      this.salesMaturitiesOfInvestments,
      this.otherInvestingActivites,
      this.netCashUsedForInvestingActivites,
      this.debtRepayment,
      this.commonStockIssued,
      this.commonStockRepurchased,
      this.dividendsPaid,
      this.otherFinancingActivites,
      this.netCashUsedProvidedByFinancingActivities,
      this.effectOfForexChangesOnCash,
      this.netChangeInCash,
      this.cashAtEndOfPeriod,
      this.cashAtBeginningOfPeriod,
      this.operatingCashFlow,
      this.capitalExpenditure,
      this.freeCashFlow,
      this.link,
      this.finalLink,
      required this.expires});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['date'] = Variable<String>(date);
    map['symbol'] = Variable<String>(symbol);
    if (!nullToAbsent || reportedCurrency != null) {
      map['reported_currency'] = Variable<String>(reportedCurrency);
    }
    if (!nullToAbsent || cik != null) {
      map['cik'] = Variable<String>(cik);
    }
    if (!nullToAbsent || fillingDate != null) {
      map['filling_date'] = Variable<String>(fillingDate);
    }
    if (!nullToAbsent || acceptedDate != null) {
      map['accepted_date'] = Variable<String>(acceptedDate);
    }
    if (!nullToAbsent || calendarYear != null) {
      map['calendar_year'] = Variable<String>(calendarYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<String>(period);
    }
    if (!nullToAbsent || netIncome != null) {
      map['net_income'] = Variable<int>(netIncome);
    }
    if (!nullToAbsent || depreciationAndAmortization != null) {
      map['depreciation_and_amortization'] =
          Variable<int>(depreciationAndAmortization);
    }
    if (!nullToAbsent || deferredIncomeTax != null) {
      map['deferred_income_tax'] = Variable<int>(deferredIncomeTax);
    }
    if (!nullToAbsent || stockBasedCompensation != null) {
      map['stock_based_compensation'] = Variable<int>(stockBasedCompensation);
    }
    if (!nullToAbsent || changeInWorkingCapital != null) {
      map['change_in_working_capital'] = Variable<int>(changeInWorkingCapital);
    }
    if (!nullToAbsent || accountsReceivables != null) {
      map['accounts_receivables'] = Variable<int>(accountsReceivables);
    }
    if (!nullToAbsent || inventory != null) {
      map['inventory'] = Variable<int>(inventory);
    }
    if (!nullToAbsent || accountsPayables != null) {
      map['accounts_payables'] = Variable<int>(accountsPayables);
    }
    if (!nullToAbsent || otherWorkingCapital != null) {
      map['other_working_capital'] = Variable<int>(otherWorkingCapital);
    }
    if (!nullToAbsent || otherNonCashItems != null) {
      map['other_non_cash_items'] = Variable<int>(otherNonCashItems);
    }
    if (!nullToAbsent || netCashProvidedByOperatingActivities != null) {
      map['net_cash_provided_by_operating_activities'] =
          Variable<int>(netCashProvidedByOperatingActivities);
    }
    if (!nullToAbsent || investmentsInPropertyPlantAndEquipment != null) {
      map['investments_in_property_plant_and_equipment'] =
          Variable<int>(investmentsInPropertyPlantAndEquipment);
    }
    if (!nullToAbsent || acquisitionsNet != null) {
      map['acquisitions_net'] = Variable<int>(acquisitionsNet);
    }
    if (!nullToAbsent || purchasesOfInvestments != null) {
      map['purchases_of_investments'] = Variable<int>(purchasesOfInvestments);
    }
    if (!nullToAbsent || salesMaturitiesOfInvestments != null) {
      map['sales_maturities_of_investments'] =
          Variable<int>(salesMaturitiesOfInvestments);
    }
    if (!nullToAbsent || otherInvestingActivites != null) {
      map['other_investing_activites'] = Variable<int>(otherInvestingActivites);
    }
    if (!nullToAbsent || netCashUsedForInvestingActivites != null) {
      map['net_cash_used_for_investing_activites'] =
          Variable<int>(netCashUsedForInvestingActivites);
    }
    if (!nullToAbsent || debtRepayment != null) {
      map['debt_repayment'] = Variable<int>(debtRepayment);
    }
    if (!nullToAbsent || commonStockIssued != null) {
      map['common_stock_issued'] = Variable<int>(commonStockIssued);
    }
    if (!nullToAbsent || commonStockRepurchased != null) {
      map['common_stock_repurchased'] = Variable<int>(commonStockRepurchased);
    }
    if (!nullToAbsent || dividendsPaid != null) {
      map['dividends_paid'] = Variable<int>(dividendsPaid);
    }
    if (!nullToAbsent || otherFinancingActivites != null) {
      map['other_financing_activites'] = Variable<int>(otherFinancingActivites);
    }
    if (!nullToAbsent || netCashUsedProvidedByFinancingActivities != null) {
      map['net_cash_used_provided_by_financing_activities'] =
          Variable<int>(netCashUsedProvidedByFinancingActivities);
    }
    if (!nullToAbsent || effectOfForexChangesOnCash != null) {
      map['effect_of_forex_changes_on_cash'] =
          Variable<int>(effectOfForexChangesOnCash);
    }
    if (!nullToAbsent || netChangeInCash != null) {
      map['net_change_in_cash'] = Variable<int>(netChangeInCash);
    }
    if (!nullToAbsent || cashAtEndOfPeriod != null) {
      map['cash_at_end_of_period'] = Variable<int>(cashAtEndOfPeriod);
    }
    if (!nullToAbsent || cashAtBeginningOfPeriod != null) {
      map['cash_at_beginning_of_period'] =
          Variable<int>(cashAtBeginningOfPeriod);
    }
    if (!nullToAbsent || operatingCashFlow != null) {
      map['operating_cash_flow'] = Variable<int>(operatingCashFlow);
    }
    if (!nullToAbsent || capitalExpenditure != null) {
      map['capital_expenditure'] = Variable<int>(capitalExpenditure);
    }
    if (!nullToAbsent || freeCashFlow != null) {
      map['free_cash_flow'] = Variable<int>(freeCashFlow);
    }
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String>(link);
    }
    if (!nullToAbsent || finalLink != null) {
      map['final_link'] = Variable<String>(finalLink);
    }
    map['expires'] = Variable<DateTime>(expires);
    return map;
  }

  CashFlowStatementTableRowDefinitionCompanion toCompanion(bool nullToAbsent) {
    return CashFlowStatementTableRowDefinitionCompanion(
      date: Value(date),
      symbol: Value(symbol),
      reportedCurrency: reportedCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(reportedCurrency),
      cik: cik == null && nullToAbsent ? const Value.absent() : Value(cik),
      fillingDate: fillingDate == null && nullToAbsent
          ? const Value.absent()
          : Value(fillingDate),
      acceptedDate: acceptedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(acceptedDate),
      calendarYear: calendarYear == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      netIncome: netIncome == null && nullToAbsent
          ? const Value.absent()
          : Value(netIncome),
      depreciationAndAmortization:
          depreciationAndAmortization == null && nullToAbsent
              ? const Value.absent()
              : Value(depreciationAndAmortization),
      deferredIncomeTax: deferredIncomeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(deferredIncomeTax),
      stockBasedCompensation: stockBasedCompensation == null && nullToAbsent
          ? const Value.absent()
          : Value(stockBasedCompensation),
      changeInWorkingCapital: changeInWorkingCapital == null && nullToAbsent
          ? const Value.absent()
          : Value(changeInWorkingCapital),
      accountsReceivables: accountsReceivables == null && nullToAbsent
          ? const Value.absent()
          : Value(accountsReceivables),
      inventory: inventory == null && nullToAbsent
          ? const Value.absent()
          : Value(inventory),
      accountsPayables: accountsPayables == null && nullToAbsent
          ? const Value.absent()
          : Value(accountsPayables),
      otherWorkingCapital: otherWorkingCapital == null && nullToAbsent
          ? const Value.absent()
          : Value(otherWorkingCapital),
      otherNonCashItems: otherNonCashItems == null && nullToAbsent
          ? const Value.absent()
          : Value(otherNonCashItems),
      netCashProvidedByOperatingActivities:
          netCashProvidedByOperatingActivities == null && nullToAbsent
              ? const Value.absent()
              : Value(netCashProvidedByOperatingActivities),
      investmentsInPropertyPlantAndEquipment:
          investmentsInPropertyPlantAndEquipment == null && nullToAbsent
              ? const Value.absent()
              : Value(investmentsInPropertyPlantAndEquipment),
      acquisitionsNet: acquisitionsNet == null && nullToAbsent
          ? const Value.absent()
          : Value(acquisitionsNet),
      purchasesOfInvestments: purchasesOfInvestments == null && nullToAbsent
          ? const Value.absent()
          : Value(purchasesOfInvestments),
      salesMaturitiesOfInvestments:
          salesMaturitiesOfInvestments == null && nullToAbsent
              ? const Value.absent()
              : Value(salesMaturitiesOfInvestments),
      otherInvestingActivites: otherInvestingActivites == null && nullToAbsent
          ? const Value.absent()
          : Value(otherInvestingActivites),
      netCashUsedForInvestingActivites:
          netCashUsedForInvestingActivites == null && nullToAbsent
              ? const Value.absent()
              : Value(netCashUsedForInvestingActivites),
      debtRepayment: debtRepayment == null && nullToAbsent
          ? const Value.absent()
          : Value(debtRepayment),
      commonStockIssued: commonStockIssued == null && nullToAbsent
          ? const Value.absent()
          : Value(commonStockIssued),
      commonStockRepurchased: commonStockRepurchased == null && nullToAbsent
          ? const Value.absent()
          : Value(commonStockRepurchased),
      dividendsPaid: dividendsPaid == null && nullToAbsent
          ? const Value.absent()
          : Value(dividendsPaid),
      otherFinancingActivites: otherFinancingActivites == null && nullToAbsent
          ? const Value.absent()
          : Value(otherFinancingActivites),
      netCashUsedProvidedByFinancingActivities:
          netCashUsedProvidedByFinancingActivities == null && nullToAbsent
              ? const Value.absent()
              : Value(netCashUsedProvidedByFinancingActivities),
      effectOfForexChangesOnCash:
          effectOfForexChangesOnCash == null && nullToAbsent
              ? const Value.absent()
              : Value(effectOfForexChangesOnCash),
      netChangeInCash: netChangeInCash == null && nullToAbsent
          ? const Value.absent()
          : Value(netChangeInCash),
      cashAtEndOfPeriod: cashAtEndOfPeriod == null && nullToAbsent
          ? const Value.absent()
          : Value(cashAtEndOfPeriod),
      cashAtBeginningOfPeriod: cashAtBeginningOfPeriod == null && nullToAbsent
          ? const Value.absent()
          : Value(cashAtBeginningOfPeriod),
      operatingCashFlow: operatingCashFlow == null && nullToAbsent
          ? const Value.absent()
          : Value(operatingCashFlow),
      capitalExpenditure: capitalExpenditure == null && nullToAbsent
          ? const Value.absent()
          : Value(capitalExpenditure),
      freeCashFlow: freeCashFlow == null && nullToAbsent
          ? const Value.absent()
          : Value(freeCashFlow),
      link: link == null && nullToAbsent ? const Value.absent() : Value(link),
      finalLink: finalLink == null && nullToAbsent
          ? const Value.absent()
          : Value(finalLink),
      expires: Value(expires),
    );
  }

  factory CashFlowStatementTableRow.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CashFlowStatementTableRow(
      date: serializer.fromJson<String>(json['date']),
      symbol: serializer.fromJson<String>(json['symbol']),
      reportedCurrency: serializer.fromJson<String?>(json['reportedCurrency']),
      cik: serializer.fromJson<String?>(json['cik']),
      fillingDate: serializer.fromJson<String?>(json['fillingDate']),
      acceptedDate: serializer.fromJson<String?>(json['acceptedDate']),
      calendarYear: serializer.fromJson<String?>(json['calendarYear']),
      period: serializer.fromJson<String?>(json['period']),
      netIncome: serializer.fromJson<int?>(json['netIncome']),
      depreciationAndAmortization:
          serializer.fromJson<int?>(json['depreciationAndAmortization']),
      deferredIncomeTax: serializer.fromJson<int?>(json['deferredIncomeTax']),
      stockBasedCompensation:
          serializer.fromJson<int?>(json['stockBasedCompensation']),
      changeInWorkingCapital:
          serializer.fromJson<int?>(json['changeInWorkingCapital']),
      accountsReceivables:
          serializer.fromJson<int?>(json['accountsReceivables']),
      inventory: serializer.fromJson<int?>(json['inventory']),
      accountsPayables: serializer.fromJson<int?>(json['accountsPayables']),
      otherWorkingCapital:
          serializer.fromJson<int?>(json['otherWorkingCapital']),
      otherNonCashItems: serializer.fromJson<int?>(json['otherNonCashItems']),
      netCashProvidedByOperatingActivities: serializer
          .fromJson<int?>(json['netCashProvidedByOperatingActivities']),
      investmentsInPropertyPlantAndEquipment: serializer
          .fromJson<int?>(json['investmentsInPropertyPlantAndEquipment']),
      acquisitionsNet: serializer.fromJson<int?>(json['acquisitionsNet']),
      purchasesOfInvestments:
          serializer.fromJson<int?>(json['purchasesOfInvestments']),
      salesMaturitiesOfInvestments:
          serializer.fromJson<int?>(json['salesMaturitiesOfInvestments']),
      otherInvestingActivites:
          serializer.fromJson<int?>(json['otherInvestingActivites']),
      netCashUsedForInvestingActivites:
          serializer.fromJson<int?>(json['netCashUsedForInvestingActivites']),
      debtRepayment: serializer.fromJson<int?>(json['debtRepayment']),
      commonStockIssued: serializer.fromJson<int?>(json['commonStockIssued']),
      commonStockRepurchased:
          serializer.fromJson<int?>(json['commonStockRepurchased']),
      dividendsPaid: serializer.fromJson<int?>(json['dividendsPaid']),
      otherFinancingActivites:
          serializer.fromJson<int?>(json['otherFinancingActivites']),
      netCashUsedProvidedByFinancingActivities: serializer
          .fromJson<int?>(json['netCashUsedProvidedByFinancingActivities']),
      effectOfForexChangesOnCash:
          serializer.fromJson<int?>(json['effectOfForexChangesOnCash']),
      netChangeInCash: serializer.fromJson<int?>(json['netChangeInCash']),
      cashAtEndOfPeriod: serializer.fromJson<int?>(json['cashAtEndOfPeriod']),
      cashAtBeginningOfPeriod:
          serializer.fromJson<int?>(json['cashAtBeginningOfPeriod']),
      operatingCashFlow: serializer.fromJson<int?>(json['operatingCashFlow']),
      capitalExpenditure: serializer.fromJson<int?>(json['capitalExpenditure']),
      freeCashFlow: serializer.fromJson<int?>(json['freeCashFlow']),
      link: serializer.fromJson<String?>(json['link']),
      finalLink: serializer.fromJson<String?>(json['finalLink']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<String>(date),
      'symbol': serializer.toJson<String>(symbol),
      'reportedCurrency': serializer.toJson<String?>(reportedCurrency),
      'cik': serializer.toJson<String?>(cik),
      'fillingDate': serializer.toJson<String?>(fillingDate),
      'acceptedDate': serializer.toJson<String?>(acceptedDate),
      'calendarYear': serializer.toJson<String?>(calendarYear),
      'period': serializer.toJson<String?>(period),
      'netIncome': serializer.toJson<int?>(netIncome),
      'depreciationAndAmortization':
          serializer.toJson<int?>(depreciationAndAmortization),
      'deferredIncomeTax': serializer.toJson<int?>(deferredIncomeTax),
      'stockBasedCompensation': serializer.toJson<int?>(stockBasedCompensation),
      'changeInWorkingCapital': serializer.toJson<int?>(changeInWorkingCapital),
      'accountsReceivables': serializer.toJson<int?>(accountsReceivables),
      'inventory': serializer.toJson<int?>(inventory),
      'accountsPayables': serializer.toJson<int?>(accountsPayables),
      'otherWorkingCapital': serializer.toJson<int?>(otherWorkingCapital),
      'otherNonCashItems': serializer.toJson<int?>(otherNonCashItems),
      'netCashProvidedByOperatingActivities':
          serializer.toJson<int?>(netCashProvidedByOperatingActivities),
      'investmentsInPropertyPlantAndEquipment':
          serializer.toJson<int?>(investmentsInPropertyPlantAndEquipment),
      'acquisitionsNet': serializer.toJson<int?>(acquisitionsNet),
      'purchasesOfInvestments': serializer.toJson<int?>(purchasesOfInvestments),
      'salesMaturitiesOfInvestments':
          serializer.toJson<int?>(salesMaturitiesOfInvestments),
      'otherInvestingActivites':
          serializer.toJson<int?>(otherInvestingActivites),
      'netCashUsedForInvestingActivites':
          serializer.toJson<int?>(netCashUsedForInvestingActivites),
      'debtRepayment': serializer.toJson<int?>(debtRepayment),
      'commonStockIssued': serializer.toJson<int?>(commonStockIssued),
      'commonStockRepurchased': serializer.toJson<int?>(commonStockRepurchased),
      'dividendsPaid': serializer.toJson<int?>(dividendsPaid),
      'otherFinancingActivites':
          serializer.toJson<int?>(otherFinancingActivites),
      'netCashUsedProvidedByFinancingActivities':
          serializer.toJson<int?>(netCashUsedProvidedByFinancingActivities),
      'effectOfForexChangesOnCash':
          serializer.toJson<int?>(effectOfForexChangesOnCash),
      'netChangeInCash': serializer.toJson<int?>(netChangeInCash),
      'cashAtEndOfPeriod': serializer.toJson<int?>(cashAtEndOfPeriod),
      'cashAtBeginningOfPeriod':
          serializer.toJson<int?>(cashAtBeginningOfPeriod),
      'operatingCashFlow': serializer.toJson<int?>(operatingCashFlow),
      'capitalExpenditure': serializer.toJson<int?>(capitalExpenditure),
      'freeCashFlow': serializer.toJson<int?>(freeCashFlow),
      'link': serializer.toJson<String?>(link),
      'finalLink': serializer.toJson<String?>(finalLink),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  CashFlowStatementTableRow copyWith(
          {String? date,
          String? symbol,
          Value<String?> reportedCurrency = const Value.absent(),
          Value<String?> cik = const Value.absent(),
          Value<String?> fillingDate = const Value.absent(),
          Value<String?> acceptedDate = const Value.absent(),
          Value<String?> calendarYear = const Value.absent(),
          Value<String?> period = const Value.absent(),
          Value<int?> netIncome = const Value.absent(),
          Value<int?> depreciationAndAmortization = const Value.absent(),
          Value<int?> deferredIncomeTax = const Value.absent(),
          Value<int?> stockBasedCompensation = const Value.absent(),
          Value<int?> changeInWorkingCapital = const Value.absent(),
          Value<int?> accountsReceivables = const Value.absent(),
          Value<int?> inventory = const Value.absent(),
          Value<int?> accountsPayables = const Value.absent(),
          Value<int?> otherWorkingCapital = const Value.absent(),
          Value<int?> otherNonCashItems = const Value.absent(),
          Value<int?> netCashProvidedByOperatingActivities =
              const Value.absent(),
          Value<int?> investmentsInPropertyPlantAndEquipment =
              const Value.absent(),
          Value<int?> acquisitionsNet = const Value.absent(),
          Value<int?> purchasesOfInvestments = const Value.absent(),
          Value<int?> salesMaturitiesOfInvestments = const Value.absent(),
          Value<int?> otherInvestingActivites = const Value.absent(),
          Value<int?> netCashUsedForInvestingActivites = const Value.absent(),
          Value<int?> debtRepayment = const Value.absent(),
          Value<int?> commonStockIssued = const Value.absent(),
          Value<int?> commonStockRepurchased = const Value.absent(),
          Value<int?> dividendsPaid = const Value.absent(),
          Value<int?> otherFinancingActivites = const Value.absent(),
          Value<int?> netCashUsedProvidedByFinancingActivities =
              const Value.absent(),
          Value<int?> effectOfForexChangesOnCash = const Value.absent(),
          Value<int?> netChangeInCash = const Value.absent(),
          Value<int?> cashAtEndOfPeriod = const Value.absent(),
          Value<int?> cashAtBeginningOfPeriod = const Value.absent(),
          Value<int?> operatingCashFlow = const Value.absent(),
          Value<int?> capitalExpenditure = const Value.absent(),
          Value<int?> freeCashFlow = const Value.absent(),
          Value<String?> link = const Value.absent(),
          Value<String?> finalLink = const Value.absent(),
          DateTime? expires}) =>
      CashFlowStatementTableRow(
        date: date ?? this.date,
        symbol: symbol ?? this.symbol,
        reportedCurrency: reportedCurrency.present
            ? reportedCurrency.value
            : this.reportedCurrency,
        cik: cik.present ? cik.value : this.cik,
        fillingDate: fillingDate.present ? fillingDate.value : this.fillingDate,
        acceptedDate:
            acceptedDate.present ? acceptedDate.value : this.acceptedDate,
        calendarYear:
            calendarYear.present ? calendarYear.value : this.calendarYear,
        period: period.present ? period.value : this.period,
        netIncome: netIncome.present ? netIncome.value : this.netIncome,
        depreciationAndAmortization: depreciationAndAmortization.present
            ? depreciationAndAmortization.value
            : this.depreciationAndAmortization,
        deferredIncomeTax: deferredIncomeTax.present
            ? deferredIncomeTax.value
            : this.deferredIncomeTax,
        stockBasedCompensation: stockBasedCompensation.present
            ? stockBasedCompensation.value
            : this.stockBasedCompensation,
        changeInWorkingCapital: changeInWorkingCapital.present
            ? changeInWorkingCapital.value
            : this.changeInWorkingCapital,
        accountsReceivables: accountsReceivables.present
            ? accountsReceivables.value
            : this.accountsReceivables,
        inventory: inventory.present ? inventory.value : this.inventory,
        accountsPayables: accountsPayables.present
            ? accountsPayables.value
            : this.accountsPayables,
        otherWorkingCapital: otherWorkingCapital.present
            ? otherWorkingCapital.value
            : this.otherWorkingCapital,
        otherNonCashItems: otherNonCashItems.present
            ? otherNonCashItems.value
            : this.otherNonCashItems,
        netCashProvidedByOperatingActivities:
            netCashProvidedByOperatingActivities.present
                ? netCashProvidedByOperatingActivities.value
                : this.netCashProvidedByOperatingActivities,
        investmentsInPropertyPlantAndEquipment:
            investmentsInPropertyPlantAndEquipment.present
                ? investmentsInPropertyPlantAndEquipment.value
                : this.investmentsInPropertyPlantAndEquipment,
        acquisitionsNet: acquisitionsNet.present
            ? acquisitionsNet.value
            : this.acquisitionsNet,
        purchasesOfInvestments: purchasesOfInvestments.present
            ? purchasesOfInvestments.value
            : this.purchasesOfInvestments,
        salesMaturitiesOfInvestments: salesMaturitiesOfInvestments.present
            ? salesMaturitiesOfInvestments.value
            : this.salesMaturitiesOfInvestments,
        otherInvestingActivites: otherInvestingActivites.present
            ? otherInvestingActivites.value
            : this.otherInvestingActivites,
        netCashUsedForInvestingActivites:
            netCashUsedForInvestingActivites.present
                ? netCashUsedForInvestingActivites.value
                : this.netCashUsedForInvestingActivites,
        debtRepayment:
            debtRepayment.present ? debtRepayment.value : this.debtRepayment,
        commonStockIssued: commonStockIssued.present
            ? commonStockIssued.value
            : this.commonStockIssued,
        commonStockRepurchased: commonStockRepurchased.present
            ? commonStockRepurchased.value
            : this.commonStockRepurchased,
        dividendsPaid:
            dividendsPaid.present ? dividendsPaid.value : this.dividendsPaid,
        otherFinancingActivites: otherFinancingActivites.present
            ? otherFinancingActivites.value
            : this.otherFinancingActivites,
        netCashUsedProvidedByFinancingActivities:
            netCashUsedProvidedByFinancingActivities.present
                ? netCashUsedProvidedByFinancingActivities.value
                : this.netCashUsedProvidedByFinancingActivities,
        effectOfForexChangesOnCash: effectOfForexChangesOnCash.present
            ? effectOfForexChangesOnCash.value
            : this.effectOfForexChangesOnCash,
        netChangeInCash: netChangeInCash.present
            ? netChangeInCash.value
            : this.netChangeInCash,
        cashAtEndOfPeriod: cashAtEndOfPeriod.present
            ? cashAtEndOfPeriod.value
            : this.cashAtEndOfPeriod,
        cashAtBeginningOfPeriod: cashAtBeginningOfPeriod.present
            ? cashAtBeginningOfPeriod.value
            : this.cashAtBeginningOfPeriod,
        operatingCashFlow: operatingCashFlow.present
            ? operatingCashFlow.value
            : this.operatingCashFlow,
        capitalExpenditure: capitalExpenditure.present
            ? capitalExpenditure.value
            : this.capitalExpenditure,
        freeCashFlow:
            freeCashFlow.present ? freeCashFlow.value : this.freeCashFlow,
        link: link.present ? link.value : this.link,
        finalLink: finalLink.present ? finalLink.value : this.finalLink,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('CashFlowStatementTableRow(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('reportedCurrency: $reportedCurrency, ')
          ..write('cik: $cik, ')
          ..write('fillingDate: $fillingDate, ')
          ..write('acceptedDate: $acceptedDate, ')
          ..write('calendarYear: $calendarYear, ')
          ..write('period: $period, ')
          ..write('netIncome: $netIncome, ')
          ..write('depreciationAndAmortization: $depreciationAndAmortization, ')
          ..write('deferredIncomeTax: $deferredIncomeTax, ')
          ..write('stockBasedCompensation: $stockBasedCompensation, ')
          ..write('changeInWorkingCapital: $changeInWorkingCapital, ')
          ..write('accountsReceivables: $accountsReceivables, ')
          ..write('inventory: $inventory, ')
          ..write('accountsPayables: $accountsPayables, ')
          ..write('otherWorkingCapital: $otherWorkingCapital, ')
          ..write('otherNonCashItems: $otherNonCashItems, ')
          ..write(
              'netCashProvidedByOperatingActivities: $netCashProvidedByOperatingActivities, ')
          ..write(
              'investmentsInPropertyPlantAndEquipment: $investmentsInPropertyPlantAndEquipment, ')
          ..write('acquisitionsNet: $acquisitionsNet, ')
          ..write('purchasesOfInvestments: $purchasesOfInvestments, ')
          ..write(
              'salesMaturitiesOfInvestments: $salesMaturitiesOfInvestments, ')
          ..write('otherInvestingActivites: $otherInvestingActivites, ')
          ..write(
              'netCashUsedForInvestingActivites: $netCashUsedForInvestingActivites, ')
          ..write('debtRepayment: $debtRepayment, ')
          ..write('commonStockIssued: $commonStockIssued, ')
          ..write('commonStockRepurchased: $commonStockRepurchased, ')
          ..write('dividendsPaid: $dividendsPaid, ')
          ..write('otherFinancingActivites: $otherFinancingActivites, ')
          ..write(
              'netCashUsedProvidedByFinancingActivities: $netCashUsedProvidedByFinancingActivities, ')
          ..write('effectOfForexChangesOnCash: $effectOfForexChangesOnCash, ')
          ..write('netChangeInCash: $netChangeInCash, ')
          ..write('cashAtEndOfPeriod: $cashAtEndOfPeriod, ')
          ..write('cashAtBeginningOfPeriod: $cashAtBeginningOfPeriod, ')
          ..write('operatingCashFlow: $operatingCashFlow, ')
          ..write('capitalExpenditure: $capitalExpenditure, ')
          ..write('freeCashFlow: $freeCashFlow, ')
          ..write('link: $link, ')
          ..write('finalLink: $finalLink, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        date,
        symbol,
        reportedCurrency,
        cik,
        fillingDate,
        acceptedDate,
        calendarYear,
        period,
        netIncome,
        depreciationAndAmortization,
        deferredIncomeTax,
        stockBasedCompensation,
        changeInWorkingCapital,
        accountsReceivables,
        inventory,
        accountsPayables,
        otherWorkingCapital,
        otherNonCashItems,
        netCashProvidedByOperatingActivities,
        investmentsInPropertyPlantAndEquipment,
        acquisitionsNet,
        purchasesOfInvestments,
        salesMaturitiesOfInvestments,
        otherInvestingActivites,
        netCashUsedForInvestingActivites,
        debtRepayment,
        commonStockIssued,
        commonStockRepurchased,
        dividendsPaid,
        otherFinancingActivites,
        netCashUsedProvidedByFinancingActivities,
        effectOfForexChangesOnCash,
        netChangeInCash,
        cashAtEndOfPeriod,
        cashAtBeginningOfPeriod,
        operatingCashFlow,
        capitalExpenditure,
        freeCashFlow,
        link,
        finalLink,
        expires
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CashFlowStatementTableRow &&
          other.date == this.date &&
          other.symbol == this.symbol &&
          other.reportedCurrency == this.reportedCurrency &&
          other.cik == this.cik &&
          other.fillingDate == this.fillingDate &&
          other.acceptedDate == this.acceptedDate &&
          other.calendarYear == this.calendarYear &&
          other.period == this.period &&
          other.netIncome == this.netIncome &&
          other.depreciationAndAmortization ==
              this.depreciationAndAmortization &&
          other.deferredIncomeTax == this.deferredIncomeTax &&
          other.stockBasedCompensation == this.stockBasedCompensation &&
          other.changeInWorkingCapital == this.changeInWorkingCapital &&
          other.accountsReceivables == this.accountsReceivables &&
          other.inventory == this.inventory &&
          other.accountsPayables == this.accountsPayables &&
          other.otherWorkingCapital == this.otherWorkingCapital &&
          other.otherNonCashItems == this.otherNonCashItems &&
          other.netCashProvidedByOperatingActivities ==
              this.netCashProvidedByOperatingActivities &&
          other.investmentsInPropertyPlantAndEquipment ==
              this.investmentsInPropertyPlantAndEquipment &&
          other.acquisitionsNet == this.acquisitionsNet &&
          other.purchasesOfInvestments == this.purchasesOfInvestments &&
          other.salesMaturitiesOfInvestments ==
              this.salesMaturitiesOfInvestments &&
          other.otherInvestingActivites == this.otherInvestingActivites &&
          other.netCashUsedForInvestingActivites ==
              this.netCashUsedForInvestingActivites &&
          other.debtRepayment == this.debtRepayment &&
          other.commonStockIssued == this.commonStockIssued &&
          other.commonStockRepurchased == this.commonStockRepurchased &&
          other.dividendsPaid == this.dividendsPaid &&
          other.otherFinancingActivites == this.otherFinancingActivites &&
          other.netCashUsedProvidedByFinancingActivities ==
              this.netCashUsedProvidedByFinancingActivities &&
          other.effectOfForexChangesOnCash == this.effectOfForexChangesOnCash &&
          other.netChangeInCash == this.netChangeInCash &&
          other.cashAtEndOfPeriod == this.cashAtEndOfPeriod &&
          other.cashAtBeginningOfPeriod == this.cashAtBeginningOfPeriod &&
          other.operatingCashFlow == this.operatingCashFlow &&
          other.capitalExpenditure == this.capitalExpenditure &&
          other.freeCashFlow == this.freeCashFlow &&
          other.link == this.link &&
          other.finalLink == this.finalLink &&
          other.expires == this.expires);
}

class CashFlowStatementTableRowDefinitionCompanion
    extends UpdateCompanion<CashFlowStatementTableRow> {
  final Value<String> date;
  final Value<String> symbol;
  final Value<String?> reportedCurrency;
  final Value<String?> cik;
  final Value<String?> fillingDate;
  final Value<String?> acceptedDate;
  final Value<String?> calendarYear;
  final Value<String?> period;
  final Value<int?> netIncome;
  final Value<int?> depreciationAndAmortization;
  final Value<int?> deferredIncomeTax;
  final Value<int?> stockBasedCompensation;
  final Value<int?> changeInWorkingCapital;
  final Value<int?> accountsReceivables;
  final Value<int?> inventory;
  final Value<int?> accountsPayables;
  final Value<int?> otherWorkingCapital;
  final Value<int?> otherNonCashItems;
  final Value<int?> netCashProvidedByOperatingActivities;
  final Value<int?> investmentsInPropertyPlantAndEquipment;
  final Value<int?> acquisitionsNet;
  final Value<int?> purchasesOfInvestments;
  final Value<int?> salesMaturitiesOfInvestments;
  final Value<int?> otherInvestingActivites;
  final Value<int?> netCashUsedForInvestingActivites;
  final Value<int?> debtRepayment;
  final Value<int?> commonStockIssued;
  final Value<int?> commonStockRepurchased;
  final Value<int?> dividendsPaid;
  final Value<int?> otherFinancingActivites;
  final Value<int?> netCashUsedProvidedByFinancingActivities;
  final Value<int?> effectOfForexChangesOnCash;
  final Value<int?> netChangeInCash;
  final Value<int?> cashAtEndOfPeriod;
  final Value<int?> cashAtBeginningOfPeriod;
  final Value<int?> operatingCashFlow;
  final Value<int?> capitalExpenditure;
  final Value<int?> freeCashFlow;
  final Value<String?> link;
  final Value<String?> finalLink;
  final Value<DateTime> expires;
  final Value<int> rowid;
  const CashFlowStatementTableRowDefinitionCompanion({
    this.date = const Value.absent(),
    this.symbol = const Value.absent(),
    this.reportedCurrency = const Value.absent(),
    this.cik = const Value.absent(),
    this.fillingDate = const Value.absent(),
    this.acceptedDate = const Value.absent(),
    this.calendarYear = const Value.absent(),
    this.period = const Value.absent(),
    this.netIncome = const Value.absent(),
    this.depreciationAndAmortization = const Value.absent(),
    this.deferredIncomeTax = const Value.absent(),
    this.stockBasedCompensation = const Value.absent(),
    this.changeInWorkingCapital = const Value.absent(),
    this.accountsReceivables = const Value.absent(),
    this.inventory = const Value.absent(),
    this.accountsPayables = const Value.absent(),
    this.otherWorkingCapital = const Value.absent(),
    this.otherNonCashItems = const Value.absent(),
    this.netCashProvidedByOperatingActivities = const Value.absent(),
    this.investmentsInPropertyPlantAndEquipment = const Value.absent(),
    this.acquisitionsNet = const Value.absent(),
    this.purchasesOfInvestments = const Value.absent(),
    this.salesMaturitiesOfInvestments = const Value.absent(),
    this.otherInvestingActivites = const Value.absent(),
    this.netCashUsedForInvestingActivites = const Value.absent(),
    this.debtRepayment = const Value.absent(),
    this.commonStockIssued = const Value.absent(),
    this.commonStockRepurchased = const Value.absent(),
    this.dividendsPaid = const Value.absent(),
    this.otherFinancingActivites = const Value.absent(),
    this.netCashUsedProvidedByFinancingActivities = const Value.absent(),
    this.effectOfForexChangesOnCash = const Value.absent(),
    this.netChangeInCash = const Value.absent(),
    this.cashAtEndOfPeriod = const Value.absent(),
    this.cashAtBeginningOfPeriod = const Value.absent(),
    this.operatingCashFlow = const Value.absent(),
    this.capitalExpenditure = const Value.absent(),
    this.freeCashFlow = const Value.absent(),
    this.link = const Value.absent(),
    this.finalLink = const Value.absent(),
    this.expires = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CashFlowStatementTableRowDefinitionCompanion.insert({
    required String date,
    required String symbol,
    this.reportedCurrency = const Value.absent(),
    this.cik = const Value.absent(),
    this.fillingDate = const Value.absent(),
    this.acceptedDate = const Value.absent(),
    this.calendarYear = const Value.absent(),
    this.period = const Value.absent(),
    this.netIncome = const Value.absent(),
    this.depreciationAndAmortization = const Value.absent(),
    this.deferredIncomeTax = const Value.absent(),
    this.stockBasedCompensation = const Value.absent(),
    this.changeInWorkingCapital = const Value.absent(),
    this.accountsReceivables = const Value.absent(),
    this.inventory = const Value.absent(),
    this.accountsPayables = const Value.absent(),
    this.otherWorkingCapital = const Value.absent(),
    this.otherNonCashItems = const Value.absent(),
    this.netCashProvidedByOperatingActivities = const Value.absent(),
    this.investmentsInPropertyPlantAndEquipment = const Value.absent(),
    this.acquisitionsNet = const Value.absent(),
    this.purchasesOfInvestments = const Value.absent(),
    this.salesMaturitiesOfInvestments = const Value.absent(),
    this.otherInvestingActivites = const Value.absent(),
    this.netCashUsedForInvestingActivites = const Value.absent(),
    this.debtRepayment = const Value.absent(),
    this.commonStockIssued = const Value.absent(),
    this.commonStockRepurchased = const Value.absent(),
    this.dividendsPaid = const Value.absent(),
    this.otherFinancingActivites = const Value.absent(),
    this.netCashUsedProvidedByFinancingActivities = const Value.absent(),
    this.effectOfForexChangesOnCash = const Value.absent(),
    this.netChangeInCash = const Value.absent(),
    this.cashAtEndOfPeriod = const Value.absent(),
    this.cashAtBeginningOfPeriod = const Value.absent(),
    this.operatingCashFlow = const Value.absent(),
    this.capitalExpenditure = const Value.absent(),
    this.freeCashFlow = const Value.absent(),
    this.link = const Value.absent(),
    this.finalLink = const Value.absent(),
    required DateTime expires,
    this.rowid = const Value.absent(),
  })  : date = Value(date),
        symbol = Value(symbol),
        expires = Value(expires);
  static Insertable<CashFlowStatementTableRow> custom({
    Expression<String>? date,
    Expression<String>? symbol,
    Expression<String>? reportedCurrency,
    Expression<String>? cik,
    Expression<String>? fillingDate,
    Expression<String>? acceptedDate,
    Expression<String>? calendarYear,
    Expression<String>? period,
    Expression<int>? netIncome,
    Expression<int>? depreciationAndAmortization,
    Expression<int>? deferredIncomeTax,
    Expression<int>? stockBasedCompensation,
    Expression<int>? changeInWorkingCapital,
    Expression<int>? accountsReceivables,
    Expression<int>? inventory,
    Expression<int>? accountsPayables,
    Expression<int>? otherWorkingCapital,
    Expression<int>? otherNonCashItems,
    Expression<int>? netCashProvidedByOperatingActivities,
    Expression<int>? investmentsInPropertyPlantAndEquipment,
    Expression<int>? acquisitionsNet,
    Expression<int>? purchasesOfInvestments,
    Expression<int>? salesMaturitiesOfInvestments,
    Expression<int>? otherInvestingActivites,
    Expression<int>? netCashUsedForInvestingActivites,
    Expression<int>? debtRepayment,
    Expression<int>? commonStockIssued,
    Expression<int>? commonStockRepurchased,
    Expression<int>? dividendsPaid,
    Expression<int>? otherFinancingActivites,
    Expression<int>? netCashUsedProvidedByFinancingActivities,
    Expression<int>? effectOfForexChangesOnCash,
    Expression<int>? netChangeInCash,
    Expression<int>? cashAtEndOfPeriod,
    Expression<int>? cashAtBeginningOfPeriod,
    Expression<int>? operatingCashFlow,
    Expression<int>? capitalExpenditure,
    Expression<int>? freeCashFlow,
    Expression<String>? link,
    Expression<String>? finalLink,
    Expression<DateTime>? expires,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (symbol != null) 'symbol': symbol,
      if (reportedCurrency != null) 'reported_currency': reportedCurrency,
      if (cik != null) 'cik': cik,
      if (fillingDate != null) 'filling_date': fillingDate,
      if (acceptedDate != null) 'accepted_date': acceptedDate,
      if (calendarYear != null) 'calendar_year': calendarYear,
      if (period != null) 'period': period,
      if (netIncome != null) 'net_income': netIncome,
      if (depreciationAndAmortization != null)
        'depreciation_and_amortization': depreciationAndAmortization,
      if (deferredIncomeTax != null) 'deferred_income_tax': deferredIncomeTax,
      if (stockBasedCompensation != null)
        'stock_based_compensation': stockBasedCompensation,
      if (changeInWorkingCapital != null)
        'change_in_working_capital': changeInWorkingCapital,
      if (accountsReceivables != null)
        'accounts_receivables': accountsReceivables,
      if (inventory != null) 'inventory': inventory,
      if (accountsPayables != null) 'accounts_payables': accountsPayables,
      if (otherWorkingCapital != null)
        'other_working_capital': otherWorkingCapital,
      if (otherNonCashItems != null) 'other_non_cash_items': otherNonCashItems,
      if (netCashProvidedByOperatingActivities != null)
        'net_cash_provided_by_operating_activities':
            netCashProvidedByOperatingActivities,
      if (investmentsInPropertyPlantAndEquipment != null)
        'investments_in_property_plant_and_equipment':
            investmentsInPropertyPlantAndEquipment,
      if (acquisitionsNet != null) 'acquisitions_net': acquisitionsNet,
      if (purchasesOfInvestments != null)
        'purchases_of_investments': purchasesOfInvestments,
      if (salesMaturitiesOfInvestments != null)
        'sales_maturities_of_investments': salesMaturitiesOfInvestments,
      if (otherInvestingActivites != null)
        'other_investing_activites': otherInvestingActivites,
      if (netCashUsedForInvestingActivites != null)
        'net_cash_used_for_investing_activites':
            netCashUsedForInvestingActivites,
      if (debtRepayment != null) 'debt_repayment': debtRepayment,
      if (commonStockIssued != null) 'common_stock_issued': commonStockIssued,
      if (commonStockRepurchased != null)
        'common_stock_repurchased': commonStockRepurchased,
      if (dividendsPaid != null) 'dividends_paid': dividendsPaid,
      if (otherFinancingActivites != null)
        'other_financing_activites': otherFinancingActivites,
      if (netCashUsedProvidedByFinancingActivities != null)
        'net_cash_used_provided_by_financing_activities':
            netCashUsedProvidedByFinancingActivities,
      if (effectOfForexChangesOnCash != null)
        'effect_of_forex_changes_on_cash': effectOfForexChangesOnCash,
      if (netChangeInCash != null) 'net_change_in_cash': netChangeInCash,
      if (cashAtEndOfPeriod != null) 'cash_at_end_of_period': cashAtEndOfPeriod,
      if (cashAtBeginningOfPeriod != null)
        'cash_at_beginning_of_period': cashAtBeginningOfPeriod,
      if (operatingCashFlow != null) 'operating_cash_flow': operatingCashFlow,
      if (capitalExpenditure != null) 'capital_expenditure': capitalExpenditure,
      if (freeCashFlow != null) 'free_cash_flow': freeCashFlow,
      if (link != null) 'link': link,
      if (finalLink != null) 'final_link': finalLink,
      if (expires != null) 'expires': expires,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CashFlowStatementTableRowDefinitionCompanion copyWith(
      {Value<String>? date,
      Value<String>? symbol,
      Value<String?>? reportedCurrency,
      Value<String?>? cik,
      Value<String?>? fillingDate,
      Value<String?>? acceptedDate,
      Value<String?>? calendarYear,
      Value<String?>? period,
      Value<int?>? netIncome,
      Value<int?>? depreciationAndAmortization,
      Value<int?>? deferredIncomeTax,
      Value<int?>? stockBasedCompensation,
      Value<int?>? changeInWorkingCapital,
      Value<int?>? accountsReceivables,
      Value<int?>? inventory,
      Value<int?>? accountsPayables,
      Value<int?>? otherWorkingCapital,
      Value<int?>? otherNonCashItems,
      Value<int?>? netCashProvidedByOperatingActivities,
      Value<int?>? investmentsInPropertyPlantAndEquipment,
      Value<int?>? acquisitionsNet,
      Value<int?>? purchasesOfInvestments,
      Value<int?>? salesMaturitiesOfInvestments,
      Value<int?>? otherInvestingActivites,
      Value<int?>? netCashUsedForInvestingActivites,
      Value<int?>? debtRepayment,
      Value<int?>? commonStockIssued,
      Value<int?>? commonStockRepurchased,
      Value<int?>? dividendsPaid,
      Value<int?>? otherFinancingActivites,
      Value<int?>? netCashUsedProvidedByFinancingActivities,
      Value<int?>? effectOfForexChangesOnCash,
      Value<int?>? netChangeInCash,
      Value<int?>? cashAtEndOfPeriod,
      Value<int?>? cashAtBeginningOfPeriod,
      Value<int?>? operatingCashFlow,
      Value<int?>? capitalExpenditure,
      Value<int?>? freeCashFlow,
      Value<String?>? link,
      Value<String?>? finalLink,
      Value<DateTime>? expires,
      Value<int>? rowid}) {
    return CashFlowStatementTableRowDefinitionCompanion(
      date: date ?? this.date,
      symbol: symbol ?? this.symbol,
      reportedCurrency: reportedCurrency ?? this.reportedCurrency,
      cik: cik ?? this.cik,
      fillingDate: fillingDate ?? this.fillingDate,
      acceptedDate: acceptedDate ?? this.acceptedDate,
      calendarYear: calendarYear ?? this.calendarYear,
      period: period ?? this.period,
      netIncome: netIncome ?? this.netIncome,
      depreciationAndAmortization:
          depreciationAndAmortization ?? this.depreciationAndAmortization,
      deferredIncomeTax: deferredIncomeTax ?? this.deferredIncomeTax,
      stockBasedCompensation:
          stockBasedCompensation ?? this.stockBasedCompensation,
      changeInWorkingCapital:
          changeInWorkingCapital ?? this.changeInWorkingCapital,
      accountsReceivables: accountsReceivables ?? this.accountsReceivables,
      inventory: inventory ?? this.inventory,
      accountsPayables: accountsPayables ?? this.accountsPayables,
      otherWorkingCapital: otherWorkingCapital ?? this.otherWorkingCapital,
      otherNonCashItems: otherNonCashItems ?? this.otherNonCashItems,
      netCashProvidedByOperatingActivities:
          netCashProvidedByOperatingActivities ??
              this.netCashProvidedByOperatingActivities,
      investmentsInPropertyPlantAndEquipment:
          investmentsInPropertyPlantAndEquipment ??
              this.investmentsInPropertyPlantAndEquipment,
      acquisitionsNet: acquisitionsNet ?? this.acquisitionsNet,
      purchasesOfInvestments:
          purchasesOfInvestments ?? this.purchasesOfInvestments,
      salesMaturitiesOfInvestments:
          salesMaturitiesOfInvestments ?? this.salesMaturitiesOfInvestments,
      otherInvestingActivites:
          otherInvestingActivites ?? this.otherInvestingActivites,
      netCashUsedForInvestingActivites: netCashUsedForInvestingActivites ??
          this.netCashUsedForInvestingActivites,
      debtRepayment: debtRepayment ?? this.debtRepayment,
      commonStockIssued: commonStockIssued ?? this.commonStockIssued,
      commonStockRepurchased:
          commonStockRepurchased ?? this.commonStockRepurchased,
      dividendsPaid: dividendsPaid ?? this.dividendsPaid,
      otherFinancingActivites:
          otherFinancingActivites ?? this.otherFinancingActivites,
      netCashUsedProvidedByFinancingActivities:
          netCashUsedProvidedByFinancingActivities ??
              this.netCashUsedProvidedByFinancingActivities,
      effectOfForexChangesOnCash:
          effectOfForexChangesOnCash ?? this.effectOfForexChangesOnCash,
      netChangeInCash: netChangeInCash ?? this.netChangeInCash,
      cashAtEndOfPeriod: cashAtEndOfPeriod ?? this.cashAtEndOfPeriod,
      cashAtBeginningOfPeriod:
          cashAtBeginningOfPeriod ?? this.cashAtBeginningOfPeriod,
      operatingCashFlow: operatingCashFlow ?? this.operatingCashFlow,
      capitalExpenditure: capitalExpenditure ?? this.capitalExpenditure,
      freeCashFlow: freeCashFlow ?? this.freeCashFlow,
      link: link ?? this.link,
      finalLink: finalLink ?? this.finalLink,
      expires: expires ?? this.expires,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (reportedCurrency.present) {
      map['reported_currency'] = Variable<String>(reportedCurrency.value);
    }
    if (cik.present) {
      map['cik'] = Variable<String>(cik.value);
    }
    if (fillingDate.present) {
      map['filling_date'] = Variable<String>(fillingDate.value);
    }
    if (acceptedDate.present) {
      map['accepted_date'] = Variable<String>(acceptedDate.value);
    }
    if (calendarYear.present) {
      map['calendar_year'] = Variable<String>(calendarYear.value);
    }
    if (period.present) {
      map['period'] = Variable<String>(period.value);
    }
    if (netIncome.present) {
      map['net_income'] = Variable<int>(netIncome.value);
    }
    if (depreciationAndAmortization.present) {
      map['depreciation_and_amortization'] =
          Variable<int>(depreciationAndAmortization.value);
    }
    if (deferredIncomeTax.present) {
      map['deferred_income_tax'] = Variable<int>(deferredIncomeTax.value);
    }
    if (stockBasedCompensation.present) {
      map['stock_based_compensation'] =
          Variable<int>(stockBasedCompensation.value);
    }
    if (changeInWorkingCapital.present) {
      map['change_in_working_capital'] =
          Variable<int>(changeInWorkingCapital.value);
    }
    if (accountsReceivables.present) {
      map['accounts_receivables'] = Variable<int>(accountsReceivables.value);
    }
    if (inventory.present) {
      map['inventory'] = Variable<int>(inventory.value);
    }
    if (accountsPayables.present) {
      map['accounts_payables'] = Variable<int>(accountsPayables.value);
    }
    if (otherWorkingCapital.present) {
      map['other_working_capital'] = Variable<int>(otherWorkingCapital.value);
    }
    if (otherNonCashItems.present) {
      map['other_non_cash_items'] = Variable<int>(otherNonCashItems.value);
    }
    if (netCashProvidedByOperatingActivities.present) {
      map['net_cash_provided_by_operating_activities'] =
          Variable<int>(netCashProvidedByOperatingActivities.value);
    }
    if (investmentsInPropertyPlantAndEquipment.present) {
      map['investments_in_property_plant_and_equipment'] =
          Variable<int>(investmentsInPropertyPlantAndEquipment.value);
    }
    if (acquisitionsNet.present) {
      map['acquisitions_net'] = Variable<int>(acquisitionsNet.value);
    }
    if (purchasesOfInvestments.present) {
      map['purchases_of_investments'] =
          Variable<int>(purchasesOfInvestments.value);
    }
    if (salesMaturitiesOfInvestments.present) {
      map['sales_maturities_of_investments'] =
          Variable<int>(salesMaturitiesOfInvestments.value);
    }
    if (otherInvestingActivites.present) {
      map['other_investing_activites'] =
          Variable<int>(otherInvestingActivites.value);
    }
    if (netCashUsedForInvestingActivites.present) {
      map['net_cash_used_for_investing_activites'] =
          Variable<int>(netCashUsedForInvestingActivites.value);
    }
    if (debtRepayment.present) {
      map['debt_repayment'] = Variable<int>(debtRepayment.value);
    }
    if (commonStockIssued.present) {
      map['common_stock_issued'] = Variable<int>(commonStockIssued.value);
    }
    if (commonStockRepurchased.present) {
      map['common_stock_repurchased'] =
          Variable<int>(commonStockRepurchased.value);
    }
    if (dividendsPaid.present) {
      map['dividends_paid'] = Variable<int>(dividendsPaid.value);
    }
    if (otherFinancingActivites.present) {
      map['other_financing_activites'] =
          Variable<int>(otherFinancingActivites.value);
    }
    if (netCashUsedProvidedByFinancingActivities.present) {
      map['net_cash_used_provided_by_financing_activities'] =
          Variable<int>(netCashUsedProvidedByFinancingActivities.value);
    }
    if (effectOfForexChangesOnCash.present) {
      map['effect_of_forex_changes_on_cash'] =
          Variable<int>(effectOfForexChangesOnCash.value);
    }
    if (netChangeInCash.present) {
      map['net_change_in_cash'] = Variable<int>(netChangeInCash.value);
    }
    if (cashAtEndOfPeriod.present) {
      map['cash_at_end_of_period'] = Variable<int>(cashAtEndOfPeriod.value);
    }
    if (cashAtBeginningOfPeriod.present) {
      map['cash_at_beginning_of_period'] =
          Variable<int>(cashAtBeginningOfPeriod.value);
    }
    if (operatingCashFlow.present) {
      map['operating_cash_flow'] = Variable<int>(operatingCashFlow.value);
    }
    if (capitalExpenditure.present) {
      map['capital_expenditure'] = Variable<int>(capitalExpenditure.value);
    }
    if (freeCashFlow.present) {
      map['free_cash_flow'] = Variable<int>(freeCashFlow.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (finalLink.present) {
      map['final_link'] = Variable<String>(finalLink.value);
    }
    if (expires.present) {
      map['expires'] = Variable<DateTime>(expires.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CashFlowStatementTableRowDefinitionCompanion(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('reportedCurrency: $reportedCurrency, ')
          ..write('cik: $cik, ')
          ..write('fillingDate: $fillingDate, ')
          ..write('acceptedDate: $acceptedDate, ')
          ..write('calendarYear: $calendarYear, ')
          ..write('period: $period, ')
          ..write('netIncome: $netIncome, ')
          ..write('depreciationAndAmortization: $depreciationAndAmortization, ')
          ..write('deferredIncomeTax: $deferredIncomeTax, ')
          ..write('stockBasedCompensation: $stockBasedCompensation, ')
          ..write('changeInWorkingCapital: $changeInWorkingCapital, ')
          ..write('accountsReceivables: $accountsReceivables, ')
          ..write('inventory: $inventory, ')
          ..write('accountsPayables: $accountsPayables, ')
          ..write('otherWorkingCapital: $otherWorkingCapital, ')
          ..write('otherNonCashItems: $otherNonCashItems, ')
          ..write(
              'netCashProvidedByOperatingActivities: $netCashProvidedByOperatingActivities, ')
          ..write(
              'investmentsInPropertyPlantAndEquipment: $investmentsInPropertyPlantAndEquipment, ')
          ..write('acquisitionsNet: $acquisitionsNet, ')
          ..write('purchasesOfInvestments: $purchasesOfInvestments, ')
          ..write(
              'salesMaturitiesOfInvestments: $salesMaturitiesOfInvestments, ')
          ..write('otherInvestingActivites: $otherInvestingActivites, ')
          ..write(
              'netCashUsedForInvestingActivites: $netCashUsedForInvestingActivites, ')
          ..write('debtRepayment: $debtRepayment, ')
          ..write('commonStockIssued: $commonStockIssued, ')
          ..write('commonStockRepurchased: $commonStockRepurchased, ')
          ..write('dividendsPaid: $dividendsPaid, ')
          ..write('otherFinancingActivites: $otherFinancingActivites, ')
          ..write(
              'netCashUsedProvidedByFinancingActivities: $netCashUsedProvidedByFinancingActivities, ')
          ..write('effectOfForexChangesOnCash: $effectOfForexChangesOnCash, ')
          ..write('netChangeInCash: $netChangeInCash, ')
          ..write('cashAtEndOfPeriod: $cashAtEndOfPeriod, ')
          ..write('cashAtBeginningOfPeriod: $cashAtBeginningOfPeriod, ')
          ..write('operatingCashFlow: $operatingCashFlow, ')
          ..write('capitalExpenditure: $capitalExpenditure, ')
          ..write('freeCashFlow: $freeCashFlow, ')
          ..write('link: $link, ')
          ..write('finalLink: $finalLink, ')
          ..write('expires: $expires, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $IncomeStatementTableRowDefinitionTable
    extends IncomeStatementTableRowDefinition
    with
        TableInfo<$IncomeStatementTableRowDefinitionTable,
            IncomeStatementTableRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $IncomeStatementTableRowDefinitionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _reportedCurrencyMeta =
      const VerificationMeta('reportedCurrency');
  @override
  late final GeneratedColumn<String> reportedCurrency = GeneratedColumn<String>(
      'reported_currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _cikMeta = const VerificationMeta('cik');
  @override
  late final GeneratedColumn<String> cik = GeneratedColumn<String>(
      'cik', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _fillingDateMeta =
      const VerificationMeta('fillingDate');
  @override
  late final GeneratedColumn<String> fillingDate = GeneratedColumn<String>(
      'filling_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _acceptedDateMeta =
      const VerificationMeta('acceptedDate');
  @override
  late final GeneratedColumn<String> acceptedDate = GeneratedColumn<String>(
      'accepted_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _calendarYearMeta =
      const VerificationMeta('calendarYear');
  @override
  late final GeneratedColumn<String> calendarYear = GeneratedColumn<String>(
      'calendar_year', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _periodMeta = const VerificationMeta('period');
  @override
  late final GeneratedColumn<String> period = GeneratedColumn<String>(
      'period', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _revenueMeta =
      const VerificationMeta('revenue');
  @override
  late final GeneratedColumn<int> revenue = GeneratedColumn<int>(
      'revenue', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _costOfRevenueMeta =
      const VerificationMeta('costOfRevenue');
  @override
  late final GeneratedColumn<int> costOfRevenue = GeneratedColumn<int>(
      'cost_of_revenue', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _grossProfitMeta =
      const VerificationMeta('grossProfit');
  @override
  late final GeneratedColumn<int> grossProfit = GeneratedColumn<int>(
      'gross_profit', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _grossProfitRatioMeta =
      const VerificationMeta('grossProfitRatio');
  @override
  late final GeneratedColumn<double> grossProfitRatio = GeneratedColumn<double>(
      'gross_profit_ratio', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _researchAndDevelopmentExpensesMeta =
      const VerificationMeta('researchAndDevelopmentExpenses');
  @override
  late final GeneratedColumn<int> researchAndDevelopmentExpenses =
      GeneratedColumn<int>(
          'research_and_development_expenses', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _generalAndAdministrativeExpensesMeta =
      const VerificationMeta('generalAndAdministrativeExpenses');
  @override
  late final GeneratedColumn<int> generalAndAdministrativeExpenses =
      GeneratedColumn<int>(
          'general_and_administrative_expenses', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sellingAndMarketingExpensesMeta =
      const VerificationMeta('sellingAndMarketingExpenses');
  @override
  late final GeneratedColumn<int> sellingAndMarketingExpenses =
      GeneratedColumn<int>('selling_and_marketing_expenses', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _sellingGeneralAndAdministrativeExpensesMeta =
      const VerificationMeta('sellingGeneralAndAdministrativeExpenses');
  @override
  late final GeneratedColumn<int> sellingGeneralAndAdministrativeExpenses =
      GeneratedColumn<int>(
          'selling_general_and_administrative_expenses', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _otherExpensesMeta =
      const VerificationMeta('otherExpenses');
  @override
  late final GeneratedColumn<int> otherExpenses = GeneratedColumn<int>(
      'other_expenses', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _operatingExpensesMeta =
      const VerificationMeta('operatingExpenses');
  @override
  late final GeneratedColumn<int> operatingExpenses = GeneratedColumn<int>(
      'operating_expenses', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _costAndExpensesMeta =
      const VerificationMeta('costAndExpenses');
  @override
  late final GeneratedColumn<int> costAndExpenses = GeneratedColumn<int>(
      'cost_and_expenses', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _interestIncomeMeta =
      const VerificationMeta('interestIncome');
  @override
  late final GeneratedColumn<int> interestIncome = GeneratedColumn<int>(
      'interest_income', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _interestExpenseMeta =
      const VerificationMeta('interestExpense');
  @override
  late final GeneratedColumn<int> interestExpense = GeneratedColumn<int>(
      'interest_expense', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _depreciationAndAmortizationMeta =
      const VerificationMeta('depreciationAndAmortization');
  @override
  late final GeneratedColumn<int> depreciationAndAmortization =
      GeneratedColumn<int>('depreciation_and_amortization', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _ebitdaMeta = const VerificationMeta('ebitda');
  @override
  late final GeneratedColumn<int> ebitda = GeneratedColumn<int>(
      'ebitda', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _ebitdaratioMeta =
      const VerificationMeta('ebitdaratio');
  @override
  late final GeneratedColumn<double> ebitdaratio = GeneratedColumn<double>(
      'ebitdaratio', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _operatingIncomeMeta =
      const VerificationMeta('operatingIncome');
  @override
  late final GeneratedColumn<int> operatingIncome = GeneratedColumn<int>(
      'operating_income', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _operatingIncomeRatioMeta =
      const VerificationMeta('operatingIncomeRatio');
  @override
  late final GeneratedColumn<double> operatingIncomeRatio =
      GeneratedColumn<double>('operating_income_ratio', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _totalOtherIncomeExpensesNetMeta =
      const VerificationMeta('totalOtherIncomeExpensesNet');
  @override
  late final GeneratedColumn<int> totalOtherIncomeExpensesNet =
      GeneratedColumn<int>('total_other_income_expenses_net', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _incomeBeforeTaxMeta =
      const VerificationMeta('incomeBeforeTax');
  @override
  late final GeneratedColumn<int> incomeBeforeTax = GeneratedColumn<int>(
      'income_before_tax', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _incomeBeforeTaxRatioMeta =
      const VerificationMeta('incomeBeforeTaxRatio');
  @override
  late final GeneratedColumn<double> incomeBeforeTaxRatio =
      GeneratedColumn<double>('income_before_tax_ratio', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _incomeTaxExpenseMeta =
      const VerificationMeta('incomeTaxExpense');
  @override
  late final GeneratedColumn<int> incomeTaxExpense = GeneratedColumn<int>(
      'income_tax_expense', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netIncomeMeta =
      const VerificationMeta('netIncome');
  @override
  late final GeneratedColumn<int> netIncome = GeneratedColumn<int>(
      'net_income', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _netIncomeRatioMeta =
      const VerificationMeta('netIncomeRatio');
  @override
  late final GeneratedColumn<double> netIncomeRatio = GeneratedColumn<double>(
      'net_income_ratio', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _epsMeta = const VerificationMeta('eps');
  @override
  late final GeneratedColumn<double> eps = GeneratedColumn<double>(
      'eps', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _epsdilutedMeta =
      const VerificationMeta('epsdiluted');
  @override
  late final GeneratedColumn<double> epsdiluted = GeneratedColumn<double>(
      'epsdiluted', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _weightedAverageShsOutMeta =
      const VerificationMeta('weightedAverageShsOut');
  @override
  late final GeneratedColumn<int> weightedAverageShsOut = GeneratedColumn<int>(
      'weighted_average_shs_out', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _weightedAverageShsOutDilMeta =
      const VerificationMeta('weightedAverageShsOutDil');
  @override
  late final GeneratedColumn<int> weightedAverageShsOutDil =
      GeneratedColumn<int>('weighted_average_shs_out_dil', aliasedName, true,
          type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _linkMeta = const VerificationMeta('link');
  @override
  late final GeneratedColumn<String> link = GeneratedColumn<String>(
      'link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _finalLinkMeta =
      const VerificationMeta('finalLink');
  @override
  late final GeneratedColumn<String> finalLink = GeneratedColumn<String>(
      'final_link', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _expiresMeta =
      const VerificationMeta('expires');
  @override
  late final GeneratedColumn<DateTime> expires = GeneratedColumn<DateTime>(
      'expires', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        date,
        symbol,
        reportedCurrency,
        cik,
        fillingDate,
        acceptedDate,
        calendarYear,
        period,
        revenue,
        costOfRevenue,
        grossProfit,
        grossProfitRatio,
        researchAndDevelopmentExpenses,
        generalAndAdministrativeExpenses,
        sellingAndMarketingExpenses,
        sellingGeneralAndAdministrativeExpenses,
        otherExpenses,
        operatingExpenses,
        costAndExpenses,
        interestIncome,
        interestExpense,
        depreciationAndAmortization,
        ebitda,
        ebitdaratio,
        operatingIncome,
        operatingIncomeRatio,
        totalOtherIncomeExpensesNet,
        incomeBeforeTax,
        incomeBeforeTaxRatio,
        incomeTaxExpense,
        netIncome,
        netIncomeRatio,
        eps,
        epsdiluted,
        weightedAverageShsOut,
        weightedAverageShsOutDil,
        link,
        finalLink,
        expires
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'income_statement_table_row_definition';
  @override
  VerificationContext validateIntegrity(
      Insertable<IncomeStatementTableRow> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('reported_currency')) {
      context.handle(
          _reportedCurrencyMeta,
          reportedCurrency.isAcceptableOrUnknown(
              data['reported_currency']!, _reportedCurrencyMeta));
    }
    if (data.containsKey('cik')) {
      context.handle(
          _cikMeta, cik.isAcceptableOrUnknown(data['cik']!, _cikMeta));
    }
    if (data.containsKey('filling_date')) {
      context.handle(
          _fillingDateMeta,
          fillingDate.isAcceptableOrUnknown(
              data['filling_date']!, _fillingDateMeta));
    }
    if (data.containsKey('accepted_date')) {
      context.handle(
          _acceptedDateMeta,
          acceptedDate.isAcceptableOrUnknown(
              data['accepted_date']!, _acceptedDateMeta));
    }
    if (data.containsKey('calendar_year')) {
      context.handle(
          _calendarYearMeta,
          calendarYear.isAcceptableOrUnknown(
              data['calendar_year']!, _calendarYearMeta));
    }
    if (data.containsKey('period')) {
      context.handle(_periodMeta,
          period.isAcceptableOrUnknown(data['period']!, _periodMeta));
    }
    if (data.containsKey('revenue')) {
      context.handle(_revenueMeta,
          revenue.isAcceptableOrUnknown(data['revenue']!, _revenueMeta));
    }
    if (data.containsKey('cost_of_revenue')) {
      context.handle(
          _costOfRevenueMeta,
          costOfRevenue.isAcceptableOrUnknown(
              data['cost_of_revenue']!, _costOfRevenueMeta));
    }
    if (data.containsKey('gross_profit')) {
      context.handle(
          _grossProfitMeta,
          grossProfit.isAcceptableOrUnknown(
              data['gross_profit']!, _grossProfitMeta));
    }
    if (data.containsKey('gross_profit_ratio')) {
      context.handle(
          _grossProfitRatioMeta,
          grossProfitRatio.isAcceptableOrUnknown(
              data['gross_profit_ratio']!, _grossProfitRatioMeta));
    }
    if (data.containsKey('research_and_development_expenses')) {
      context.handle(
          _researchAndDevelopmentExpensesMeta,
          researchAndDevelopmentExpenses.isAcceptableOrUnknown(
              data['research_and_development_expenses']!,
              _researchAndDevelopmentExpensesMeta));
    }
    if (data.containsKey('general_and_administrative_expenses')) {
      context.handle(
          _generalAndAdministrativeExpensesMeta,
          generalAndAdministrativeExpenses.isAcceptableOrUnknown(
              data['general_and_administrative_expenses']!,
              _generalAndAdministrativeExpensesMeta));
    }
    if (data.containsKey('selling_and_marketing_expenses')) {
      context.handle(
          _sellingAndMarketingExpensesMeta,
          sellingAndMarketingExpenses.isAcceptableOrUnknown(
              data['selling_and_marketing_expenses']!,
              _sellingAndMarketingExpensesMeta));
    }
    if (data.containsKey('selling_general_and_administrative_expenses')) {
      context.handle(
          _sellingGeneralAndAdministrativeExpensesMeta,
          sellingGeneralAndAdministrativeExpenses.isAcceptableOrUnknown(
              data['selling_general_and_administrative_expenses']!,
              _sellingGeneralAndAdministrativeExpensesMeta));
    }
    if (data.containsKey('other_expenses')) {
      context.handle(
          _otherExpensesMeta,
          otherExpenses.isAcceptableOrUnknown(
              data['other_expenses']!, _otherExpensesMeta));
    }
    if (data.containsKey('operating_expenses')) {
      context.handle(
          _operatingExpensesMeta,
          operatingExpenses.isAcceptableOrUnknown(
              data['operating_expenses']!, _operatingExpensesMeta));
    }
    if (data.containsKey('cost_and_expenses')) {
      context.handle(
          _costAndExpensesMeta,
          costAndExpenses.isAcceptableOrUnknown(
              data['cost_and_expenses']!, _costAndExpensesMeta));
    }
    if (data.containsKey('interest_income')) {
      context.handle(
          _interestIncomeMeta,
          interestIncome.isAcceptableOrUnknown(
              data['interest_income']!, _interestIncomeMeta));
    }
    if (data.containsKey('interest_expense')) {
      context.handle(
          _interestExpenseMeta,
          interestExpense.isAcceptableOrUnknown(
              data['interest_expense']!, _interestExpenseMeta));
    }
    if (data.containsKey('depreciation_and_amortization')) {
      context.handle(
          _depreciationAndAmortizationMeta,
          depreciationAndAmortization.isAcceptableOrUnknown(
              data['depreciation_and_amortization']!,
              _depreciationAndAmortizationMeta));
    }
    if (data.containsKey('ebitda')) {
      context.handle(_ebitdaMeta,
          ebitda.isAcceptableOrUnknown(data['ebitda']!, _ebitdaMeta));
    }
    if (data.containsKey('ebitdaratio')) {
      context.handle(
          _ebitdaratioMeta,
          ebitdaratio.isAcceptableOrUnknown(
              data['ebitdaratio']!, _ebitdaratioMeta));
    }
    if (data.containsKey('operating_income')) {
      context.handle(
          _operatingIncomeMeta,
          operatingIncome.isAcceptableOrUnknown(
              data['operating_income']!, _operatingIncomeMeta));
    }
    if (data.containsKey('operating_income_ratio')) {
      context.handle(
          _operatingIncomeRatioMeta,
          operatingIncomeRatio.isAcceptableOrUnknown(
              data['operating_income_ratio']!, _operatingIncomeRatioMeta));
    }
    if (data.containsKey('total_other_income_expenses_net')) {
      context.handle(
          _totalOtherIncomeExpensesNetMeta,
          totalOtherIncomeExpensesNet.isAcceptableOrUnknown(
              data['total_other_income_expenses_net']!,
              _totalOtherIncomeExpensesNetMeta));
    }
    if (data.containsKey('income_before_tax')) {
      context.handle(
          _incomeBeforeTaxMeta,
          incomeBeforeTax.isAcceptableOrUnknown(
              data['income_before_tax']!, _incomeBeforeTaxMeta));
    }
    if (data.containsKey('income_before_tax_ratio')) {
      context.handle(
          _incomeBeforeTaxRatioMeta,
          incomeBeforeTaxRatio.isAcceptableOrUnknown(
              data['income_before_tax_ratio']!, _incomeBeforeTaxRatioMeta));
    }
    if (data.containsKey('income_tax_expense')) {
      context.handle(
          _incomeTaxExpenseMeta,
          incomeTaxExpense.isAcceptableOrUnknown(
              data['income_tax_expense']!, _incomeTaxExpenseMeta));
    }
    if (data.containsKey('net_income')) {
      context.handle(_netIncomeMeta,
          netIncome.isAcceptableOrUnknown(data['net_income']!, _netIncomeMeta));
    }
    if (data.containsKey('net_income_ratio')) {
      context.handle(
          _netIncomeRatioMeta,
          netIncomeRatio.isAcceptableOrUnknown(
              data['net_income_ratio']!, _netIncomeRatioMeta));
    }
    if (data.containsKey('eps')) {
      context.handle(
          _epsMeta, eps.isAcceptableOrUnknown(data['eps']!, _epsMeta));
    }
    if (data.containsKey('epsdiluted')) {
      context.handle(
          _epsdilutedMeta,
          epsdiluted.isAcceptableOrUnknown(
              data['epsdiluted']!, _epsdilutedMeta));
    }
    if (data.containsKey('weighted_average_shs_out')) {
      context.handle(
          _weightedAverageShsOutMeta,
          weightedAverageShsOut.isAcceptableOrUnknown(
              data['weighted_average_shs_out']!, _weightedAverageShsOutMeta));
    }
    if (data.containsKey('weighted_average_shs_out_dil')) {
      context.handle(
          _weightedAverageShsOutDilMeta,
          weightedAverageShsOutDil.isAcceptableOrUnknown(
              data['weighted_average_shs_out_dil']!,
              _weightedAverageShsOutDilMeta));
    }
    if (data.containsKey('link')) {
      context.handle(
          _linkMeta, link.isAcceptableOrUnknown(data['link']!, _linkMeta));
    }
    if (data.containsKey('final_link')) {
      context.handle(_finalLinkMeta,
          finalLink.isAcceptableOrUnknown(data['final_link']!, _finalLinkMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires']!, _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {symbol, date};
  @override
  IncomeStatementTableRow map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return IncomeStatementTableRow(
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      reportedCurrency: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}reported_currency']),
      cik: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cik']),
      fillingDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}filling_date']),
      acceptedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}accepted_date']),
      calendarYear: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}calendar_year']),
      period: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}period']),
      revenue: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}revenue']),
      costOfRevenue: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cost_of_revenue']),
      grossProfit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}gross_profit']),
      grossProfitRatio: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}gross_profit_ratio']),
      researchAndDevelopmentExpenses: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}research_and_development_expenses']),
      generalAndAdministrativeExpenses: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}general_and_administrative_expenses']),
      sellingAndMarketingExpenses: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}selling_and_marketing_expenses']),
      sellingGeneralAndAdministrativeExpenses: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data[
              '${effectivePrefix}selling_general_and_administrative_expenses']),
      otherExpenses: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}other_expenses']),
      operatingExpenses: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operating_expenses']),
      costAndExpenses: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cost_and_expenses']),
      interestIncome: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}interest_income']),
      interestExpense: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}interest_expense']),
      depreciationAndAmortization: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}depreciation_and_amortization']),
      ebitda: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ebitda']),
      ebitdaratio: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ebitdaratio']),
      operatingIncome: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operating_income']),
      operatingIncomeRatio: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}operating_income_ratio']),
      totalOtherIncomeExpensesNet: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}total_other_income_expenses_net']),
      incomeBeforeTax: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}income_before_tax']),
      incomeBeforeTaxRatio: attachedDatabase.typeMapping.read(
          DriftSqlType.double,
          data['${effectivePrefix}income_before_tax_ratio']),
      incomeTaxExpense: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}income_tax_expense']),
      netIncome: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}net_income']),
      netIncomeRatio: attachedDatabase.typeMapping.read(
          DriftSqlType.double, data['${effectivePrefix}net_income_ratio']),
      eps: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}eps']),
      epsdiluted: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}epsdiluted']),
      weightedAverageShsOut: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}weighted_average_shs_out']),
      weightedAverageShsOutDil: attachedDatabase.typeMapping.read(
          DriftSqlType.int,
          data['${effectivePrefix}weighted_average_shs_out_dil']),
      link: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}link']),
      finalLink: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}final_link']),
      expires: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires'])!,
    );
  }

  @override
  $IncomeStatementTableRowDefinitionTable createAlias(String alias) {
    return $IncomeStatementTableRowDefinitionTable(attachedDatabase, alias);
  }
}

class IncomeStatementTableRow extends DataClass
    implements Insertable<IncomeStatementTableRow> {
  final String date;
  final String symbol;
  final String? reportedCurrency;
  final String? cik;
  final String? fillingDate;
  final String? acceptedDate;
  final String? calendarYear;
  final String? period;
  final int? revenue;
  final int? costOfRevenue;
  final int? grossProfit;
  final double? grossProfitRatio;
  final int? researchAndDevelopmentExpenses;
  final int? generalAndAdministrativeExpenses;
  final int? sellingAndMarketingExpenses;
  final int? sellingGeneralAndAdministrativeExpenses;
  final int? otherExpenses;
  final int? operatingExpenses;
  final int? costAndExpenses;
  final int? interestIncome;
  final int? interestExpense;
  final int? depreciationAndAmortization;
  final int? ebitda;
  final double? ebitdaratio;
  final int? operatingIncome;
  final double? operatingIncomeRatio;
  final int? totalOtherIncomeExpensesNet;
  final int? incomeBeforeTax;
  final double? incomeBeforeTaxRatio;
  final int? incomeTaxExpense;
  final int? netIncome;
  final double? netIncomeRatio;
  final double? eps;
  final double? epsdiluted;
  final int? weightedAverageShsOut;
  final int? weightedAverageShsOutDil;
  final String? link;
  final String? finalLink;
  final DateTime expires;
  const IncomeStatementTableRow(
      {required this.date,
      required this.symbol,
      this.reportedCurrency,
      this.cik,
      this.fillingDate,
      this.acceptedDate,
      this.calendarYear,
      this.period,
      this.revenue,
      this.costOfRevenue,
      this.grossProfit,
      this.grossProfitRatio,
      this.researchAndDevelopmentExpenses,
      this.generalAndAdministrativeExpenses,
      this.sellingAndMarketingExpenses,
      this.sellingGeneralAndAdministrativeExpenses,
      this.otherExpenses,
      this.operatingExpenses,
      this.costAndExpenses,
      this.interestIncome,
      this.interestExpense,
      this.depreciationAndAmortization,
      this.ebitda,
      this.ebitdaratio,
      this.operatingIncome,
      this.operatingIncomeRatio,
      this.totalOtherIncomeExpensesNet,
      this.incomeBeforeTax,
      this.incomeBeforeTaxRatio,
      this.incomeTaxExpense,
      this.netIncome,
      this.netIncomeRatio,
      this.eps,
      this.epsdiluted,
      this.weightedAverageShsOut,
      this.weightedAverageShsOutDil,
      this.link,
      this.finalLink,
      required this.expires});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['date'] = Variable<String>(date);
    map['symbol'] = Variable<String>(symbol);
    if (!nullToAbsent || reportedCurrency != null) {
      map['reported_currency'] = Variable<String>(reportedCurrency);
    }
    if (!nullToAbsent || cik != null) {
      map['cik'] = Variable<String>(cik);
    }
    if (!nullToAbsent || fillingDate != null) {
      map['filling_date'] = Variable<String>(fillingDate);
    }
    if (!nullToAbsent || acceptedDate != null) {
      map['accepted_date'] = Variable<String>(acceptedDate);
    }
    if (!nullToAbsent || calendarYear != null) {
      map['calendar_year'] = Variable<String>(calendarYear);
    }
    if (!nullToAbsent || period != null) {
      map['period'] = Variable<String>(period);
    }
    if (!nullToAbsent || revenue != null) {
      map['revenue'] = Variable<int>(revenue);
    }
    if (!nullToAbsent || costOfRevenue != null) {
      map['cost_of_revenue'] = Variable<int>(costOfRevenue);
    }
    if (!nullToAbsent || grossProfit != null) {
      map['gross_profit'] = Variable<int>(grossProfit);
    }
    if (!nullToAbsent || grossProfitRatio != null) {
      map['gross_profit_ratio'] = Variable<double>(grossProfitRatio);
    }
    if (!nullToAbsent || researchAndDevelopmentExpenses != null) {
      map['research_and_development_expenses'] =
          Variable<int>(researchAndDevelopmentExpenses);
    }
    if (!nullToAbsent || generalAndAdministrativeExpenses != null) {
      map['general_and_administrative_expenses'] =
          Variable<int>(generalAndAdministrativeExpenses);
    }
    if (!nullToAbsent || sellingAndMarketingExpenses != null) {
      map['selling_and_marketing_expenses'] =
          Variable<int>(sellingAndMarketingExpenses);
    }
    if (!nullToAbsent || sellingGeneralAndAdministrativeExpenses != null) {
      map['selling_general_and_administrative_expenses'] =
          Variable<int>(sellingGeneralAndAdministrativeExpenses);
    }
    if (!nullToAbsent || otherExpenses != null) {
      map['other_expenses'] = Variable<int>(otherExpenses);
    }
    if (!nullToAbsent || operatingExpenses != null) {
      map['operating_expenses'] = Variable<int>(operatingExpenses);
    }
    if (!nullToAbsent || costAndExpenses != null) {
      map['cost_and_expenses'] = Variable<int>(costAndExpenses);
    }
    if (!nullToAbsent || interestIncome != null) {
      map['interest_income'] = Variable<int>(interestIncome);
    }
    if (!nullToAbsent || interestExpense != null) {
      map['interest_expense'] = Variable<int>(interestExpense);
    }
    if (!nullToAbsent || depreciationAndAmortization != null) {
      map['depreciation_and_amortization'] =
          Variable<int>(depreciationAndAmortization);
    }
    if (!nullToAbsent || ebitda != null) {
      map['ebitda'] = Variable<int>(ebitda);
    }
    if (!nullToAbsent || ebitdaratio != null) {
      map['ebitdaratio'] = Variable<double>(ebitdaratio);
    }
    if (!nullToAbsent || operatingIncome != null) {
      map['operating_income'] = Variable<int>(operatingIncome);
    }
    if (!nullToAbsent || operatingIncomeRatio != null) {
      map['operating_income_ratio'] = Variable<double>(operatingIncomeRatio);
    }
    if (!nullToAbsent || totalOtherIncomeExpensesNet != null) {
      map['total_other_income_expenses_net'] =
          Variable<int>(totalOtherIncomeExpensesNet);
    }
    if (!nullToAbsent || incomeBeforeTax != null) {
      map['income_before_tax'] = Variable<int>(incomeBeforeTax);
    }
    if (!nullToAbsent || incomeBeforeTaxRatio != null) {
      map['income_before_tax_ratio'] = Variable<double>(incomeBeforeTaxRatio);
    }
    if (!nullToAbsent || incomeTaxExpense != null) {
      map['income_tax_expense'] = Variable<int>(incomeTaxExpense);
    }
    if (!nullToAbsent || netIncome != null) {
      map['net_income'] = Variable<int>(netIncome);
    }
    if (!nullToAbsent || netIncomeRatio != null) {
      map['net_income_ratio'] = Variable<double>(netIncomeRatio);
    }
    if (!nullToAbsent || eps != null) {
      map['eps'] = Variable<double>(eps);
    }
    if (!nullToAbsent || epsdiluted != null) {
      map['epsdiluted'] = Variable<double>(epsdiluted);
    }
    if (!nullToAbsent || weightedAverageShsOut != null) {
      map['weighted_average_shs_out'] = Variable<int>(weightedAverageShsOut);
    }
    if (!nullToAbsent || weightedAverageShsOutDil != null) {
      map['weighted_average_shs_out_dil'] =
          Variable<int>(weightedAverageShsOutDil);
    }
    if (!nullToAbsent || link != null) {
      map['link'] = Variable<String>(link);
    }
    if (!nullToAbsent || finalLink != null) {
      map['final_link'] = Variable<String>(finalLink);
    }
    map['expires'] = Variable<DateTime>(expires);
    return map;
  }

  IncomeStatementTableRowDefinitionCompanion toCompanion(bool nullToAbsent) {
    return IncomeStatementTableRowDefinitionCompanion(
      date: Value(date),
      symbol: Value(symbol),
      reportedCurrency: reportedCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(reportedCurrency),
      cik: cik == null && nullToAbsent ? const Value.absent() : Value(cik),
      fillingDate: fillingDate == null && nullToAbsent
          ? const Value.absent()
          : Value(fillingDate),
      acceptedDate: acceptedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(acceptedDate),
      calendarYear: calendarYear == null && nullToAbsent
          ? const Value.absent()
          : Value(calendarYear),
      period:
          period == null && nullToAbsent ? const Value.absent() : Value(period),
      revenue: revenue == null && nullToAbsent
          ? const Value.absent()
          : Value(revenue),
      costOfRevenue: costOfRevenue == null && nullToAbsent
          ? const Value.absent()
          : Value(costOfRevenue),
      grossProfit: grossProfit == null && nullToAbsent
          ? const Value.absent()
          : Value(grossProfit),
      grossProfitRatio: grossProfitRatio == null && nullToAbsent
          ? const Value.absent()
          : Value(grossProfitRatio),
      researchAndDevelopmentExpenses:
          researchAndDevelopmentExpenses == null && nullToAbsent
              ? const Value.absent()
              : Value(researchAndDevelopmentExpenses),
      generalAndAdministrativeExpenses:
          generalAndAdministrativeExpenses == null && nullToAbsent
              ? const Value.absent()
              : Value(generalAndAdministrativeExpenses),
      sellingAndMarketingExpenses:
          sellingAndMarketingExpenses == null && nullToAbsent
              ? const Value.absent()
              : Value(sellingAndMarketingExpenses),
      sellingGeneralAndAdministrativeExpenses:
          sellingGeneralAndAdministrativeExpenses == null && nullToAbsent
              ? const Value.absent()
              : Value(sellingGeneralAndAdministrativeExpenses),
      otherExpenses: otherExpenses == null && nullToAbsent
          ? const Value.absent()
          : Value(otherExpenses),
      operatingExpenses: operatingExpenses == null && nullToAbsent
          ? const Value.absent()
          : Value(operatingExpenses),
      costAndExpenses: costAndExpenses == null && nullToAbsent
          ? const Value.absent()
          : Value(costAndExpenses),
      interestIncome: interestIncome == null && nullToAbsent
          ? const Value.absent()
          : Value(interestIncome),
      interestExpense: interestExpense == null && nullToAbsent
          ? const Value.absent()
          : Value(interestExpense),
      depreciationAndAmortization:
          depreciationAndAmortization == null && nullToAbsent
              ? const Value.absent()
              : Value(depreciationAndAmortization),
      ebitda:
          ebitda == null && nullToAbsent ? const Value.absent() : Value(ebitda),
      ebitdaratio: ebitdaratio == null && nullToAbsent
          ? const Value.absent()
          : Value(ebitdaratio),
      operatingIncome: operatingIncome == null && nullToAbsent
          ? const Value.absent()
          : Value(operatingIncome),
      operatingIncomeRatio: operatingIncomeRatio == null && nullToAbsent
          ? const Value.absent()
          : Value(operatingIncomeRatio),
      totalOtherIncomeExpensesNet:
          totalOtherIncomeExpensesNet == null && nullToAbsent
              ? const Value.absent()
              : Value(totalOtherIncomeExpensesNet),
      incomeBeforeTax: incomeBeforeTax == null && nullToAbsent
          ? const Value.absent()
          : Value(incomeBeforeTax),
      incomeBeforeTaxRatio: incomeBeforeTaxRatio == null && nullToAbsent
          ? const Value.absent()
          : Value(incomeBeforeTaxRatio),
      incomeTaxExpense: incomeTaxExpense == null && nullToAbsent
          ? const Value.absent()
          : Value(incomeTaxExpense),
      netIncome: netIncome == null && nullToAbsent
          ? const Value.absent()
          : Value(netIncome),
      netIncomeRatio: netIncomeRatio == null && nullToAbsent
          ? const Value.absent()
          : Value(netIncomeRatio),
      eps: eps == null && nullToAbsent ? const Value.absent() : Value(eps),
      epsdiluted: epsdiluted == null && nullToAbsent
          ? const Value.absent()
          : Value(epsdiluted),
      weightedAverageShsOut: weightedAverageShsOut == null && nullToAbsent
          ? const Value.absent()
          : Value(weightedAverageShsOut),
      weightedAverageShsOutDil: weightedAverageShsOutDil == null && nullToAbsent
          ? const Value.absent()
          : Value(weightedAverageShsOutDil),
      link: link == null && nullToAbsent ? const Value.absent() : Value(link),
      finalLink: finalLink == null && nullToAbsent
          ? const Value.absent()
          : Value(finalLink),
      expires: Value(expires),
    );
  }

  factory IncomeStatementTableRow.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return IncomeStatementTableRow(
      date: serializer.fromJson<String>(json['date']),
      symbol: serializer.fromJson<String>(json['symbol']),
      reportedCurrency: serializer.fromJson<String?>(json['reportedCurrency']),
      cik: serializer.fromJson<String?>(json['cik']),
      fillingDate: serializer.fromJson<String?>(json['fillingDate']),
      acceptedDate: serializer.fromJson<String?>(json['acceptedDate']),
      calendarYear: serializer.fromJson<String?>(json['calendarYear']),
      period: serializer.fromJson<String?>(json['period']),
      revenue: serializer.fromJson<int?>(json['revenue']),
      costOfRevenue: serializer.fromJson<int?>(json['costOfRevenue']),
      grossProfit: serializer.fromJson<int?>(json['grossProfit']),
      grossProfitRatio: serializer.fromJson<double?>(json['grossProfitRatio']),
      researchAndDevelopmentExpenses:
          serializer.fromJson<int?>(json['researchAndDevelopmentExpenses']),
      generalAndAdministrativeExpenses:
          serializer.fromJson<int?>(json['generalAndAdministrativeExpenses']),
      sellingAndMarketingExpenses:
          serializer.fromJson<int?>(json['sellingAndMarketingExpenses']),
      sellingGeneralAndAdministrativeExpenses: serializer
          .fromJson<int?>(json['sellingGeneralAndAdministrativeExpenses']),
      otherExpenses: serializer.fromJson<int?>(json['otherExpenses']),
      operatingExpenses: serializer.fromJson<int?>(json['operatingExpenses']),
      costAndExpenses: serializer.fromJson<int?>(json['costAndExpenses']),
      interestIncome: serializer.fromJson<int?>(json['interestIncome']),
      interestExpense: serializer.fromJson<int?>(json['interestExpense']),
      depreciationAndAmortization:
          serializer.fromJson<int?>(json['depreciationAndAmortization']),
      ebitda: serializer.fromJson<int?>(json['ebitda']),
      ebitdaratio: serializer.fromJson<double?>(json['ebitdaratio']),
      operatingIncome: serializer.fromJson<int?>(json['operatingIncome']),
      operatingIncomeRatio:
          serializer.fromJson<double?>(json['operatingIncomeRatio']),
      totalOtherIncomeExpensesNet:
          serializer.fromJson<int?>(json['totalOtherIncomeExpensesNet']),
      incomeBeforeTax: serializer.fromJson<int?>(json['incomeBeforeTax']),
      incomeBeforeTaxRatio:
          serializer.fromJson<double?>(json['incomeBeforeTaxRatio']),
      incomeTaxExpense: serializer.fromJson<int?>(json['incomeTaxExpense']),
      netIncome: serializer.fromJson<int?>(json['netIncome']),
      netIncomeRatio: serializer.fromJson<double?>(json['netIncomeRatio']),
      eps: serializer.fromJson<double?>(json['eps']),
      epsdiluted: serializer.fromJson<double?>(json['epsdiluted']),
      weightedAverageShsOut:
          serializer.fromJson<int?>(json['weightedAverageShsOut']),
      weightedAverageShsOutDil:
          serializer.fromJson<int?>(json['weightedAverageShsOutDil']),
      link: serializer.fromJson<String?>(json['link']),
      finalLink: serializer.fromJson<String?>(json['finalLink']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<String>(date),
      'symbol': serializer.toJson<String>(symbol),
      'reportedCurrency': serializer.toJson<String?>(reportedCurrency),
      'cik': serializer.toJson<String?>(cik),
      'fillingDate': serializer.toJson<String?>(fillingDate),
      'acceptedDate': serializer.toJson<String?>(acceptedDate),
      'calendarYear': serializer.toJson<String?>(calendarYear),
      'period': serializer.toJson<String?>(period),
      'revenue': serializer.toJson<int?>(revenue),
      'costOfRevenue': serializer.toJson<int?>(costOfRevenue),
      'grossProfit': serializer.toJson<int?>(grossProfit),
      'grossProfitRatio': serializer.toJson<double?>(grossProfitRatio),
      'researchAndDevelopmentExpenses':
          serializer.toJson<int?>(researchAndDevelopmentExpenses),
      'generalAndAdministrativeExpenses':
          serializer.toJson<int?>(generalAndAdministrativeExpenses),
      'sellingAndMarketingExpenses':
          serializer.toJson<int?>(sellingAndMarketingExpenses),
      'sellingGeneralAndAdministrativeExpenses':
          serializer.toJson<int?>(sellingGeneralAndAdministrativeExpenses),
      'otherExpenses': serializer.toJson<int?>(otherExpenses),
      'operatingExpenses': serializer.toJson<int?>(operatingExpenses),
      'costAndExpenses': serializer.toJson<int?>(costAndExpenses),
      'interestIncome': serializer.toJson<int?>(interestIncome),
      'interestExpense': serializer.toJson<int?>(interestExpense),
      'depreciationAndAmortization':
          serializer.toJson<int?>(depreciationAndAmortization),
      'ebitda': serializer.toJson<int?>(ebitda),
      'ebitdaratio': serializer.toJson<double?>(ebitdaratio),
      'operatingIncome': serializer.toJson<int?>(operatingIncome),
      'operatingIncomeRatio': serializer.toJson<double?>(operatingIncomeRatio),
      'totalOtherIncomeExpensesNet':
          serializer.toJson<int?>(totalOtherIncomeExpensesNet),
      'incomeBeforeTax': serializer.toJson<int?>(incomeBeforeTax),
      'incomeBeforeTaxRatio': serializer.toJson<double?>(incomeBeforeTaxRatio),
      'incomeTaxExpense': serializer.toJson<int?>(incomeTaxExpense),
      'netIncome': serializer.toJson<int?>(netIncome),
      'netIncomeRatio': serializer.toJson<double?>(netIncomeRatio),
      'eps': serializer.toJson<double?>(eps),
      'epsdiluted': serializer.toJson<double?>(epsdiluted),
      'weightedAverageShsOut': serializer.toJson<int?>(weightedAverageShsOut),
      'weightedAverageShsOutDil':
          serializer.toJson<int?>(weightedAverageShsOutDil),
      'link': serializer.toJson<String?>(link),
      'finalLink': serializer.toJson<String?>(finalLink),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  IncomeStatementTableRow copyWith(
          {String? date,
          String? symbol,
          Value<String?> reportedCurrency = const Value.absent(),
          Value<String?> cik = const Value.absent(),
          Value<String?> fillingDate = const Value.absent(),
          Value<String?> acceptedDate = const Value.absent(),
          Value<String?> calendarYear = const Value.absent(),
          Value<String?> period = const Value.absent(),
          Value<int?> revenue = const Value.absent(),
          Value<int?> costOfRevenue = const Value.absent(),
          Value<int?> grossProfit = const Value.absent(),
          Value<double?> grossProfitRatio = const Value.absent(),
          Value<int?> researchAndDevelopmentExpenses = const Value.absent(),
          Value<int?> generalAndAdministrativeExpenses = const Value.absent(),
          Value<int?> sellingAndMarketingExpenses = const Value.absent(),
          Value<int?> sellingGeneralAndAdministrativeExpenses =
              const Value.absent(),
          Value<int?> otherExpenses = const Value.absent(),
          Value<int?> operatingExpenses = const Value.absent(),
          Value<int?> costAndExpenses = const Value.absent(),
          Value<int?> interestIncome = const Value.absent(),
          Value<int?> interestExpense = const Value.absent(),
          Value<int?> depreciationAndAmortization = const Value.absent(),
          Value<int?> ebitda = const Value.absent(),
          Value<double?> ebitdaratio = const Value.absent(),
          Value<int?> operatingIncome = const Value.absent(),
          Value<double?> operatingIncomeRatio = const Value.absent(),
          Value<int?> totalOtherIncomeExpensesNet = const Value.absent(),
          Value<int?> incomeBeforeTax = const Value.absent(),
          Value<double?> incomeBeforeTaxRatio = const Value.absent(),
          Value<int?> incomeTaxExpense = const Value.absent(),
          Value<int?> netIncome = const Value.absent(),
          Value<double?> netIncomeRatio = const Value.absent(),
          Value<double?> eps = const Value.absent(),
          Value<double?> epsdiluted = const Value.absent(),
          Value<int?> weightedAverageShsOut = const Value.absent(),
          Value<int?> weightedAverageShsOutDil = const Value.absent(),
          Value<String?> link = const Value.absent(),
          Value<String?> finalLink = const Value.absent(),
          DateTime? expires}) =>
      IncomeStatementTableRow(
        date: date ?? this.date,
        symbol: symbol ?? this.symbol,
        reportedCurrency: reportedCurrency.present
            ? reportedCurrency.value
            : this.reportedCurrency,
        cik: cik.present ? cik.value : this.cik,
        fillingDate: fillingDate.present ? fillingDate.value : this.fillingDate,
        acceptedDate:
            acceptedDate.present ? acceptedDate.value : this.acceptedDate,
        calendarYear:
            calendarYear.present ? calendarYear.value : this.calendarYear,
        period: period.present ? period.value : this.period,
        revenue: revenue.present ? revenue.value : this.revenue,
        costOfRevenue:
            costOfRevenue.present ? costOfRevenue.value : this.costOfRevenue,
        grossProfit: grossProfit.present ? grossProfit.value : this.grossProfit,
        grossProfitRatio: grossProfitRatio.present
            ? grossProfitRatio.value
            : this.grossProfitRatio,
        researchAndDevelopmentExpenses: researchAndDevelopmentExpenses.present
            ? researchAndDevelopmentExpenses.value
            : this.researchAndDevelopmentExpenses,
        generalAndAdministrativeExpenses:
            generalAndAdministrativeExpenses.present
                ? generalAndAdministrativeExpenses.value
                : this.generalAndAdministrativeExpenses,
        sellingAndMarketingExpenses: sellingAndMarketingExpenses.present
            ? sellingAndMarketingExpenses.value
            : this.sellingAndMarketingExpenses,
        sellingGeneralAndAdministrativeExpenses:
            sellingGeneralAndAdministrativeExpenses.present
                ? sellingGeneralAndAdministrativeExpenses.value
                : this.sellingGeneralAndAdministrativeExpenses,
        otherExpenses:
            otherExpenses.present ? otherExpenses.value : this.otherExpenses,
        operatingExpenses: operatingExpenses.present
            ? operatingExpenses.value
            : this.operatingExpenses,
        costAndExpenses: costAndExpenses.present
            ? costAndExpenses.value
            : this.costAndExpenses,
        interestIncome:
            interestIncome.present ? interestIncome.value : this.interestIncome,
        interestExpense: interestExpense.present
            ? interestExpense.value
            : this.interestExpense,
        depreciationAndAmortization: depreciationAndAmortization.present
            ? depreciationAndAmortization.value
            : this.depreciationAndAmortization,
        ebitda: ebitda.present ? ebitda.value : this.ebitda,
        ebitdaratio: ebitdaratio.present ? ebitdaratio.value : this.ebitdaratio,
        operatingIncome: operatingIncome.present
            ? operatingIncome.value
            : this.operatingIncome,
        operatingIncomeRatio: operatingIncomeRatio.present
            ? operatingIncomeRatio.value
            : this.operatingIncomeRatio,
        totalOtherIncomeExpensesNet: totalOtherIncomeExpensesNet.present
            ? totalOtherIncomeExpensesNet.value
            : this.totalOtherIncomeExpensesNet,
        incomeBeforeTax: incomeBeforeTax.present
            ? incomeBeforeTax.value
            : this.incomeBeforeTax,
        incomeBeforeTaxRatio: incomeBeforeTaxRatio.present
            ? incomeBeforeTaxRatio.value
            : this.incomeBeforeTaxRatio,
        incomeTaxExpense: incomeTaxExpense.present
            ? incomeTaxExpense.value
            : this.incomeTaxExpense,
        netIncome: netIncome.present ? netIncome.value : this.netIncome,
        netIncomeRatio:
            netIncomeRatio.present ? netIncomeRatio.value : this.netIncomeRatio,
        eps: eps.present ? eps.value : this.eps,
        epsdiluted: epsdiluted.present ? epsdiluted.value : this.epsdiluted,
        weightedAverageShsOut: weightedAverageShsOut.present
            ? weightedAverageShsOut.value
            : this.weightedAverageShsOut,
        weightedAverageShsOutDil: weightedAverageShsOutDil.present
            ? weightedAverageShsOutDil.value
            : this.weightedAverageShsOutDil,
        link: link.present ? link.value : this.link,
        finalLink: finalLink.present ? finalLink.value : this.finalLink,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('IncomeStatementTableRow(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('reportedCurrency: $reportedCurrency, ')
          ..write('cik: $cik, ')
          ..write('fillingDate: $fillingDate, ')
          ..write('acceptedDate: $acceptedDate, ')
          ..write('calendarYear: $calendarYear, ')
          ..write('period: $period, ')
          ..write('revenue: $revenue, ')
          ..write('costOfRevenue: $costOfRevenue, ')
          ..write('grossProfit: $grossProfit, ')
          ..write('grossProfitRatio: $grossProfitRatio, ')
          ..write(
              'researchAndDevelopmentExpenses: $researchAndDevelopmentExpenses, ')
          ..write(
              'generalAndAdministrativeExpenses: $generalAndAdministrativeExpenses, ')
          ..write('sellingAndMarketingExpenses: $sellingAndMarketingExpenses, ')
          ..write(
              'sellingGeneralAndAdministrativeExpenses: $sellingGeneralAndAdministrativeExpenses, ')
          ..write('otherExpenses: $otherExpenses, ')
          ..write('operatingExpenses: $operatingExpenses, ')
          ..write('costAndExpenses: $costAndExpenses, ')
          ..write('interestIncome: $interestIncome, ')
          ..write('interestExpense: $interestExpense, ')
          ..write('depreciationAndAmortization: $depreciationAndAmortization, ')
          ..write('ebitda: $ebitda, ')
          ..write('ebitdaratio: $ebitdaratio, ')
          ..write('operatingIncome: $operatingIncome, ')
          ..write('operatingIncomeRatio: $operatingIncomeRatio, ')
          ..write('totalOtherIncomeExpensesNet: $totalOtherIncomeExpensesNet, ')
          ..write('incomeBeforeTax: $incomeBeforeTax, ')
          ..write('incomeBeforeTaxRatio: $incomeBeforeTaxRatio, ')
          ..write('incomeTaxExpense: $incomeTaxExpense, ')
          ..write('netIncome: $netIncome, ')
          ..write('netIncomeRatio: $netIncomeRatio, ')
          ..write('eps: $eps, ')
          ..write('epsdiluted: $epsdiluted, ')
          ..write('weightedAverageShsOut: $weightedAverageShsOut, ')
          ..write('weightedAverageShsOutDil: $weightedAverageShsOutDil, ')
          ..write('link: $link, ')
          ..write('finalLink: $finalLink, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        date,
        symbol,
        reportedCurrency,
        cik,
        fillingDate,
        acceptedDate,
        calendarYear,
        period,
        revenue,
        costOfRevenue,
        grossProfit,
        grossProfitRatio,
        researchAndDevelopmentExpenses,
        generalAndAdministrativeExpenses,
        sellingAndMarketingExpenses,
        sellingGeneralAndAdministrativeExpenses,
        otherExpenses,
        operatingExpenses,
        costAndExpenses,
        interestIncome,
        interestExpense,
        depreciationAndAmortization,
        ebitda,
        ebitdaratio,
        operatingIncome,
        operatingIncomeRatio,
        totalOtherIncomeExpensesNet,
        incomeBeforeTax,
        incomeBeforeTaxRatio,
        incomeTaxExpense,
        netIncome,
        netIncomeRatio,
        eps,
        epsdiluted,
        weightedAverageShsOut,
        weightedAverageShsOutDil,
        link,
        finalLink,
        expires
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is IncomeStatementTableRow &&
          other.date == this.date &&
          other.symbol == this.symbol &&
          other.reportedCurrency == this.reportedCurrency &&
          other.cik == this.cik &&
          other.fillingDate == this.fillingDate &&
          other.acceptedDate == this.acceptedDate &&
          other.calendarYear == this.calendarYear &&
          other.period == this.period &&
          other.revenue == this.revenue &&
          other.costOfRevenue == this.costOfRevenue &&
          other.grossProfit == this.grossProfit &&
          other.grossProfitRatio == this.grossProfitRatio &&
          other.researchAndDevelopmentExpenses ==
              this.researchAndDevelopmentExpenses &&
          other.generalAndAdministrativeExpenses ==
              this.generalAndAdministrativeExpenses &&
          other.sellingAndMarketingExpenses ==
              this.sellingAndMarketingExpenses &&
          other.sellingGeneralAndAdministrativeExpenses ==
              this.sellingGeneralAndAdministrativeExpenses &&
          other.otherExpenses == this.otherExpenses &&
          other.operatingExpenses == this.operatingExpenses &&
          other.costAndExpenses == this.costAndExpenses &&
          other.interestIncome == this.interestIncome &&
          other.interestExpense == this.interestExpense &&
          other.depreciationAndAmortization ==
              this.depreciationAndAmortization &&
          other.ebitda == this.ebitda &&
          other.ebitdaratio == this.ebitdaratio &&
          other.operatingIncome == this.operatingIncome &&
          other.operatingIncomeRatio == this.operatingIncomeRatio &&
          other.totalOtherIncomeExpensesNet ==
              this.totalOtherIncomeExpensesNet &&
          other.incomeBeforeTax == this.incomeBeforeTax &&
          other.incomeBeforeTaxRatio == this.incomeBeforeTaxRatio &&
          other.incomeTaxExpense == this.incomeTaxExpense &&
          other.netIncome == this.netIncome &&
          other.netIncomeRatio == this.netIncomeRatio &&
          other.eps == this.eps &&
          other.epsdiluted == this.epsdiluted &&
          other.weightedAverageShsOut == this.weightedAverageShsOut &&
          other.weightedAverageShsOutDil == this.weightedAverageShsOutDil &&
          other.link == this.link &&
          other.finalLink == this.finalLink &&
          other.expires == this.expires);
}

class IncomeStatementTableRowDefinitionCompanion
    extends UpdateCompanion<IncomeStatementTableRow> {
  final Value<String> date;
  final Value<String> symbol;
  final Value<String?> reportedCurrency;
  final Value<String?> cik;
  final Value<String?> fillingDate;
  final Value<String?> acceptedDate;
  final Value<String?> calendarYear;
  final Value<String?> period;
  final Value<int?> revenue;
  final Value<int?> costOfRevenue;
  final Value<int?> grossProfit;
  final Value<double?> grossProfitRatio;
  final Value<int?> researchAndDevelopmentExpenses;
  final Value<int?> generalAndAdministrativeExpenses;
  final Value<int?> sellingAndMarketingExpenses;
  final Value<int?> sellingGeneralAndAdministrativeExpenses;
  final Value<int?> otherExpenses;
  final Value<int?> operatingExpenses;
  final Value<int?> costAndExpenses;
  final Value<int?> interestIncome;
  final Value<int?> interestExpense;
  final Value<int?> depreciationAndAmortization;
  final Value<int?> ebitda;
  final Value<double?> ebitdaratio;
  final Value<int?> operatingIncome;
  final Value<double?> operatingIncomeRatio;
  final Value<int?> totalOtherIncomeExpensesNet;
  final Value<int?> incomeBeforeTax;
  final Value<double?> incomeBeforeTaxRatio;
  final Value<int?> incomeTaxExpense;
  final Value<int?> netIncome;
  final Value<double?> netIncomeRatio;
  final Value<double?> eps;
  final Value<double?> epsdiluted;
  final Value<int?> weightedAverageShsOut;
  final Value<int?> weightedAverageShsOutDil;
  final Value<String?> link;
  final Value<String?> finalLink;
  final Value<DateTime> expires;
  final Value<int> rowid;
  const IncomeStatementTableRowDefinitionCompanion({
    this.date = const Value.absent(),
    this.symbol = const Value.absent(),
    this.reportedCurrency = const Value.absent(),
    this.cik = const Value.absent(),
    this.fillingDate = const Value.absent(),
    this.acceptedDate = const Value.absent(),
    this.calendarYear = const Value.absent(),
    this.period = const Value.absent(),
    this.revenue = const Value.absent(),
    this.costOfRevenue = const Value.absent(),
    this.grossProfit = const Value.absent(),
    this.grossProfitRatio = const Value.absent(),
    this.researchAndDevelopmentExpenses = const Value.absent(),
    this.generalAndAdministrativeExpenses = const Value.absent(),
    this.sellingAndMarketingExpenses = const Value.absent(),
    this.sellingGeneralAndAdministrativeExpenses = const Value.absent(),
    this.otherExpenses = const Value.absent(),
    this.operatingExpenses = const Value.absent(),
    this.costAndExpenses = const Value.absent(),
    this.interestIncome = const Value.absent(),
    this.interestExpense = const Value.absent(),
    this.depreciationAndAmortization = const Value.absent(),
    this.ebitda = const Value.absent(),
    this.ebitdaratio = const Value.absent(),
    this.operatingIncome = const Value.absent(),
    this.operatingIncomeRatio = const Value.absent(),
    this.totalOtherIncomeExpensesNet = const Value.absent(),
    this.incomeBeforeTax = const Value.absent(),
    this.incomeBeforeTaxRatio = const Value.absent(),
    this.incomeTaxExpense = const Value.absent(),
    this.netIncome = const Value.absent(),
    this.netIncomeRatio = const Value.absent(),
    this.eps = const Value.absent(),
    this.epsdiluted = const Value.absent(),
    this.weightedAverageShsOut = const Value.absent(),
    this.weightedAverageShsOutDil = const Value.absent(),
    this.link = const Value.absent(),
    this.finalLink = const Value.absent(),
    this.expires = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  IncomeStatementTableRowDefinitionCompanion.insert({
    required String date,
    required String symbol,
    this.reportedCurrency = const Value.absent(),
    this.cik = const Value.absent(),
    this.fillingDate = const Value.absent(),
    this.acceptedDate = const Value.absent(),
    this.calendarYear = const Value.absent(),
    this.period = const Value.absent(),
    this.revenue = const Value.absent(),
    this.costOfRevenue = const Value.absent(),
    this.grossProfit = const Value.absent(),
    this.grossProfitRatio = const Value.absent(),
    this.researchAndDevelopmentExpenses = const Value.absent(),
    this.generalAndAdministrativeExpenses = const Value.absent(),
    this.sellingAndMarketingExpenses = const Value.absent(),
    this.sellingGeneralAndAdministrativeExpenses = const Value.absent(),
    this.otherExpenses = const Value.absent(),
    this.operatingExpenses = const Value.absent(),
    this.costAndExpenses = const Value.absent(),
    this.interestIncome = const Value.absent(),
    this.interestExpense = const Value.absent(),
    this.depreciationAndAmortization = const Value.absent(),
    this.ebitda = const Value.absent(),
    this.ebitdaratio = const Value.absent(),
    this.operatingIncome = const Value.absent(),
    this.operatingIncomeRatio = const Value.absent(),
    this.totalOtherIncomeExpensesNet = const Value.absent(),
    this.incomeBeforeTax = const Value.absent(),
    this.incomeBeforeTaxRatio = const Value.absent(),
    this.incomeTaxExpense = const Value.absent(),
    this.netIncome = const Value.absent(),
    this.netIncomeRatio = const Value.absent(),
    this.eps = const Value.absent(),
    this.epsdiluted = const Value.absent(),
    this.weightedAverageShsOut = const Value.absent(),
    this.weightedAverageShsOutDil = const Value.absent(),
    this.link = const Value.absent(),
    this.finalLink = const Value.absent(),
    required DateTime expires,
    this.rowid = const Value.absent(),
  })  : date = Value(date),
        symbol = Value(symbol),
        expires = Value(expires);
  static Insertable<IncomeStatementTableRow> custom({
    Expression<String>? date,
    Expression<String>? symbol,
    Expression<String>? reportedCurrency,
    Expression<String>? cik,
    Expression<String>? fillingDate,
    Expression<String>? acceptedDate,
    Expression<String>? calendarYear,
    Expression<String>? period,
    Expression<int>? revenue,
    Expression<int>? costOfRevenue,
    Expression<int>? grossProfit,
    Expression<double>? grossProfitRatio,
    Expression<int>? researchAndDevelopmentExpenses,
    Expression<int>? generalAndAdministrativeExpenses,
    Expression<int>? sellingAndMarketingExpenses,
    Expression<int>? sellingGeneralAndAdministrativeExpenses,
    Expression<int>? otherExpenses,
    Expression<int>? operatingExpenses,
    Expression<int>? costAndExpenses,
    Expression<int>? interestIncome,
    Expression<int>? interestExpense,
    Expression<int>? depreciationAndAmortization,
    Expression<int>? ebitda,
    Expression<double>? ebitdaratio,
    Expression<int>? operatingIncome,
    Expression<double>? operatingIncomeRatio,
    Expression<int>? totalOtherIncomeExpensesNet,
    Expression<int>? incomeBeforeTax,
    Expression<double>? incomeBeforeTaxRatio,
    Expression<int>? incomeTaxExpense,
    Expression<int>? netIncome,
    Expression<double>? netIncomeRatio,
    Expression<double>? eps,
    Expression<double>? epsdiluted,
    Expression<int>? weightedAverageShsOut,
    Expression<int>? weightedAverageShsOutDil,
    Expression<String>? link,
    Expression<String>? finalLink,
    Expression<DateTime>? expires,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (symbol != null) 'symbol': symbol,
      if (reportedCurrency != null) 'reported_currency': reportedCurrency,
      if (cik != null) 'cik': cik,
      if (fillingDate != null) 'filling_date': fillingDate,
      if (acceptedDate != null) 'accepted_date': acceptedDate,
      if (calendarYear != null) 'calendar_year': calendarYear,
      if (period != null) 'period': period,
      if (revenue != null) 'revenue': revenue,
      if (costOfRevenue != null) 'cost_of_revenue': costOfRevenue,
      if (grossProfit != null) 'gross_profit': grossProfit,
      if (grossProfitRatio != null) 'gross_profit_ratio': grossProfitRatio,
      if (researchAndDevelopmentExpenses != null)
        'research_and_development_expenses': researchAndDevelopmentExpenses,
      if (generalAndAdministrativeExpenses != null)
        'general_and_administrative_expenses': generalAndAdministrativeExpenses,
      if (sellingAndMarketingExpenses != null)
        'selling_and_marketing_expenses': sellingAndMarketingExpenses,
      if (sellingGeneralAndAdministrativeExpenses != null)
        'selling_general_and_administrative_expenses':
            sellingGeneralAndAdministrativeExpenses,
      if (otherExpenses != null) 'other_expenses': otherExpenses,
      if (operatingExpenses != null) 'operating_expenses': operatingExpenses,
      if (costAndExpenses != null) 'cost_and_expenses': costAndExpenses,
      if (interestIncome != null) 'interest_income': interestIncome,
      if (interestExpense != null) 'interest_expense': interestExpense,
      if (depreciationAndAmortization != null)
        'depreciation_and_amortization': depreciationAndAmortization,
      if (ebitda != null) 'ebitda': ebitda,
      if (ebitdaratio != null) 'ebitdaratio': ebitdaratio,
      if (operatingIncome != null) 'operating_income': operatingIncome,
      if (operatingIncomeRatio != null)
        'operating_income_ratio': operatingIncomeRatio,
      if (totalOtherIncomeExpensesNet != null)
        'total_other_income_expenses_net': totalOtherIncomeExpensesNet,
      if (incomeBeforeTax != null) 'income_before_tax': incomeBeforeTax,
      if (incomeBeforeTaxRatio != null)
        'income_before_tax_ratio': incomeBeforeTaxRatio,
      if (incomeTaxExpense != null) 'income_tax_expense': incomeTaxExpense,
      if (netIncome != null) 'net_income': netIncome,
      if (netIncomeRatio != null) 'net_income_ratio': netIncomeRatio,
      if (eps != null) 'eps': eps,
      if (epsdiluted != null) 'epsdiluted': epsdiluted,
      if (weightedAverageShsOut != null)
        'weighted_average_shs_out': weightedAverageShsOut,
      if (weightedAverageShsOutDil != null)
        'weighted_average_shs_out_dil': weightedAverageShsOutDil,
      if (link != null) 'link': link,
      if (finalLink != null) 'final_link': finalLink,
      if (expires != null) 'expires': expires,
      if (rowid != null) 'rowid': rowid,
    });
  }

  IncomeStatementTableRowDefinitionCompanion copyWith(
      {Value<String>? date,
      Value<String>? symbol,
      Value<String?>? reportedCurrency,
      Value<String?>? cik,
      Value<String?>? fillingDate,
      Value<String?>? acceptedDate,
      Value<String?>? calendarYear,
      Value<String?>? period,
      Value<int?>? revenue,
      Value<int?>? costOfRevenue,
      Value<int?>? grossProfit,
      Value<double?>? grossProfitRatio,
      Value<int?>? researchAndDevelopmentExpenses,
      Value<int?>? generalAndAdministrativeExpenses,
      Value<int?>? sellingAndMarketingExpenses,
      Value<int?>? sellingGeneralAndAdministrativeExpenses,
      Value<int?>? otherExpenses,
      Value<int?>? operatingExpenses,
      Value<int?>? costAndExpenses,
      Value<int?>? interestIncome,
      Value<int?>? interestExpense,
      Value<int?>? depreciationAndAmortization,
      Value<int?>? ebitda,
      Value<double?>? ebitdaratio,
      Value<int?>? operatingIncome,
      Value<double?>? operatingIncomeRatio,
      Value<int?>? totalOtherIncomeExpensesNet,
      Value<int?>? incomeBeforeTax,
      Value<double?>? incomeBeforeTaxRatio,
      Value<int?>? incomeTaxExpense,
      Value<int?>? netIncome,
      Value<double?>? netIncomeRatio,
      Value<double?>? eps,
      Value<double?>? epsdiluted,
      Value<int?>? weightedAverageShsOut,
      Value<int?>? weightedAverageShsOutDil,
      Value<String?>? link,
      Value<String?>? finalLink,
      Value<DateTime>? expires,
      Value<int>? rowid}) {
    return IncomeStatementTableRowDefinitionCompanion(
      date: date ?? this.date,
      symbol: symbol ?? this.symbol,
      reportedCurrency: reportedCurrency ?? this.reportedCurrency,
      cik: cik ?? this.cik,
      fillingDate: fillingDate ?? this.fillingDate,
      acceptedDate: acceptedDate ?? this.acceptedDate,
      calendarYear: calendarYear ?? this.calendarYear,
      period: period ?? this.period,
      revenue: revenue ?? this.revenue,
      costOfRevenue: costOfRevenue ?? this.costOfRevenue,
      grossProfit: grossProfit ?? this.grossProfit,
      grossProfitRatio: grossProfitRatio ?? this.grossProfitRatio,
      researchAndDevelopmentExpenses:
          researchAndDevelopmentExpenses ?? this.researchAndDevelopmentExpenses,
      generalAndAdministrativeExpenses: generalAndAdministrativeExpenses ??
          this.generalAndAdministrativeExpenses,
      sellingAndMarketingExpenses:
          sellingAndMarketingExpenses ?? this.sellingAndMarketingExpenses,
      sellingGeneralAndAdministrativeExpenses:
          sellingGeneralAndAdministrativeExpenses ??
              this.sellingGeneralAndAdministrativeExpenses,
      otherExpenses: otherExpenses ?? this.otherExpenses,
      operatingExpenses: operatingExpenses ?? this.operatingExpenses,
      costAndExpenses: costAndExpenses ?? this.costAndExpenses,
      interestIncome: interestIncome ?? this.interestIncome,
      interestExpense: interestExpense ?? this.interestExpense,
      depreciationAndAmortization:
          depreciationAndAmortization ?? this.depreciationAndAmortization,
      ebitda: ebitda ?? this.ebitda,
      ebitdaratio: ebitdaratio ?? this.ebitdaratio,
      operatingIncome: operatingIncome ?? this.operatingIncome,
      operatingIncomeRatio: operatingIncomeRatio ?? this.operatingIncomeRatio,
      totalOtherIncomeExpensesNet:
          totalOtherIncomeExpensesNet ?? this.totalOtherIncomeExpensesNet,
      incomeBeforeTax: incomeBeforeTax ?? this.incomeBeforeTax,
      incomeBeforeTaxRatio: incomeBeforeTaxRatio ?? this.incomeBeforeTaxRatio,
      incomeTaxExpense: incomeTaxExpense ?? this.incomeTaxExpense,
      netIncome: netIncome ?? this.netIncome,
      netIncomeRatio: netIncomeRatio ?? this.netIncomeRatio,
      eps: eps ?? this.eps,
      epsdiluted: epsdiluted ?? this.epsdiluted,
      weightedAverageShsOut:
          weightedAverageShsOut ?? this.weightedAverageShsOut,
      weightedAverageShsOutDil:
          weightedAverageShsOutDil ?? this.weightedAverageShsOutDil,
      link: link ?? this.link,
      finalLink: finalLink ?? this.finalLink,
      expires: expires ?? this.expires,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (reportedCurrency.present) {
      map['reported_currency'] = Variable<String>(reportedCurrency.value);
    }
    if (cik.present) {
      map['cik'] = Variable<String>(cik.value);
    }
    if (fillingDate.present) {
      map['filling_date'] = Variable<String>(fillingDate.value);
    }
    if (acceptedDate.present) {
      map['accepted_date'] = Variable<String>(acceptedDate.value);
    }
    if (calendarYear.present) {
      map['calendar_year'] = Variable<String>(calendarYear.value);
    }
    if (period.present) {
      map['period'] = Variable<String>(period.value);
    }
    if (revenue.present) {
      map['revenue'] = Variable<int>(revenue.value);
    }
    if (costOfRevenue.present) {
      map['cost_of_revenue'] = Variable<int>(costOfRevenue.value);
    }
    if (grossProfit.present) {
      map['gross_profit'] = Variable<int>(grossProfit.value);
    }
    if (grossProfitRatio.present) {
      map['gross_profit_ratio'] = Variable<double>(grossProfitRatio.value);
    }
    if (researchAndDevelopmentExpenses.present) {
      map['research_and_development_expenses'] =
          Variable<int>(researchAndDevelopmentExpenses.value);
    }
    if (generalAndAdministrativeExpenses.present) {
      map['general_and_administrative_expenses'] =
          Variable<int>(generalAndAdministrativeExpenses.value);
    }
    if (sellingAndMarketingExpenses.present) {
      map['selling_and_marketing_expenses'] =
          Variable<int>(sellingAndMarketingExpenses.value);
    }
    if (sellingGeneralAndAdministrativeExpenses.present) {
      map['selling_general_and_administrative_expenses'] =
          Variable<int>(sellingGeneralAndAdministrativeExpenses.value);
    }
    if (otherExpenses.present) {
      map['other_expenses'] = Variable<int>(otherExpenses.value);
    }
    if (operatingExpenses.present) {
      map['operating_expenses'] = Variable<int>(operatingExpenses.value);
    }
    if (costAndExpenses.present) {
      map['cost_and_expenses'] = Variable<int>(costAndExpenses.value);
    }
    if (interestIncome.present) {
      map['interest_income'] = Variable<int>(interestIncome.value);
    }
    if (interestExpense.present) {
      map['interest_expense'] = Variable<int>(interestExpense.value);
    }
    if (depreciationAndAmortization.present) {
      map['depreciation_and_amortization'] =
          Variable<int>(depreciationAndAmortization.value);
    }
    if (ebitda.present) {
      map['ebitda'] = Variable<int>(ebitda.value);
    }
    if (ebitdaratio.present) {
      map['ebitdaratio'] = Variable<double>(ebitdaratio.value);
    }
    if (operatingIncome.present) {
      map['operating_income'] = Variable<int>(operatingIncome.value);
    }
    if (operatingIncomeRatio.present) {
      map['operating_income_ratio'] =
          Variable<double>(operatingIncomeRatio.value);
    }
    if (totalOtherIncomeExpensesNet.present) {
      map['total_other_income_expenses_net'] =
          Variable<int>(totalOtherIncomeExpensesNet.value);
    }
    if (incomeBeforeTax.present) {
      map['income_before_tax'] = Variable<int>(incomeBeforeTax.value);
    }
    if (incomeBeforeTaxRatio.present) {
      map['income_before_tax_ratio'] =
          Variable<double>(incomeBeforeTaxRatio.value);
    }
    if (incomeTaxExpense.present) {
      map['income_tax_expense'] = Variable<int>(incomeTaxExpense.value);
    }
    if (netIncome.present) {
      map['net_income'] = Variable<int>(netIncome.value);
    }
    if (netIncomeRatio.present) {
      map['net_income_ratio'] = Variable<double>(netIncomeRatio.value);
    }
    if (eps.present) {
      map['eps'] = Variable<double>(eps.value);
    }
    if (epsdiluted.present) {
      map['epsdiluted'] = Variable<double>(epsdiluted.value);
    }
    if (weightedAverageShsOut.present) {
      map['weighted_average_shs_out'] =
          Variable<int>(weightedAverageShsOut.value);
    }
    if (weightedAverageShsOutDil.present) {
      map['weighted_average_shs_out_dil'] =
          Variable<int>(weightedAverageShsOutDil.value);
    }
    if (link.present) {
      map['link'] = Variable<String>(link.value);
    }
    if (finalLink.present) {
      map['final_link'] = Variable<String>(finalLink.value);
    }
    if (expires.present) {
      map['expires'] = Variable<DateTime>(expires.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('IncomeStatementTableRowDefinitionCompanion(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('reportedCurrency: $reportedCurrency, ')
          ..write('cik: $cik, ')
          ..write('fillingDate: $fillingDate, ')
          ..write('acceptedDate: $acceptedDate, ')
          ..write('calendarYear: $calendarYear, ')
          ..write('period: $period, ')
          ..write('revenue: $revenue, ')
          ..write('costOfRevenue: $costOfRevenue, ')
          ..write('grossProfit: $grossProfit, ')
          ..write('grossProfitRatio: $grossProfitRatio, ')
          ..write(
              'researchAndDevelopmentExpenses: $researchAndDevelopmentExpenses, ')
          ..write(
              'generalAndAdministrativeExpenses: $generalAndAdministrativeExpenses, ')
          ..write('sellingAndMarketingExpenses: $sellingAndMarketingExpenses, ')
          ..write(
              'sellingGeneralAndAdministrativeExpenses: $sellingGeneralAndAdministrativeExpenses, ')
          ..write('otherExpenses: $otherExpenses, ')
          ..write('operatingExpenses: $operatingExpenses, ')
          ..write('costAndExpenses: $costAndExpenses, ')
          ..write('interestIncome: $interestIncome, ')
          ..write('interestExpense: $interestExpense, ')
          ..write('depreciationAndAmortization: $depreciationAndAmortization, ')
          ..write('ebitda: $ebitda, ')
          ..write('ebitdaratio: $ebitdaratio, ')
          ..write('operatingIncome: $operatingIncome, ')
          ..write('operatingIncomeRatio: $operatingIncomeRatio, ')
          ..write('totalOtherIncomeExpensesNet: $totalOtherIncomeExpensesNet, ')
          ..write('incomeBeforeTax: $incomeBeforeTax, ')
          ..write('incomeBeforeTaxRatio: $incomeBeforeTaxRatio, ')
          ..write('incomeTaxExpense: $incomeTaxExpense, ')
          ..write('netIncome: $netIncome, ')
          ..write('netIncomeRatio: $netIncomeRatio, ')
          ..write('eps: $eps, ')
          ..write('epsdiluted: $epsdiluted, ')
          ..write('weightedAverageShsOut: $weightedAverageShsOut, ')
          ..write('weightedAverageShsOutDil: $weightedAverageShsOutDil, ')
          ..write('link: $link, ')
          ..write('finalLink: $finalLink, ')
          ..write('expires: $expires, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MovingAverageDayTableRowDefinitionTable
    extends MovingAverageDayTableRowDefinition
    with
        TableInfo<$MovingAverageDayTableRowDefinitionTable,
            MovingAverageDayTableRow> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MovingAverageDayTableRowDefinitionTable(this.attachedDatabase,
      [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _openMeta = const VerificationMeta('open');
  @override
  late final GeneratedColumn<double> open = GeneratedColumn<double>(
      'open', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _highMeta = const VerificationMeta('high');
  @override
  late final GeneratedColumn<double> high = GeneratedColumn<double>(
      'high', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _lowMeta = const VerificationMeta('low');
  @override
  late final GeneratedColumn<double> low = GeneratedColumn<double>(
      'low', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _closeMeta = const VerificationMeta('close');
  @override
  late final GeneratedColumn<double> close = GeneratedColumn<double>(
      'close', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _volumeMeta = const VerificationMeta('volume');
  @override
  late final GeneratedColumn<int> volume = GeneratedColumn<int>(
      'volume', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _emaMeta = const VerificationMeta('ema');
  @override
  late final GeneratedColumn<double> ema = GeneratedColumn<double>(
      'ema', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  static const VerificationMeta _expiresMeta =
      const VerificationMeta('expires');
  @override
  late final GeneratedColumn<DateTime> expires = GeneratedColumn<DateTime>(
      'expires', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [date, symbol, open, high, low, close, volume, ema, expires];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'moving_average_day_table_row_definition';
  @override
  VerificationContext validateIntegrity(
      Insertable<MovingAverageDayTableRow> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('open')) {
      context.handle(
          _openMeta, open.isAcceptableOrUnknown(data['open']!, _openMeta));
    }
    if (data.containsKey('high')) {
      context.handle(
          _highMeta, high.isAcceptableOrUnknown(data['high']!, _highMeta));
    }
    if (data.containsKey('low')) {
      context.handle(
          _lowMeta, low.isAcceptableOrUnknown(data['low']!, _lowMeta));
    }
    if (data.containsKey('close')) {
      context.handle(
          _closeMeta, close.isAcceptableOrUnknown(data['close']!, _closeMeta));
    }
    if (data.containsKey('volume')) {
      context.handle(_volumeMeta,
          volume.isAcceptableOrUnknown(data['volume']!, _volumeMeta));
    }
    if (data.containsKey('ema')) {
      context.handle(
          _emaMeta, ema.isAcceptableOrUnknown(data['ema']!, _emaMeta));
    }
    if (data.containsKey('expires')) {
      context.handle(_expiresMeta,
          expires.isAcceptableOrUnknown(data['expires']!, _expiresMeta));
    } else if (isInserting) {
      context.missing(_expiresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {symbol, date};
  @override
  MovingAverageDayTableRow map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MovingAverageDayTableRow(
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      open: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}open']),
      high: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}high']),
      low: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}low']),
      close: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}close']),
      volume: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}volume']),
      ema: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}ema']),
      expires: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}expires'])!,
    );
  }

  @override
  $MovingAverageDayTableRowDefinitionTable createAlias(String alias) {
    return $MovingAverageDayTableRowDefinitionTable(attachedDatabase, alias);
  }
}

class MovingAverageDayTableRow extends DataClass
    implements Insertable<MovingAverageDayTableRow> {
  final String date;
  final String symbol;
  final double? open;
  final double? high;
  final double? low;
  final double? close;
  final int? volume;
  final double? ema;
  final DateTime expires;
  const MovingAverageDayTableRow(
      {required this.date,
      required this.symbol,
      this.open,
      this.high,
      this.low,
      this.close,
      this.volume,
      this.ema,
      required this.expires});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['date'] = Variable<String>(date);
    map['symbol'] = Variable<String>(symbol);
    if (!nullToAbsent || open != null) {
      map['open'] = Variable<double>(open);
    }
    if (!nullToAbsent || high != null) {
      map['high'] = Variable<double>(high);
    }
    if (!nullToAbsent || low != null) {
      map['low'] = Variable<double>(low);
    }
    if (!nullToAbsent || close != null) {
      map['close'] = Variable<double>(close);
    }
    if (!nullToAbsent || volume != null) {
      map['volume'] = Variable<int>(volume);
    }
    if (!nullToAbsent || ema != null) {
      map['ema'] = Variable<double>(ema);
    }
    map['expires'] = Variable<DateTime>(expires);
    return map;
  }

  MovingAverageDayTableRowDefinitionCompanion toCompanion(bool nullToAbsent) {
    return MovingAverageDayTableRowDefinitionCompanion(
      date: Value(date),
      symbol: Value(symbol),
      open: open == null && nullToAbsent ? const Value.absent() : Value(open),
      high: high == null && nullToAbsent ? const Value.absent() : Value(high),
      low: low == null && nullToAbsent ? const Value.absent() : Value(low),
      close:
          close == null && nullToAbsent ? const Value.absent() : Value(close),
      volume:
          volume == null && nullToAbsent ? const Value.absent() : Value(volume),
      ema: ema == null && nullToAbsent ? const Value.absent() : Value(ema),
      expires: Value(expires),
    );
  }

  factory MovingAverageDayTableRow.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MovingAverageDayTableRow(
      date: serializer.fromJson<String>(json['date']),
      symbol: serializer.fromJson<String>(json['symbol']),
      open: serializer.fromJson<double?>(json['open']),
      high: serializer.fromJson<double?>(json['high']),
      low: serializer.fromJson<double?>(json['low']),
      close: serializer.fromJson<double?>(json['close']),
      volume: serializer.fromJson<int?>(json['volume']),
      ema: serializer.fromJson<double?>(json['ema']),
      expires: serializer.fromJson<DateTime>(json['expires']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<String>(date),
      'symbol': serializer.toJson<String>(symbol),
      'open': serializer.toJson<double?>(open),
      'high': serializer.toJson<double?>(high),
      'low': serializer.toJson<double?>(low),
      'close': serializer.toJson<double?>(close),
      'volume': serializer.toJson<int?>(volume),
      'ema': serializer.toJson<double?>(ema),
      'expires': serializer.toJson<DateTime>(expires),
    };
  }

  MovingAverageDayTableRow copyWith(
          {String? date,
          String? symbol,
          Value<double?> open = const Value.absent(),
          Value<double?> high = const Value.absent(),
          Value<double?> low = const Value.absent(),
          Value<double?> close = const Value.absent(),
          Value<int?> volume = const Value.absent(),
          Value<double?> ema = const Value.absent(),
          DateTime? expires}) =>
      MovingAverageDayTableRow(
        date: date ?? this.date,
        symbol: symbol ?? this.symbol,
        open: open.present ? open.value : this.open,
        high: high.present ? high.value : this.high,
        low: low.present ? low.value : this.low,
        close: close.present ? close.value : this.close,
        volume: volume.present ? volume.value : this.volume,
        ema: ema.present ? ema.value : this.ema,
        expires: expires ?? this.expires,
      );
  @override
  String toString() {
    return (StringBuffer('MovingAverageDayTableRow(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('open: $open, ')
          ..write('high: $high, ')
          ..write('low: $low, ')
          ..write('close: $close, ')
          ..write('volume: $volume, ')
          ..write('ema: $ema, ')
          ..write('expires: $expires')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(date, symbol, open, high, low, close, volume, ema, expires);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MovingAverageDayTableRow &&
          other.date == this.date &&
          other.symbol == this.symbol &&
          other.open == this.open &&
          other.high == this.high &&
          other.low == this.low &&
          other.close == this.close &&
          other.volume == this.volume &&
          other.ema == this.ema &&
          other.expires == this.expires);
}

class MovingAverageDayTableRowDefinitionCompanion
    extends UpdateCompanion<MovingAverageDayTableRow> {
  final Value<String> date;
  final Value<String> symbol;
  final Value<double?> open;
  final Value<double?> high;
  final Value<double?> low;
  final Value<double?> close;
  final Value<int?> volume;
  final Value<double?> ema;
  final Value<DateTime> expires;
  final Value<int> rowid;
  const MovingAverageDayTableRowDefinitionCompanion({
    this.date = const Value.absent(),
    this.symbol = const Value.absent(),
    this.open = const Value.absent(),
    this.high = const Value.absent(),
    this.low = const Value.absent(),
    this.close = const Value.absent(),
    this.volume = const Value.absent(),
    this.ema = const Value.absent(),
    this.expires = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MovingAverageDayTableRowDefinitionCompanion.insert({
    required String date,
    required String symbol,
    this.open = const Value.absent(),
    this.high = const Value.absent(),
    this.low = const Value.absent(),
    this.close = const Value.absent(),
    this.volume = const Value.absent(),
    this.ema = const Value.absent(),
    required DateTime expires,
    this.rowid = const Value.absent(),
  })  : date = Value(date),
        symbol = Value(symbol),
        expires = Value(expires);
  static Insertable<MovingAverageDayTableRow> custom({
    Expression<String>? date,
    Expression<String>? symbol,
    Expression<double>? open,
    Expression<double>? high,
    Expression<double>? low,
    Expression<double>? close,
    Expression<int>? volume,
    Expression<double>? ema,
    Expression<DateTime>? expires,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (symbol != null) 'symbol': symbol,
      if (open != null) 'open': open,
      if (high != null) 'high': high,
      if (low != null) 'low': low,
      if (close != null) 'close': close,
      if (volume != null) 'volume': volume,
      if (ema != null) 'ema': ema,
      if (expires != null) 'expires': expires,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MovingAverageDayTableRowDefinitionCompanion copyWith(
      {Value<String>? date,
      Value<String>? symbol,
      Value<double?>? open,
      Value<double?>? high,
      Value<double?>? low,
      Value<double?>? close,
      Value<int?>? volume,
      Value<double?>? ema,
      Value<DateTime>? expires,
      Value<int>? rowid}) {
    return MovingAverageDayTableRowDefinitionCompanion(
      date: date ?? this.date,
      symbol: symbol ?? this.symbol,
      open: open ?? this.open,
      high: high ?? this.high,
      low: low ?? this.low,
      close: close ?? this.close,
      volume: volume ?? this.volume,
      ema: ema ?? this.ema,
      expires: expires ?? this.expires,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (open.present) {
      map['open'] = Variable<double>(open.value);
    }
    if (high.present) {
      map['high'] = Variable<double>(high.value);
    }
    if (low.present) {
      map['low'] = Variable<double>(low.value);
    }
    if (close.present) {
      map['close'] = Variable<double>(close.value);
    }
    if (volume.present) {
      map['volume'] = Variable<int>(volume.value);
    }
    if (ema.present) {
      map['ema'] = Variable<double>(ema.value);
    }
    if (expires.present) {
      map['expires'] = Variable<DateTime>(expires.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MovingAverageDayTableRowDefinitionCompanion(')
          ..write('date: $date, ')
          ..write('symbol: $symbol, ')
          ..write('open: $open, ')
          ..write('high: $high, ')
          ..write('low: $low, ')
          ..write('close: $close, ')
          ..write('volume: $volume, ')
          ..write('ema: $ema, ')
          ..write('expires: $expires, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftDb extends GeneratedDatabase {
  _$DriftDb(QueryExecutor e) : super(e);
  late final $CompanyProfileTableRowDefinitionTable
      companyProfileTableRowDefinition =
      $CompanyProfileTableRowDefinitionTable(this);
  late final $BalanceSheetStatementTableRowDefinitionTable
      balanceSheetStatementTableRowDefinition =
      $BalanceSheetStatementTableRowDefinitionTable(this);
  late final $CashFlowStatementTableRowDefinitionTable
      cashFlowStatementTableRowDefinition =
      $CashFlowStatementTableRowDefinitionTable(this);
  late final $IncomeStatementTableRowDefinitionTable
      incomeStatementTableRowDefinition =
      $IncomeStatementTableRowDefinitionTable(this);
  late final $MovingAverageDayTableRowDefinitionTable
      movingAverageDayTableRowDefinition =
      $MovingAverageDayTableRowDefinitionTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        companyProfileTableRowDefinition,
        balanceSheetStatementTableRowDefinition,
        cashFlowStatementTableRowDefinition,
        incomeStatementTableRowDefinition,
        movingAverageDayTableRowDefinition
      ];
}
