import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/statement_period_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'cash_flow_statement_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class CashFlowStatementModel {
  final String? date;
  final String? symbol;
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

  const CashFlowStatementModel({
    required this.date,
    required this.symbol,
    required this.reportedCurrency,
    required this.cik,
    required this.fillingDate,
    required this.acceptedDate,
    required this.calendarYear,
    required this.period,
    required this.netIncome,
    required this.depreciationAndAmortization,
    required this.deferredIncomeTax,
    required this.stockBasedCompensation,
    required this.changeInWorkingCapital,
    required this.accountsReceivables,
    required this.inventory,
    required this.accountsPayables,
    required this.otherWorkingCapital,
    required this.otherNonCashItems,
    required this.netCashProvidedByOperatingActivities,
    required this.investmentsInPropertyPlantAndEquipment,
    required this.acquisitionsNet,
    required this.purchasesOfInvestments,
    required this.salesMaturitiesOfInvestments,
    required this.otherInvestingActivites,
    required this.netCashUsedForInvestingActivites,
    required this.debtRepayment,
    required this.commonStockIssued,
    required this.commonStockRepurchased,
    required this.dividendsPaid,
    required this.otherFinancingActivites,
    required this.netCashUsedProvidedByFinancingActivities,
    required this.effectOfForexChangesOnCash,
    required this.netChangeInCash,
    required this.cashAtEndOfPeriod,
    required this.cashAtBeginningOfPeriod,
    required this.operatingCashFlow,
    required this.capitalExpenditure,
    required this.freeCashFlow,
    required this.link,
    required this.finalLink,
  });

  factory CashFlowStatementModel.fromTableRow(CashFlowStatementTableRow row) {
    return CashFlowStatementModel(
      date: row.date,
      symbol: row.symbol,
      reportedCurrency: row.reportedCurrency,
      cik: row.cik,
      fillingDate: row.fillingDate,
      acceptedDate: row.acceptedDate,
      calendarYear: row.calendarYear,
      period: row.period,
      netIncome: row.netIncome,
      depreciationAndAmortization: row.depreciationAndAmortization,
      deferredIncomeTax: row.deferredIncomeTax,
      stockBasedCompensation: row.stockBasedCompensation,
      changeInWorkingCapital: row.changeInWorkingCapital,
      accountsReceivables: row.accountsReceivables,
      inventory: row.inventory,
      accountsPayables: row.accountsPayables,
      otherWorkingCapital: row.otherWorkingCapital,
      otherNonCashItems: row.otherNonCashItems,
      netCashProvidedByOperatingActivities: row.netCashProvidedByOperatingActivities,
      investmentsInPropertyPlantAndEquipment: row.investmentsInPropertyPlantAndEquipment,
      acquisitionsNet: row.acquisitionsNet,
      purchasesOfInvestments: row.purchasesOfInvestments,
      salesMaturitiesOfInvestments: row.salesMaturitiesOfInvestments,
      otherInvestingActivites: row.otherInvestingActivites,
      netCashUsedForInvestingActivites: row.netCashUsedForInvestingActivites,
      debtRepayment: row.debtRepayment,
      commonStockIssued: row.commonStockIssued,
      commonStockRepurchased: row.commonStockRepurchased,
      dividendsPaid: row.dividendsPaid,
      otherFinancingActivites: row.otherFinancingActivites,
      netCashUsedProvidedByFinancingActivities: row.netCashUsedProvidedByFinancingActivities,
      effectOfForexChangesOnCash: row.effectOfForexChangesOnCash,
      netChangeInCash: row.netChangeInCash,
      cashAtEndOfPeriod: row.cashAtEndOfPeriod,
      cashAtBeginningOfPeriod: row.cashAtBeginningOfPeriod,
      operatingCashFlow: row.operatingCashFlow,
      capitalExpenditure: row.capitalExpenditure,
      freeCashFlow: row.freeCashFlow,
      link: row.link,
      finalLink: row.finalLink,
    );
  }

  factory CashFlowStatementModel.fromJson(Map<String, dynamic> json) {
    return _$CashFlowStatementModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CashFlowStatementModelToJson(this);

  CashFlowStatement toDomain() {
    return CashFlowStatement(
      date: DateValueObject.fromString(date),
      symbol: StringIdValueObject(symbol),
      reportedCurrency: CurrencyValueObject(reportedCurrency),
      cik: StringIdValueObject(cik),
      fillingDate: DateValueObject.fromString(fillingDate),
      acceptedDate: DateValueObject.fromString(acceptedDate),
      calendarYear: IntValueObject.fromString(calendarYear),
      period: StatementPeriodValueObject(period),
      netIncome: NumberValueObject(netIncome),
      depreciationAndAmortization: NumberValueObject(depreciationAndAmortization),
      deferredIncomeTax: NumberValueObject(deferredIncomeTax),
      stockBasedCompensation: NumberValueObject(stockBasedCompensation),
      changeInWorkingCapital: NumberValueObject(changeInWorkingCapital),
      accountsReceivables: NumberValueObject(accountsReceivables),
      inventory: NumberValueObject(inventory),
      accountsPayables: NumberValueObject(accountsPayables),
      otherWorkingCapital: NumberValueObject(otherWorkingCapital),
      otherNonCashItems: NumberValueObject(otherNonCashItems),
      netCashProvidedByOperatingActivities: NumberValueObject(netCashProvidedByOperatingActivities),
      investmentsInPropertyPlantAndEquipment: NumberValueObject(investmentsInPropertyPlantAndEquipment),
      acquisitionsNet: NumberValueObject(acquisitionsNet),
      purchasesOfInvestments: NumberValueObject(purchasesOfInvestments),
      salesMaturitiesOfInvestments: NumberValueObject(salesMaturitiesOfInvestments),
      otherInvestingActivites: NumberValueObject(otherInvestingActivites),
      netCashUsedForInvestingActivites: NumberValueObject(netCashUsedForInvestingActivites),
      debtRepayment: NumberValueObject(debtRepayment),
      commonStockIssued: NumberValueObject(commonStockIssued),
      commonStockRepurchased: NumberValueObject(commonStockRepurchased),
      dividendsPaid: NumberValueObject(dividendsPaid),
      otherFinancingActivites: NumberValueObject(otherFinancingActivites),
      netCashUsedProvidedByFinancingActivities: NumberValueObject(netCashUsedProvidedByFinancingActivities),
      effectOfForexChangesOnCash: NumberValueObject(effectOfForexChangesOnCash),
      netChangeInCash: NumberValueObject(netChangeInCash),
      cashAtEndOfPeriod: NumberValueObject(cashAtEndOfPeriod),
      cashAtBeginningOfPeriod: NumberValueObject(cashAtBeginningOfPeriod),
      operatingCashFlow: NumberValueObject(operatingCashFlow),
      capitalExpenditure: NumberValueObject(capitalExpenditure),
      freeCashFlow: NumberValueObject(freeCashFlow),
      link: UrlValueObject(link),
      finalLink: UrlValueObject(finalLink),
    );
  }
}
