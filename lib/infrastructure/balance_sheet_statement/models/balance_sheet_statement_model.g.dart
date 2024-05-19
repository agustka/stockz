// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'balance_sheet_statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BalanceSheetStatementsModel _$BalanceSheetStatementsModelFromJson(
        Map<String, dynamic> json) =>
    BalanceSheetStatementsModel(
      statements: (json['statements'] as List<dynamic>?)
          ?.map((e) =>
              BalanceSheetStatementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BalanceSheetStatementsModelToJson(
        BalanceSheetStatementsModel instance) =>
    <String, dynamic>{
      'statements': instance.statements?.map((e) => e.toJson()).toList(),
    };

BalanceSheetStatementModel _$BalanceSheetStatementModelFromJson(
        Map<String, dynamic> json) =>
    BalanceSheetStatementModel(
      date: json['date'] as String?,
      symbol: json['symbol'] as String?,
      reportedCurrency: json['reportedCurrency'] as String?,
      cik: json['cik'] as String?,
      fillingDate: json['fillingDate'] as String?,
      acceptedDate: json['acceptedDate'] as String?,
      calendarYear: json['calendarYear'] as String?,
      period: json['period'] as String?,
      cashAndCashEquivalents: (json['cashAndCashEquivalents'] as num?)?.toInt(),
      shortTermInvestments: (json['shortTermInvestments'] as num?)?.toInt(),
      cashAndShortTermInvestments:
          (json['cashAndShortTermInvestments'] as num?)?.toInt(),
      netReceivables: (json['netReceivables'] as num?)?.toInt(),
      inventory: (json['inventory'] as num?)?.toInt(),
      otherCurrentAssets: (json['otherCurrentAssets'] as num?)?.toInt(),
      totalCurrentAssets: (json['totalCurrentAssets'] as num?)?.toInt(),
      propertyPlantEquipmentNet:
          (json['propertyPlantEquipmentNet'] as num?)?.toInt(),
      goodwill: (json['goodwill'] as num?)?.toInt(),
      intangibleAssets: (json['intangibleAssets'] as num?)?.toInt(),
      goodwillAndIntangibleAssets:
          (json['goodwillAndIntangibleAssets'] as num?)?.toInt(),
      longTermInvestments: (json['longTermInvestments'] as num?)?.toInt(),
      taxAssets: (json['taxAssets'] as num?)?.toInt(),
      otherNonCurrentAssets: (json['otherNonCurrentAssets'] as num?)?.toInt(),
      totalNonCurrentAssets: (json['totalNonCurrentAssets'] as num?)?.toInt(),
      otherAssets: (json['otherAssets'] as num?)?.toInt(),
      totalAssets: (json['totalAssets'] as num?)?.toInt(),
      accountPayables: (json['accountPayables'] as num?)?.toInt(),
      shortTermDebt: (json['shortTermDebt'] as num?)?.toInt(),
      taxPayables: (json['taxPayables'] as num?)?.toInt(),
      deferredRevenue: (json['deferredRevenue'] as num?)?.toInt(),
      otherCurrentLiabilities:
          (json['otherCurrentLiabilities'] as num?)?.toInt(),
      totalCurrentLiabilities:
          (json['totalCurrentLiabilities'] as num?)?.toInt(),
      longTermDebt: (json['longTermDebt'] as num?)?.toInt(),
      deferredRevenueNonCurrent:
          (json['deferredRevenueNonCurrent'] as num?)?.toInt(),
      deferredTaxLiabilitiesNonCurrent:
          (json['deferredTaxLiabilitiesNonCurrent'] as num?)?.toInt(),
      otherNonCurrentLiabilities:
          (json['otherNonCurrentLiabilities'] as num?)?.toInt(),
      totalNonCurrentLiabilities:
          (json['totalNonCurrentLiabilities'] as num?)?.toInt(),
      otherLiabilities: (json['otherLiabilities'] as num?)?.toInt(),
      capitalLeaseObligations:
          (json['capitalLeaseObligations'] as num?)?.toInt(),
      totalLiabilities: (json['totalLiabilities'] as num?)?.toInt(),
      preferredStock: (json['preferredStock'] as num?)?.toInt(),
      commonStock: (json['commonStock'] as num?)?.toInt(),
      retainedEarnings: (json['retainedEarnings'] as num?)?.toInt(),
      accumulatedOtherComprehensiveIncomeLoss:
          (json['accumulatedOtherComprehensiveIncomeLoss'] as num?)?.toInt(),
      othertotalStockholdersEquity:
          (json['othertotalStockholdersEquity'] as num?)?.toInt(),
      totalStockholdersEquity:
          (json['totalStockholdersEquity'] as num?)?.toInt(),
      totalEquity: (json['totalEquity'] as num?)?.toInt(),
      totalLiabilitiesAndStockholdersEquity:
          (json['totalLiabilitiesAndStockholdersEquity'] as num?)?.toInt(),
      minorityInterest: (json['minorityInterest'] as num?)?.toInt(),
      totalLiabilitiesAndTotalEquity:
          (json['totalLiabilitiesAndTotalEquity'] as num?)?.toInt(),
      totalInvestments: (json['totalInvestments'] as num?)?.toInt(),
      totalDebt: (json['totalDebt'] as num?)?.toInt(),
      netDebt: (json['netDebt'] as num?)?.toInt(),
      link: json['link'] as String?,
      finalLink: json['finalLink'] as String?,
    );

Map<String, dynamic> _$BalanceSheetStatementModelToJson(
        BalanceSheetStatementModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'symbol': instance.symbol,
      'reportedCurrency': instance.reportedCurrency,
      'cik': instance.cik,
      'fillingDate': instance.fillingDate,
      'acceptedDate': instance.acceptedDate,
      'calendarYear': instance.calendarYear,
      'period': instance.period,
      'cashAndCashEquivalents': instance.cashAndCashEquivalents,
      'shortTermInvestments': instance.shortTermInvestments,
      'cashAndShortTermInvestments': instance.cashAndShortTermInvestments,
      'netReceivables': instance.netReceivables,
      'inventory': instance.inventory,
      'otherCurrentAssets': instance.otherCurrentAssets,
      'totalCurrentAssets': instance.totalCurrentAssets,
      'propertyPlantEquipmentNet': instance.propertyPlantEquipmentNet,
      'goodwill': instance.goodwill,
      'intangibleAssets': instance.intangibleAssets,
      'goodwillAndIntangibleAssets': instance.goodwillAndIntangibleAssets,
      'longTermInvestments': instance.longTermInvestments,
      'taxAssets': instance.taxAssets,
      'otherNonCurrentAssets': instance.otherNonCurrentAssets,
      'totalNonCurrentAssets': instance.totalNonCurrentAssets,
      'otherAssets': instance.otherAssets,
      'totalAssets': instance.totalAssets,
      'accountPayables': instance.accountPayables,
      'shortTermDebt': instance.shortTermDebt,
      'taxPayables': instance.taxPayables,
      'deferredRevenue': instance.deferredRevenue,
      'otherCurrentLiabilities': instance.otherCurrentLiabilities,
      'totalCurrentLiabilities': instance.totalCurrentLiabilities,
      'longTermDebt': instance.longTermDebt,
      'deferredRevenueNonCurrent': instance.deferredRevenueNonCurrent,
      'deferredTaxLiabilitiesNonCurrent':
          instance.deferredTaxLiabilitiesNonCurrent,
      'otherNonCurrentLiabilities': instance.otherNonCurrentLiabilities,
      'totalNonCurrentLiabilities': instance.totalNonCurrentLiabilities,
      'otherLiabilities': instance.otherLiabilities,
      'capitalLeaseObligations': instance.capitalLeaseObligations,
      'totalLiabilities': instance.totalLiabilities,
      'preferredStock': instance.preferredStock,
      'commonStock': instance.commonStock,
      'retainedEarnings': instance.retainedEarnings,
      'accumulatedOtherComprehensiveIncomeLoss':
          instance.accumulatedOtherComprehensiveIncomeLoss,
      'othertotalStockholdersEquity': instance.othertotalStockholdersEquity,
      'totalStockholdersEquity': instance.totalStockholdersEquity,
      'totalEquity': instance.totalEquity,
      'totalLiabilitiesAndStockholdersEquity':
          instance.totalLiabilitiesAndStockholdersEquity,
      'minorityInterest': instance.minorityInterest,
      'totalLiabilitiesAndTotalEquity': instance.totalLiabilitiesAndTotalEquity,
      'totalInvestments': instance.totalInvestments,
      'totalDebt': instance.totalDebt,
      'netDebt': instance.netDebt,
      'link': instance.link,
      'finalLink': instance.finalLink,
    };
