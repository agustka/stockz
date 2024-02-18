import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'income_statement_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class IncomeStatementModel {
  final String? date;
  final String? symbol;
  final String? reportedCurrency;
  final String? cik;
  final String? fillingDate;
  final String? acceptedDate;
  final String? calendarYear;
  final String? period;
  final num? revenue;
  final num? costOfRevenue;
  final num? grossProfit;
  final num? grossProfitRatio;
  final num? researchAndDevelopmentExpenses;
  final num? generalAndAdministrativeExpenses;
  final num? sellingAndMarketingExpenses;
  final num? sellingGeneralAndAdministrativeExpenses;
  final num? otherExpenses;
  final num? operatingExpenses;
  final num? costAndExpenses;
  final num? interestIncome;
  final num? interestExpense;
  final num? depreciationAndAmortization;
  final num? ebitda;
  final num? ebitdaratio;
  final num? operatingIncome;
  final num? operatingIncomeRatio;
  final num? totalOtherIncomeExpensesNet;
  final num? incomeBeforeTax;
  final num? incomeBeforeTaxRatio;
  final num? incomeTaxExpense;
  final num? netIncome;
  final num? netIncomeRatio;
  final num? eps;
  final num? epsdiluted;
  final num? weightedAverageShsOut;
  final num? weightedAverageShsOutDil;
  final String? link;
  final String? finalLink;

  const IncomeStatementModel({
    required this.date,
    required this.symbol,
    required this.reportedCurrency,
    required this.cik,
    required this.fillingDate,
    required this.acceptedDate,
    required this.calendarYear,
    required this.period,
    required this.revenue,
    required this.costOfRevenue,
    required this.grossProfit,
    required this.grossProfitRatio,
    required this.researchAndDevelopmentExpenses,
    required this.generalAndAdministrativeExpenses,
    required this.sellingAndMarketingExpenses,
    required this.sellingGeneralAndAdministrativeExpenses,
    required this.otherExpenses,
    required this.operatingExpenses,
    required this.costAndExpenses,
    required this.interestIncome,
    required this.interestExpense,
    required this.depreciationAndAmortization,
    required this.ebitda,
    required this.ebitdaratio,
    required this.operatingIncome,
    required this.operatingIncomeRatio,
    required this.totalOtherIncomeExpensesNet,
    required this.incomeBeforeTax,
    required this.incomeBeforeTaxRatio,
    required this.incomeTaxExpense,
    required this.netIncome,
    required this.netIncomeRatio,
    required this.eps,
    required this.epsdiluted,
    required this.weightedAverageShsOut,
    required this.weightedAverageShsOutDil,
    required this.link,
    required this.finalLink,
  });

  factory IncomeStatementModel.fromJson(Map<String, dynamic> json) {
    return _$IncomeStatementModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IncomeStatementModelToJson(this);
}
