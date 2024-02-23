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
class IncomeStatements extends Equatable implements Statements {
  final List<IncomeStatement> statements;
  final bool valid;

  const IncomeStatements({required this.statements, this.valid = true});

  const factory IncomeStatements.invalid() = _$InvalidIncomeStatements;

  IncomeStatement getWithYear(int year) {
    final List<IncomeStatement> ofYear =
        statements.where((IncomeStatement e) => e.fillingDate.get.year == year).toList();
    if (ofYear.isEmpty) {
      return const IncomeStatement.invalid();
    }
    return ofYear.first;
  }

  double? findGrossMargin({required int year}) {
    final IncomeStatement incomeStatement = getWithYear(year);

    if (incomeStatement.valid) {
      if (incomeStatement.revenue.get.toDouble() > 0) { // Ensure revenue is not zero to avoid division by zero
        return incomeStatement.grossProfit.get.toDouble() / incomeStatement.revenue.get.toDouble();
      }
    }
    return null;
  }

  @override
  bool hasYear(int year) {
    return statements.where((IncomeStatement e) => e.fillingDate.get.year == year).isNotEmpty;
  }

  @override
  List<Object?> get props => [statements, valid];
}

class _$InvalidIncomeStatements extends IncomeStatements {
  const _$InvalidIncomeStatements() : super(statements: const [], valid: false);
}

@immutable
class IncomeStatement extends Equatable implements Statement {
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
  final bool valid;

  bool get isInvalid {
    return !valid || _allNumbersZero();
  }

  @override
  IntValueObject get statementYear => calendarYear;

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
    this.valid = true,
  });

  const factory IncomeStatement.invalid() = _$InvalidIncomeStatement;

  bool _allNumbersZero() {
    final List<num> values = [
      revenue.get,
      costOfRevenue.get,
      grossProfit.get,
      grossProfitRatio.get,
      researchAndDevelopmentExpenses.get,
      generalAndAdministrativeExpenses.get,
      sellingAndMarketingExpenses.get,
      sellingGeneralAndAdministrativeExpenses.get,
      otherExpenses.get,
      operatingExpenses.get,
      costAndExpenses.get,
      interestIncome.get,
      interestExpense.get,
      depreciationAndAmortization.get,
      ebitda.get,
      ebitdaratio.get,
      operatingIncome.get,
      operatingIncomeRatio.get,
      totalOtherIncomeExpensesNet.get,
      incomeBeforeTax.get,
      incomeBeforeTaxRatio.get,
      incomeTaxExpense.get,
      netIncome.get,
      netIncomeRatio.get,
      eps.get,
      epsdiluted.get,
      weightedAverageShsOut.get,
      weightedAverageShsOutDil.get,
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
  // TODO: implement props
  List<Object?> get props => [
        symbol,
        date,
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
        valid,
      ];
}

class _$InvalidIncomeStatement extends IncomeStatement {
  const _$InvalidIncomeStatement()
      : super(
          symbol: const StringIdValueObject.invalid(),
          date: const DateValueObject.invalid(),
          reportedCurrency: const CurrencyValueObject.invalid(),
          cik: const StringIdValueObject.invalid(),
          fillingDate: const DateValueObject.invalid(),
          acceptedDate: const DateValueObject.invalid(),
          calendarYear: const IntValueObject.invalid(),
          period: const StatementPeriodValueObject.invalid(),
          revenue: const NumberValueObject.invalid(),
          costOfRevenue: const NumberValueObject.invalid(),
          grossProfit: const NumberValueObject.invalid(),
          grossProfitRatio: const NumberValueObject.invalid(),
          researchAndDevelopmentExpenses: const NumberValueObject.invalid(),
          generalAndAdministrativeExpenses: const NumberValueObject.invalid(),
          sellingAndMarketingExpenses: const NumberValueObject.invalid(),
          sellingGeneralAndAdministrativeExpenses: const NumberValueObject.invalid(),
          otherExpenses: const NumberValueObject.invalid(),
          operatingExpenses: const NumberValueObject.invalid(),
          costAndExpenses: const NumberValueObject.invalid(),
          interestIncome: const NumberValueObject.invalid(),
          interestExpense: const NumberValueObject.invalid(),
          depreciationAndAmortization: const NumberValueObject.invalid(),
          ebitda: const NumberValueObject.invalid(),
          ebitdaratio: const NumberValueObject.invalid(),
          operatingIncome: const NumberValueObject.invalid(),
          operatingIncomeRatio: const NumberValueObject.invalid(),
          totalOtherIncomeExpensesNet: const NumberValueObject.invalid(),
          incomeBeforeTax: const NumberValueObject.invalid(),
          incomeBeforeTaxRatio: const NumberValueObject.invalid(),
          incomeTaxExpense: const NumberValueObject.invalid(),
          netIncome: const NumberValueObject.invalid(),
          netIncomeRatio: const NumberValueObject.invalid(),
          eps: const NumberValueObject.invalid(),
          epsdiluted: const NumberValueObject.invalid(),
          weightedAverageShsOut: const NumberValueObject.invalid(),
          weightedAverageShsOutDil: const NumberValueObject.invalid(),
          link: const UrlValueObject.invalid(),
          finalLink: const UrlValueObject.invalid(),
          valid: false,
        );
}
