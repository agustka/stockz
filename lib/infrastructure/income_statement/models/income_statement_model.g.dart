// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncomeStatementModel _$IncomeStatementModelFromJson(
        Map<String, dynamic> json) =>
    IncomeStatementModel(
      date: json['date'] as String?,
      symbol: json['symbol'] as String?,
      reportedCurrency: json['reportedCurrency'] as String?,
      cik: json['cik'] as String?,
      fillingDate: json['fillingDate'] as String?,
      acceptedDate: json['acceptedDate'] as String?,
      calendarYear: json['calendarYear'] as String?,
      period: json['period'] as String?,
      revenue: json['revenue'] as num?,
      costOfRevenue: json['costOfRevenue'] as num?,
      grossProfit: json['grossProfit'] as num?,
      grossProfitRatio: json['grossProfitRatio'] as num?,
      researchAndDevelopmentExpenses:
          json['researchAndDevelopmentExpenses'] as num?,
      generalAndAdministrativeExpenses:
          json['generalAndAdministrativeExpenses'] as num?,
      sellingAndMarketingExpenses: json['sellingAndMarketingExpenses'] as num?,
      sellingGeneralAndAdministrativeExpenses:
          json['sellingGeneralAndAdministrativeExpenses'] as num?,
      otherExpenses: json['otherExpenses'] as num?,
      operatingExpenses: json['operatingExpenses'] as num?,
      costAndExpenses: json['costAndExpenses'] as num?,
      interestIncome: json['interestIncome'] as num?,
      interestExpense: json['interestExpense'] as num?,
      depreciationAndAmortization: json['depreciationAndAmortization'] as num?,
      ebitda: json['ebitda'] as num?,
      ebitdaratio: json['ebitdaratio'] as num?,
      operatingIncome: json['operatingIncome'] as num?,
      operatingIncomeRatio: json['operatingIncomeRatio'] as num?,
      totalOtherIncomeExpensesNet: json['totalOtherIncomeExpensesNet'] as num?,
      incomeBeforeTax: json['incomeBeforeTax'] as num?,
      incomeBeforeTaxRatio: json['incomeBeforeTaxRatio'] as num?,
      incomeTaxExpense: json['incomeTaxExpense'] as num?,
      netIncome: json['netIncome'] as num?,
      netIncomeRatio: json['netIncomeRatio'] as num?,
      eps: json['eps'] as num?,
      epsdiluted: json['epsdiluted'] as num?,
      weightedAverageShsOut: json['weightedAverageShsOut'] as num?,
      weightedAverageShsOutDil: json['weightedAverageShsOutDil'] as num?,
      link: json['link'] as String?,
      finalLink: json['finalLink'] as String?,
    );

Map<String, dynamic> _$IncomeStatementModelToJson(
        IncomeStatementModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'symbol': instance.symbol,
      'reportedCurrency': instance.reportedCurrency,
      'cik': instance.cik,
      'fillingDate': instance.fillingDate,
      'acceptedDate': instance.acceptedDate,
      'calendarYear': instance.calendarYear,
      'period': instance.period,
      'revenue': instance.revenue,
      'costOfRevenue': instance.costOfRevenue,
      'grossProfit': instance.grossProfit,
      'grossProfitRatio': instance.grossProfitRatio,
      'researchAndDevelopmentExpenses': instance.researchAndDevelopmentExpenses,
      'generalAndAdministrativeExpenses':
          instance.generalAndAdministrativeExpenses,
      'sellingAndMarketingExpenses': instance.sellingAndMarketingExpenses,
      'sellingGeneralAndAdministrativeExpenses':
          instance.sellingGeneralAndAdministrativeExpenses,
      'otherExpenses': instance.otherExpenses,
      'operatingExpenses': instance.operatingExpenses,
      'costAndExpenses': instance.costAndExpenses,
      'interestIncome': instance.interestIncome,
      'interestExpense': instance.interestExpense,
      'depreciationAndAmortization': instance.depreciationAndAmortization,
      'ebitda': instance.ebitda,
      'ebitdaratio': instance.ebitdaratio,
      'operatingIncome': instance.operatingIncome,
      'operatingIncomeRatio': instance.operatingIncomeRatio,
      'totalOtherIncomeExpensesNet': instance.totalOtherIncomeExpensesNet,
      'incomeBeforeTax': instance.incomeBeforeTax,
      'incomeBeforeTaxRatio': instance.incomeBeforeTaxRatio,
      'incomeTaxExpense': instance.incomeTaxExpense,
      'netIncome': instance.netIncome,
      'netIncomeRatio': instance.netIncomeRatio,
      'eps': instance.eps,
      'epsdiluted': instance.epsdiluted,
      'weightedAverageShsOut': instance.weightedAverageShsOut,
      'weightedAverageShsOutDil': instance.weightedAverageShsOutDil,
      'link': instance.link,
      'finalLink': instance.finalLink,
    };
