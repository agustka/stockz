import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/statement_period_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';

@immutable
class BalanceSheetStatements {
  final List<BalanceSheetStatement> statements;

  const BalanceSheetStatements({required this.statements});
}

@immutable
class BalanceSheetStatement {
  final DateValueObject date;
  final StringIdValueObject symbol;
  final CurrencyValueObject reportedCurrency;
  final StringIdValueObject cik;
  final DateValueObject fillingDate;
  final DateValueObject acceptedDate;
  final IntValueObject calendarYear;
  final StatementPeriodValueObject period;
  final NumberValueObject cashAndCashEquivalents;
  final NumberValueObject shortTermInvestments;
  final NumberValueObject cashAndShortTermInvestments;
  final NumberValueObject netReceivables;
  final NumberValueObject inventory;
  final NumberValueObject otherCurrentAssets;
  final NumberValueObject totalCurrentAssets;
  final NumberValueObject propertyPlantEquipmentNet;
  final NumberValueObject goodwill;
  final NumberValueObject intangibleAssets;
  final NumberValueObject goodwillAndIntangibleAssets;
  final NumberValueObject longTermInvestments;
  final NumberValueObject taxAssets;
  final NumberValueObject otherNonCurrentAssets;
  final NumberValueObject totalNonCurrentAssets;
  final NumberValueObject otherAssets;
  final NumberValueObject totalAssets;
  final NumberValueObject accountPayables;
  final NumberValueObject shortTermDebt;
  final NumberValueObject taxPayables;
  final NumberValueObject deferredRevenue;
  final NumberValueObject otherCurrentLiabilities;
  final NumberValueObject totalCurrentLiabilities;
  final NumberValueObject longTermDebt;
  final NumberValueObject deferredRevenueNonCurrent;
  final NumberValueObject deferredTaxLiabilitiesNonCurrent;
  final NumberValueObject otherNonCurrentLiabilities;
  final NumberValueObject totalNonCurrentLiabilities;
  final NumberValueObject otherLiabilities;
  final NumberValueObject capitalLeaseObligations;
  final NumberValueObject totalLiabilities;
  final NumberValueObject preferredStock;
  final NumberValueObject commonStock;
  final NumberValueObject retainedEarnings;
  final NumberValueObject accumulatedOtherComprehensiveIncomeLoss;
  final NumberValueObject othertotalStockholdersEquity;
  final NumberValueObject totalStockholdersEquity;
  final NumberValueObject totalEquity;
  final NumberValueObject totalLiabilitiesAndStockholdersEquity;
  final NumberValueObject minorityInterest;
  final NumberValueObject totalLiabilitiesAndTotalEquity;
  final NumberValueObject totalInvestments;
  final NumberValueObject totalDebt;
  final NumberValueObject netDebt;
  final UrlValueObject link;
  final UrlValueObject finalLink;

  const BalanceSheetStatement({
    required this.date,
    required this.symbol,
    required this.reportedCurrency,
    required this.cik,
    required this.fillingDate,
    required this.acceptedDate,
    required this.calendarYear,
    required this.period,
    required this.cashAndCashEquivalents,
    required this.shortTermInvestments,
    required this.cashAndShortTermInvestments,
    required this.netReceivables,
    required this.inventory,
    required this.otherCurrentAssets,
    required this.totalCurrentAssets,
    required this.propertyPlantEquipmentNet,
    required this.goodwill,
    required this.intangibleAssets,
    required this.goodwillAndIntangibleAssets,
    required this.longTermInvestments,
    required this.taxAssets,
    required this.otherNonCurrentAssets,
    required this.totalNonCurrentAssets,
    required this.otherAssets,
    required this.totalAssets,
    required this.accountPayables,
    required this.shortTermDebt,
    required this.taxPayables,
    required this.deferredRevenue,
    required this.otherCurrentLiabilities,
    required this.totalCurrentLiabilities,
    required this.longTermDebt,
    required this.deferredRevenueNonCurrent,
    required this.deferredTaxLiabilitiesNonCurrent,
    required this.otherNonCurrentLiabilities,
    required this.totalNonCurrentLiabilities,
    required this.otherLiabilities,
    required this.capitalLeaseObligations,
    required this.totalLiabilities,
    required this.preferredStock,
    required this.commonStock,
    required this.retainedEarnings,
    required this.accumulatedOtherComprehensiveIncomeLoss,
    required this.othertotalStockholdersEquity,
    required this.totalStockholdersEquity,
    required this.totalEquity,
    required this.totalLiabilitiesAndStockholdersEquity,
    required this.minorityInterest,
    required this.totalLiabilitiesAndTotalEquity,
    required this.totalInvestments,
    required this.totalDebt,
    required this.netDebt,
    required this.link,
    required this.finalLink,
  });
}
