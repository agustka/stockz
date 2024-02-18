import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/statement_period_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'balance_sheet_statement_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true, explicitToJson: true)
class BalanceSheetStatementsModel {
  final List<BalanceSheetStatementModel>? statements;

  const BalanceSheetStatementsModel({required this.statements});

  factory BalanceSheetStatementsModel.fromJson(Map<String, dynamic> json) {
    return _$BalanceSheetStatementsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BalanceSheetStatementsModelToJson(this);
}

@immutable
@JsonSerializable(includeIfNull: true)
class BalanceSheetStatementModel {
  final String? date;
  final String? symbol;
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

  const BalanceSheetStatementModel({
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

  factory BalanceSheetStatementModel.fromTableRow(BalanceSheetStatementTableRow row) {
    return BalanceSheetStatementModel(
      date: row.date,
      symbol: row.symbol,
      reportedCurrency: row.reportedCurrency,
      cik: row.cik,
      fillingDate: row.fillingDate,
      acceptedDate: row.acceptedDate,
      calendarYear: row.calendarYear,
      period: row.period,
      cashAndCashEquivalents: row.cashAndCashEquivalents,
      shortTermInvestments: row.shortTermInvestments,
      cashAndShortTermInvestments: row.cashAndShortTermInvestments,
      netReceivables: row.netReceivables,
      inventory: row.inventory,
      otherCurrentAssets: row.otherCurrentAssets,
      totalCurrentAssets: row.totalCurrentAssets,
      propertyPlantEquipmentNet: row.propertyPlantEquipmentNet,
      goodwill: row.goodwill,
      intangibleAssets: row.intangibleAssets,
      goodwillAndIntangibleAssets: row.goodwillAndIntangibleAssets,
      longTermInvestments: row.longTermInvestments,
      taxAssets: row.taxAssets,
      otherNonCurrentAssets: row.otherNonCurrentAssets,
      totalNonCurrentAssets: row.totalNonCurrentAssets,
      otherAssets: row.otherAssets,
      totalAssets: row.totalAssets,
      accountPayables: row.accountPayables,
      shortTermDebt: row.shortTermDebt,
      taxPayables: row.taxPayables,
      deferredRevenue: row.deferredRevenue,
      otherCurrentLiabilities: row.otherCurrentLiabilities,
      totalCurrentLiabilities: row.totalCurrentLiabilities,
      longTermDebt: row.longTermDebt,
      deferredRevenueNonCurrent: row.deferredRevenueNonCurrent,
      deferredTaxLiabilitiesNonCurrent: row.deferredTaxLiabilitiesNonCurrent,
      otherNonCurrentLiabilities: row.otherNonCurrentLiabilities,
      totalNonCurrentLiabilities: row.totalNonCurrentLiabilities,
      otherLiabilities: row.otherLiabilities,
      capitalLeaseObligations: row.capitalLeaseObligations,
      totalLiabilities: row.totalLiabilities,
      preferredStock: row.preferredStock,
      commonStock: row.commonStock,
      retainedEarnings: row.retainedEarnings,
      accumulatedOtherComprehensiveIncomeLoss: row.accumulatedOtherComprehensiveIncomeLoss,
      othertotalStockholdersEquity: row.othertotalStockholdersEquity,
      totalStockholdersEquity: row.totalStockholdersEquity,
      totalEquity: row.totalEquity,
      totalLiabilitiesAndStockholdersEquity: row.totalLiabilitiesAndStockholdersEquity,
      minorityInterest: row.minorityInterest,
      totalLiabilitiesAndTotalEquity: row.totalLiabilitiesAndTotalEquity,
      totalInvestments: row.totalInvestments,
      totalDebt: row.totalDebt,
      netDebt: row.netDebt,
      link: row.link,
      finalLink: row.finalLink,
    );
  }

  factory BalanceSheetStatementModel.fromJson(Map<String, dynamic> json) {
    return _$BalanceSheetStatementModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BalanceSheetStatementModelToJson(this);

  BalanceSheetStatement toDomain() {
    return BalanceSheetStatement(
      date: DateValueObject.fromString(date),
      symbol: StringIdValueObject(symbol),
      reportedCurrency: CurrencyValueObject(reportedCurrency),
      cik: StringIdValueObject(cik),
      fillingDate: DateValueObject.fromString(fillingDate),
      acceptedDate: DateValueObject.fromString(acceptedDate),
      calendarYear: IntValueObject.fromString(calendarYear),
      period: StatementPeriodValueObject(period),
      cashAndCashEquivalents: NumberValueObject(cashAndCashEquivalents),
      shortTermInvestments: NumberValueObject(shortTermInvestments),
      cashAndShortTermInvestments: NumberValueObject(cashAndShortTermInvestments),
      netReceivables: NumberValueObject(netReceivables),
      inventory: NumberValueObject(inventory),
      otherCurrentAssets: NumberValueObject(otherCurrentAssets),
      totalCurrentAssets: NumberValueObject(totalCurrentAssets),
      propertyPlantEquipmentNet: NumberValueObject(propertyPlantEquipmentNet),
      goodwill: NumberValueObject(goodwill),
      intangibleAssets: NumberValueObject(intangibleAssets),
      goodwillAndIntangibleAssets: NumberValueObject(goodwillAndIntangibleAssets),
      longTermInvestments: NumberValueObject(longTermInvestments),
      taxAssets: NumberValueObject(taxAssets),
      otherNonCurrentAssets: NumberValueObject(otherNonCurrentAssets),
      totalNonCurrentAssets: NumberValueObject(totalNonCurrentAssets),
      otherAssets: NumberValueObject(otherAssets),
      totalAssets: NumberValueObject(totalAssets),
      accountPayables: NumberValueObject(accountPayables),
      shortTermDebt: NumberValueObject(shortTermDebt),
      taxPayables: NumberValueObject(taxPayables),
      deferredRevenue: NumberValueObject(deferredRevenue),
      otherCurrentLiabilities: NumberValueObject(otherCurrentLiabilities),
      totalCurrentLiabilities: NumberValueObject(totalCurrentLiabilities),
      longTermDebt: NumberValueObject(longTermDebt),
      deferredRevenueNonCurrent: NumberValueObject(deferredRevenueNonCurrent),
      deferredTaxLiabilitiesNonCurrent: NumberValueObject(deferredTaxLiabilitiesNonCurrent),
      otherNonCurrentLiabilities: NumberValueObject(otherNonCurrentLiabilities),
      totalNonCurrentLiabilities: NumberValueObject(totalNonCurrentLiabilities),
      otherLiabilities: NumberValueObject(otherLiabilities),
      capitalLeaseObligations: NumberValueObject(capitalLeaseObligations),
      totalLiabilities: NumberValueObject(totalLiabilities),
      preferredStock: NumberValueObject(preferredStock),
      commonStock: NumberValueObject(commonStock),
      retainedEarnings: NumberValueObject(retainedEarnings),
      accumulatedOtherComprehensiveIncomeLoss: NumberValueObject(accumulatedOtherComprehensiveIncomeLoss),
      othertotalStockholdersEquity: NumberValueObject(othertotalStockholdersEquity),
      totalStockholdersEquity: NumberValueObject(totalStockholdersEquity),
      totalEquity: NumberValueObject(totalEquity),
      totalLiabilitiesAndStockholdersEquity: NumberValueObject(totalLiabilitiesAndStockholdersEquity),
      minorityInterest: NumberValueObject(minorityInterest),
      totalLiabilitiesAndTotalEquity: NumberValueObject(totalLiabilitiesAndTotalEquity),
      totalInvestments: NumberValueObject(totalInvestments),
      totalDebt: NumberValueObject(totalDebt),
      netDebt: NumberValueObject(netDebt),
      link: UrlValueObject(link),
      finalLink: UrlValueObject(finalLink),
    );
  }
}
