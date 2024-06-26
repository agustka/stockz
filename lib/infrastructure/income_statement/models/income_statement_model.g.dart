// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncomeStatementModel _$IncomeStatementModelFromJson(
        Map<String, dynamic> json) =>
    IncomeStatementModel(
      symbol: json['symbol'] as String?,
      date: json['date'] as String?,
      reportedCurrency: json['reportedCurrency'] as String?,
      cik: json['cik'] as String?,
      fillingDate: json['fillingDate'] as String?,
      acceptedDate: json['acceptedDate'] as String?,
      calendarYear: json['calendarYear'] as String?,
      period: json['period'] as String?,
      revenue: (json['revenue'] as num?)?.toInt(),
      costOfRevenue: (json['costOfRevenue'] as num?)?.toInt(),
      grossProfit: (json['grossProfit'] as num?)?.toInt(),
      grossProfitRatio: (json['grossProfitRatio'] as num?)?.toDouble(),
      researchAndDevelopmentExpenses:
          (json['researchAndDevelopmentExpenses'] as num?)?.toInt(),
      generalAndAdministrativeExpenses:
          (json['generalAndAdministrativeExpenses'] as num?)?.toInt(),
      sellingAndMarketingExpenses:
          (json['sellingAndMarketingExpenses'] as num?)?.toInt(),
      sellingGeneralAndAdministrativeExpenses:
          (json['sellingGeneralAndAdministrativeExpenses'] as num?)?.toInt(),
      otherExpenses: (json['otherExpenses'] as num?)?.toDouble(),
      operatingExpenses: (json['operatingExpenses'] as num?)?.toInt(),
      costAndExpenses: (json['costAndExpenses'] as num?)?.toInt(),
      interestIncome: (json['interestIncome'] as num?)?.toInt(),
      interestExpense: (json['interestExpense'] as num?)?.toInt(),
      depreciationAndAmortization:
          (json['depreciationAndAmortization'] as num?)?.toInt(),
      ebitda: (json['ebitda'] as num?)?.toInt(),
      ebitdaratio: (json['ebitdaratio'] as num?)?.toDouble(),
      operatingIncome: (json['operatingIncome'] as num?)?.toInt(),
      operatingIncomeRatio: (json['operatingIncomeRatio'] as num?)?.toDouble(),
      totalOtherIncomeExpensesNet:
          (json['totalOtherIncomeExpensesNet'] as num?)?.toInt(),
      incomeBeforeTax: (json['incomeBeforeTax'] as num?)?.toInt(),
      incomeBeforeTaxRatio: (json['incomeBeforeTaxRatio'] as num?)?.toDouble(),
      incomeTaxExpense: (json['incomeTaxExpense'] as num?)?.toInt(),
      netIncome: (json['netIncome'] as num?)?.toInt(),
      netIncomeRatio: (json['netIncomeRatio'] as num?)?.toDouble(),
      eps: (json['eps'] as num?)?.toDouble(),
      epsdiluted: (json['epsdiluted'] as num?)?.toDouble(),
      weightedAverageShsOut: (json['weightedAverageShsOut'] as num?)?.toInt(),
      weightedAverageShsOutDil:
          (json['weightedAverageShsOutDil'] as num?)?.toInt(),
      link: json['link'] as String?,
      finalLink: json['finalLink'] as String?,
    );

Map<String, dynamic> _$IncomeStatementModelToJson(
        IncomeStatementModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'date': instance.date,
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
