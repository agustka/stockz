import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

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
  final num? netIncome;
  final num? depreciationAndAmortization;
  final num? deferredIncomeTax;
  final num? stockBasedCompensation;
  final num? changeInWorkingCapital;
  final num? accountsReceivables;
  final num? inventory;
  final num? accountsPayables;
  final num? otherWorkingCapital;
  final num? otherNonCashItems;
  final num? netCashProvidedByOperatingActivities;
  final num? investmentsInPropertyPlantAndEquipment;
  final num? acquisitionsNet;
  final num? purchasesOfInvestments;
  final num? salesMaturitiesOfInvestments;
  final num? otherInvestingActivites;
  final num? netCashUsedForInvestingActivites;
  final num? debtRepayment;
  final num? commonStockIssued;
  final num? commonStockRepurchased;
  final num? dividendsPaid;
  final num? otherFinancingActivites;
  final num? netCashUsedProvidedByFinancingActivities;
  final num? effectOfForexChangesOnCash;
  final num? netChangeInCash;
  final num? cashAtEndOfPeriod;
  final num? cashAtBeginningOfPeriod;
  final num? operatingCashFlow;
  final num? capitalExpenditure;
  final num? freeCashFlow;
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

  factory CashFlowStatementModel.fromJson(Map<String, dynamic> json) {
    return _$CashFlowStatementModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CashFlowStatementModelToJson(this);
}
