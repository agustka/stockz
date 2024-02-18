import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/statement_period_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';
import 'package:stockz/domain/income_statement/entities/income_statements.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'income_statement_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class IncomeStatementModel {
  final String? symbol;
  final String? date;
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

  const IncomeStatementModel({
    required this.symbol,
    required this.date,
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

  factory IncomeStatementModel.fromTableRow(IncomeStatementTableRow row) {
    return IncomeStatementModel(
      date: row.date,
      symbol: row.symbol,
      reportedCurrency: row.reportedCurrency,
      cik: row.cik,
      fillingDate: row.fillingDate,
      acceptedDate: row.acceptedDate,
      calendarYear: row.calendarYear,
      period: row.period,
      revenue: row.revenue,
      costOfRevenue: row.costOfRevenue,
      grossProfit: row.grossProfit,
      grossProfitRatio: row.grossProfitRatio,
      researchAndDevelopmentExpenses: row.researchAndDevelopmentExpenses,
      generalAndAdministrativeExpenses: row.generalAndAdministrativeExpenses,
      sellingAndMarketingExpenses: row.sellingAndMarketingExpenses,
      sellingGeneralAndAdministrativeExpenses: row.sellingGeneralAndAdministrativeExpenses,
      otherExpenses: row.otherExpenses,
      operatingExpenses: row.operatingExpenses,
      costAndExpenses: row.costAndExpenses,
      interestIncome: row.interestIncome,
      interestExpense: row.interestExpense,
      depreciationAndAmortization: row.depreciationAndAmortization,
      ebitda: row.ebitda,
      ebitdaratio: row.ebitdaratio,
      operatingIncome: row.operatingIncome,
      operatingIncomeRatio: row.operatingIncomeRatio,
      totalOtherIncomeExpensesNet: row.totalOtherIncomeExpensesNet,
      incomeBeforeTax: row.incomeBeforeTax,
      incomeBeforeTaxRatio: row.incomeBeforeTaxRatio,
      incomeTaxExpense: row.incomeTaxExpense,
      netIncome: row.netIncome,
      netIncomeRatio: row.netIncomeRatio,
      eps: row.eps,
      epsdiluted: row.epsdiluted,
      weightedAverageShsOut: row.weightedAverageShsOut,
      weightedAverageShsOutDil: row.weightedAverageShsOutDil,
      link: row.link,
      finalLink: row.finalLink,
    );
  }

  factory IncomeStatementModel.fromJson(Map<String, dynamic> json) {
    return _$IncomeStatementModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IncomeStatementModelToJson(this);

  IncomeStatement toDomain() {
    return IncomeStatement(
      symbol: StringIdValueObject(symbol),
      date: DateValueObject.fromString(date),
      reportedCurrency: CurrencyValueObject(reportedCurrency),
      cik: StringIdValueObject(cik),
      fillingDate: DateValueObject.fromString(fillingDate),
      acceptedDate: DateValueObject.fromString(acceptedDate),
      calendarYear: IntValueObject.fromString(calendarYear),
      period: StatementPeriodValueObject(period),
      revenue: NumberValueObject(revenue),
      costOfRevenue: NumberValueObject(costOfRevenue),
      grossProfit: NumberValueObject(grossProfit),
      grossProfitRatio: NumberValueObject(grossProfitRatio),
      researchAndDevelopmentExpenses: NumberValueObject(researchAndDevelopmentExpenses),
      generalAndAdministrativeExpenses: NumberValueObject(generalAndAdministrativeExpenses),
      sellingAndMarketingExpenses: NumberValueObject(sellingAndMarketingExpenses),
      sellingGeneralAndAdministrativeExpenses: NumberValueObject(sellingGeneralAndAdministrativeExpenses),
      otherExpenses: NumberValueObject(otherExpenses),
      operatingExpenses: NumberValueObject(operatingExpenses),
      costAndExpenses: NumberValueObject(costAndExpenses),
      interestIncome: NumberValueObject(interestIncome),
      interestExpense: NumberValueObject(interestExpense),
      depreciationAndAmortization: NumberValueObject(depreciationAndAmortization),
      ebitda: NumberValueObject(ebitda),
      ebitdaratio: NumberValueObject(ebitdaratio),
      operatingIncome: NumberValueObject(operatingIncome),
      operatingIncomeRatio: NumberValueObject(operatingIncomeRatio),
      totalOtherIncomeExpensesNet: NumberValueObject(totalOtherIncomeExpensesNet),
      incomeBeforeTax: NumberValueObject(incomeBeforeTax),
      incomeBeforeTaxRatio: NumberValueObject(incomeBeforeTaxRatio),
      incomeTaxExpense: NumberValueObject(incomeTaxExpense),
      netIncome: NumberValueObject(netIncome),
      netIncomeRatio: NumberValueObject(netIncomeRatio),
      eps: NumberValueObject(eps),
      epsdiluted: NumberValueObject(epsdiluted),
      weightedAverageShsOut: NumberValueObject(weightedAverageShsOut),
      weightedAverageShsOutDil: NumberValueObject(weightedAverageShsOutDil),
      link: UrlValueObject(link),
      finalLink: UrlValueObject(finalLink),
    );
  }
}
