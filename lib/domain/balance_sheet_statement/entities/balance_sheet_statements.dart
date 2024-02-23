import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/company/entities/statement.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/statement_period_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';

@immutable
class BalanceSheetStatements extends Equatable implements Statements {
  final List<BalanceSheetStatement> statements;
  final bool valid;

  const BalanceSheetStatements({required this.statements, this.valid = true});

  const factory BalanceSheetStatements.invalid() = _$InvalidBalanceSheetStatements;

  BalanceSheetStatement getWithYear(int year) {
    final List<BalanceSheetStatement> ofYear =
        statements.where((BalanceSheetStatement e) => e.fillingDate.get.year == year).toList();
    if (ofYear.isEmpty) {
      return const BalanceSheetStatement.invalid();
    }
    return ofYear.first;
  }

  double? findCurrentRatio({required int year}) {
    final BalanceSheetStatement balanceSheetStatement = getWithYear(year);

    if (balanceSheetStatement.valid) {
      final double currentAssets = balanceSheetStatement.totalCurrentAssets.get.toDouble();
      final double currentLiabilities = balanceSheetStatement.totalCurrentLiabilities.get.toDouble();
      return currentAssets / currentLiabilities;
    }
    return null;
  }

  double? findLongTermDebtToAssetsRatio({required int year}) {
    final BalanceSheetStatement balanceSheetStatement = getWithYear(year);

    if (!balanceSheetStatement.isInvalid) {
      return balanceSheetStatement.longTermDebt.get.toDouble() / balanceSheetStatement.totalAssets.get.toDouble();
    }
    return null;
  }

  @override
  bool hasYear(int year) {
    return statements.where((BalanceSheetStatement e) => e.fillingDate.get.year == year).isNotEmpty;
  }

  @override
  List<Object?> get props => [statements, valid];
}

class _$InvalidBalanceSheetStatements extends BalanceSheetStatements {
  const _$InvalidBalanceSheetStatements() : super(statements: const [], valid: false);
}

@immutable
class BalanceSheetStatement extends Equatable implements Statement {
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
  final bool valid;

  bool get isInvalid {
    return !valid || _allNumbersZero();
  }

  @override
  IntValueObject get statementYear => calendarYear;

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
    this.valid = true,
  });

  const factory BalanceSheetStatement.invalid() = _$InvalidBalanceSheetStatement;

  bool _allNumbersZero() {
    final List<num> values = [
      cashAndCashEquivalents.get,
      shortTermInvestments.get,
      cashAndShortTermInvestments.get,
      netReceivables.get,
      inventory.get,
      otherCurrentAssets.get,
      totalCurrentAssets.get,
      propertyPlantEquipmentNet.get,
      goodwill.get,
      intangibleAssets.get,
      goodwillAndIntangibleAssets.get,
      longTermInvestments.get,
      taxAssets.get,
      otherNonCurrentAssets.get,
      totalNonCurrentAssets.get,
      otherAssets.get,
      totalAssets.get,
      accountPayables.get,
      shortTermDebt.get,
      taxPayables.get,
      deferredRevenue.get,
      otherCurrentLiabilities.get,
      totalCurrentLiabilities.get,
      longTermDebt.get,
      deferredRevenueNonCurrent.get,
      deferredTaxLiabilitiesNonCurrent.get,
      otherNonCurrentLiabilities.get,
      totalNonCurrentLiabilities.get,
      otherLiabilities.get,
      capitalLeaseObligations.get,
      totalLiabilities.get,
      preferredStock.get,
      commonStock.get,
      retainedEarnings.get,
      accumulatedOtherComprehensiveIncomeLoss.get,
      othertotalStockholdersEquity.get,
      totalStockholdersEquity.get,
      totalEquity.get,
      totalLiabilitiesAndStockholdersEquity.get,
      minorityInterest.get,
      totalLiabilitiesAndTotalEquity.get,
      totalInvestments.get,
      totalDebt.get,
      netDebt.get,
    ];

    for (final num val in values) {
      if (val != 0) {
        return false;
      }
    }
    return true;
  }

  @override
  String toString() {
    return "Filing date: ${fillingDate.get.year}";
  }

  @override
  List<Object?> get props => [
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
        valid,
      ];
}

