// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cash_flow_statement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashFlowStatementModel _$CashFlowStatementModelFromJson(
        Map<String, dynamic> json) =>
    CashFlowStatementModel(
      date: json['date'] as String?,
      symbol: json['symbol'] as String?,
      reportedCurrency: json['reportedCurrency'] as String?,
      cik: json['cik'] as String?,
      fillingDate: json['fillingDate'] as String?,
      acceptedDate: json['acceptedDate'] as String?,
      calendarYear: json['calendarYear'] as String?,
      period: json['period'] as String?,
      netIncome: json['netIncome'] as num?,
      depreciationAndAmortization: json['depreciationAndAmortization'] as num?,
      deferredIncomeTax: json['deferredIncomeTax'] as num?,
      stockBasedCompensation: json['stockBasedCompensation'] as num?,
      changeInWorkingCapital: json['changeInWorkingCapital'] as num?,
      accountsReceivables: json['accountsReceivables'] as num?,
      inventory: json['inventory'] as num?,
      accountsPayables: json['accountsPayables'] as num?,
      otherWorkingCapital: json['otherWorkingCapital'] as num?,
      otherNonCashItems: json['otherNonCashItems'] as num?,
      netCashProvidedByOperatingActivities:
          json['netCashProvidedByOperatingActivities'] as num?,
      investmentsInPropertyPlantAndEquipment:
          json['investmentsInPropertyPlantAndEquipment'] as num?,
      acquisitionsNet: json['acquisitionsNet'] as num?,
      purchasesOfInvestments: json['purchasesOfInvestments'] as num?,
      salesMaturitiesOfInvestments:
          json['salesMaturitiesOfInvestments'] as num?,
      otherInvestingActivites: json['otherInvestingActivites'] as num?,
      netCashUsedForInvestingActivites:
          json['netCashUsedForInvestingActivites'] as num?,
      debtRepayment: json['debtRepayment'] as num?,
      commonStockIssued: json['commonStockIssued'] as num?,
      commonStockRepurchased: json['commonStockRepurchased'] as num?,
      dividendsPaid: json['dividendsPaid'] as num?,
      otherFinancingActivites: json['otherFinancingActivites'] as num?,
      netCashUsedProvidedByFinancingActivities:
          json['netCashUsedProvidedByFinancingActivities'] as num?,
      effectOfForexChangesOnCash: json['effectOfForexChangesOnCash'] as num?,
      netChangeInCash: json['netChangeInCash'] as num?,
      cashAtEndOfPeriod: json['cashAtEndOfPeriod'] as num?,
      cashAtBeginningOfPeriod: json['cashAtBeginningOfPeriod'] as num?,
      operatingCashFlow: json['operatingCashFlow'] as num?,
      capitalExpenditure: json['capitalExpenditure'] as num?,
      freeCashFlow: json['freeCashFlow'] as num?,
      link: json['link'] as String?,
      finalLink: json['finalLink'] as String?,
    );

Map<String, dynamic> _$CashFlowStatementModelToJson(
        CashFlowStatementModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'symbol': instance.symbol,
      'reportedCurrency': instance.reportedCurrency,
      'cik': instance.cik,
      'fillingDate': instance.fillingDate,
      'acceptedDate': instance.acceptedDate,
      'calendarYear': instance.calendarYear,
      'period': instance.period,
      'netIncome': instance.netIncome,
      'depreciationAndAmortization': instance.depreciationAndAmortization,
      'deferredIncomeTax': instance.deferredIncomeTax,
      'stockBasedCompensation': instance.stockBasedCompensation,
      'changeInWorkingCapital': instance.changeInWorkingCapital,
      'accountsReceivables': instance.accountsReceivables,
      'inventory': instance.inventory,
      'accountsPayables': instance.accountsPayables,
      'otherWorkingCapital': instance.otherWorkingCapital,
      'otherNonCashItems': instance.otherNonCashItems,
      'netCashProvidedByOperatingActivities':
          instance.netCashProvidedByOperatingActivities,
      'investmentsInPropertyPlantAndEquipment':
          instance.investmentsInPropertyPlantAndEquipment,
      'acquisitionsNet': instance.acquisitionsNet,
      'purchasesOfInvestments': instance.purchasesOfInvestments,
      'salesMaturitiesOfInvestments': instance.salesMaturitiesOfInvestments,
      'otherInvestingActivites': instance.otherInvestingActivites,
      'netCashUsedForInvestingActivites':
          instance.netCashUsedForInvestingActivites,
      'debtRepayment': instance.debtRepayment,
      'commonStockIssued': instance.commonStockIssued,
      'commonStockRepurchased': instance.commonStockRepurchased,
      'dividendsPaid': instance.dividendsPaid,
      'otherFinancingActivites': instance.otherFinancingActivites,
      'netCashUsedProvidedByFinancingActivities':
          instance.netCashUsedProvidedByFinancingActivities,
      'effectOfForexChangesOnCash': instance.effectOfForexChangesOnCash,
      'netChangeInCash': instance.netChangeInCash,
      'cashAtEndOfPeriod': instance.cashAtEndOfPeriod,
      'cashAtBeginningOfPeriod': instance.cashAtBeginningOfPeriod,
      'operatingCashFlow': instance.operatingCashFlow,
      'capitalExpenditure': instance.capitalExpenditure,
      'freeCashFlow': instance.freeCashFlow,
      'link': instance.link,
      'finalLink': instance.finalLink,
    };
