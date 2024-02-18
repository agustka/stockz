import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/statement_period_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/url_value_object.dart';

@immutable
class IncomeStatements {
  final List<IncomeStatement> statements;

  const IncomeStatements({required this.statements});
}

@immutable
class IncomeStatement {
  final StringIdValueObject symbol;
  final DateValueObject date;
  final CurrencyValueObject reportedCurrency;
  final StringIdValueObject cik;
  final DateValueObject fillingDate;
  final DateValueObject acceptedDate;
  final IntValueObject calendarYear;
  final StatementPeriodValueObject period;
  final NumberValueObject revenue;
  final NumberValueObject costOfRevenue;
  final NumberValueObject grossProfit;
  final NumberValueObject grossProfitRatio;
  final NumberValueObject researchAndDevelopmentExpenses;
  final NumberValueObject generalAndAdministrativeExpenses;
  final NumberValueObject sellingAndMarketingExpenses;
  final NumberValueObject sellingGeneralAndAdministrativeExpenses;
  final NumberValueObject otherExpenses;
  final NumberValueObject operatingExpenses;
  final NumberValueObject costAndExpenses;
  final NumberValueObject interestIncome;
  final NumberValueObject interestExpense;
  final NumberValueObject depreciationAndAmortization;
  final NumberValueObject ebitda;
  final NumberValueObject ebitdaratio;
  final NumberValueObject operatingIncome;
  final NumberValueObject operatingIncomeRatio;
  final NumberValueObject totalOtherIncomeExpensesNet;
  final NumberValueObject incomeBeforeTax;
  final NumberValueObject incomeBeforeTaxRatio;
  final NumberValueObject incomeTaxExpense;
  final NumberValueObject netIncome;
  final NumberValueObject netIncomeRatio;
  final NumberValueObject eps;
  final NumberValueObject epsdiluted;
  final NumberValueObject weightedAverageShsOut;
  final NumberValueObject weightedAverageShsOutDil;
  final UrlValueObject link;
  final UrlValueObject finalLink;

  const IncomeStatement({
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
}