class _$InvalidBalanceSheetStatement extends BalanceSheetStatement {
  const _$InvalidBalanceSheetStatement()
      : super(
          date: const DateValueObject.invalid(),
          symbol: const StringIdValueObject.invalid(),
          reportedCurrency: const CurrencyValueObject.invalid(),
          cik: const StringIdValueObject.invalid(),
          fillingDate: const DateValueObject.invalid(),
          acceptedDate: const DateValueObject.invalid(),
          calendarYear: const IntValueObject.invalid(),
          period: const StatementPeriodValueObject.invalid(),
          cashAndCashEquivalents: const NumberValueObject.invalid(),
          shortTermInvestments: const NumberValueObject.invalid(),
          cashAndShortTermInvestments: const NumberValueObject.invalid(),
          netReceivables: const NumberValueObject.invalid(),
          inventory: const NumberValueObject.invalid(),
          otherCurrentAssets: const NumberValueObject.invalid(),
          totalCurrentAssets: const NumberValueObject.invalid(),
          propertyPlantEquipmentNet: const NumberValueObject.invalid(),
          goodwill: const NumberValueObject.invalid(),
          intangibleAssets: const NumberValueObject.invalid(),
          goodwillAndIntangibleAssets: const NumberValueObject.invalid(),
          longTermInvestments: const NumberValueObject.invalid(),
          taxAssets: const NumberValueObject.invalid(),
          otherNonCurrentAssets: const NumberValueObject.invalid(),
          totalNonCurrentAssets: const NumberValueObject.invalid(),
          otherAssets: const NumberValueObject.invalid(),
          totalAssets: const NumberValueObject.invalid(),
          accountPayables: const NumberValueObject.invalid(),
          shortTermDebt: const NumberValueObject.invalid(),
          taxPayables: const NumberValueObject.invalid(),
          deferredRevenue: const NumberValueObject.invalid(),
          otherCurrentLiabilities: const NumberValueObject.invalid(),
          totalCurrentLiabilities: const NumberValueObject.invalid(),
          longTermDebt: const NumberValueObject.invalid(),
          deferredRevenueNonCurrent: const NumberValueObject.invalid(),
          deferredTaxLiabilitiesNonCurrent: const NumberValueObject.invalid(),
          otherNonCurrentLiabilities: const NumberValueObject.invalid(),
          totalNonCurrentLiabilities: const NumberValueObject.invalid(),
          otherLiabilities: const NumberValueObject.invalid(),
          capitalLeaseObligations: const NumberValueObject.invalid(),
          totalLiabilities: const NumberValueObject.invalid(),
          preferredStock: const NumberValueObject.invalid(),
          commonStock: const NumberValueObject.invalid(),
          retainedEarnings: const NumberValueObject.invalid(),
          accumulatedOtherComprehensiveIncomeLoss: const NumberValueObject.invalid(),
          othertotalStockholdersEquity: const NumberValueObject.invalid(),
          totalStockholdersEquity: const NumberValueObject.invalid(),
          totalEquity: const NumberValueObject.invalid(),
          totalLiabilitiesAndStockholdersEquity: const NumberValueObject.invalid(),
          minorityInterest: const NumberValueObject.invalid(),
          totalLiabilitiesAndTotalEquity: const NumberValueObject.invalid(),
          totalInvestments: const NumberValueObject.invalid(),
          totalDebt: const NumberValueObject.invalid(),
          netDebt: const NumberValueObject.invalid(),
          link: const UrlValueObject.invalid(),
          finalLink: const UrlValueObject.invalid(),
          valid: false,
        );
}
