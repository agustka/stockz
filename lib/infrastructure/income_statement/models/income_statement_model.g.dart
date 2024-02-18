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
      revenue: json['revenue'] as int?,
      costOfRevenue: json['costOfRevenue'] as int?,
      grossProfit: json['grossProfit'] as int?,
      grossProfitRatio: (json['grossProfitRatio'] as num?)?.toDouble(),
      researchAndDevelopmentExpenses:
          json['researchAndDevelopmentExpenses'] as int?,
      generalAndAdministrativeExpenses:
          json['generalAndAdministrativeExpenses'] as int?,
      sellingAndMarketingExpenses: json['sellingAndMarketingExpenses'] as int?,
      sellingGeneralAndAdministrativeExpenses:
          json['sellingGeneralAndAdministrativeExpenses'] as int?,
      otherExpenses: json['otherExpenses'] as int?,
      operatingExpenses: json['operatingExpenses'] as int?,
      costAndExpenses: json['costAndExpenses'] as int?,
      interestIncome: json['interestIncome'] as int?,
      interestExpense: json['interestExpense'] as int?,
      depreciationAndAmortization: json['depreciationAndAmortization'] as int?,
      ebitda: json['ebitda'] as int?,
      ebitdaratio: (json['ebitdaratio'] as num?)?.toDouble(),
      operatingIncome: json['operatingIncome'] as int?,
      operatingIncomeRatio: (json['operatingIncomeRatio'] as num?)?.toDouble(),
      totalOtherIncomeExpensesNet: json['totalOtherIncomeExpensesNet'] as int?,
      incomeBeforeTax: json['incomeBeforeTax'] as int?,
      incomeBeforeTaxRatio: (json['incomeBeforeTaxRatio'] as num?)?.toDouble(),
      incomeTaxExpense: json['incomeTaxExpense'] as int?,
      netIncome: json['netIncome'] as int?,
      netIncomeRatio: (json['netIncomeRatio'] as num?)?.toDouble(),
      eps: (json['eps'] as num?)?.toDouble(),
      epsdiluted: (json['epsdiluted'] as num?)?.toDouble(),
      weightedAverageShsOut: json['weightedAverageShsOut'] as int?,
      weightedAverageShsOutDil: json['weightedAverageShsOutDil'] as int?,
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
