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
      netIncome: (json['netIncome'] as num?)?.toInt(),
      depreciationAndAmortization:
          (json['depreciationAndAmortization'] as num?)?.toInt(),
      deferredIncomeTax: (json['deferredIncomeTax'] as num?)?.toInt(),
      stockBasedCompensation: (json['stockBasedCompensation'] as num?)?.toInt(),
      changeInWorkingCapital: (json['changeInWorkingCapital'] as num?)?.toInt(),
      accountsReceivables: (json['accountsReceivables'] as num?)?.toInt(),
      inventory: (json['inventory'] as num?)?.toInt(),
      accountsPayables: (json['accountsPayables'] as num?)?.toInt(),
      otherWorkingCapital: (json['otherWorkingCapital'] as num?)?.toInt(),
      otherNonCashItems: (json['otherNonCashItems'] as num?)?.toInt(),
      netCashProvidedByOperatingActivities:
          (json['netCashProvidedByOperatingActivities'] as num?)?.toInt(),
      investmentsInPropertyPlantAndEquipment:
          (json['investmentsInPropertyPlantAndEquipment'] as num?)?.toInt(),
      acquisitionsNet: (json['acquisitionsNet'] as num?)?.toInt(),
      purchasesOfInvestments: (json['purchasesOfInvestments'] as num?)?.toInt(),
      salesMaturitiesOfInvestments:
          (json['salesMaturitiesOfInvestments'] as num?)?.toInt(),
      otherInvestingActivites:
          (json['otherInvestingActivites'] as num?)?.toInt(),
      netCashUsedForInvestingActivites:
          (json['netCashUsedForInvestingActivites'] as num?)?.toInt(),
      debtRepayment: (json['debtRepayment'] as num?)?.toInt(),
      commonStockIssued: (json['commonStockIssued'] as num?)?.toInt(),
      commonStockRepurchased: (json['commonStockRepurchased'] as num?)?.toInt(),
      dividendsPaid: (json['dividendsPaid'] as num?)?.toInt(),
      otherFinancingActivites:
          (json['otherFinancingActivites'] as num?)?.toInt(),
      netCashUsedProvidedByFinancingActivities:
          (json['netCashUsedProvidedByFinancingActivities'] as num?)?.toInt(),
      effectOfForexChangesOnCash:
          (json['effectOfForexChangesOnCash'] as num?)?.toInt(),
      netChangeInCash: (json['netChangeInCash'] as num?)?.toInt(),
      cashAtEndOfPeriod: (json['cashAtEndOfPeriod'] as num?)?.toInt(),
      cashAtBeginningOfPeriod:
          (json['cashAtBeginningOfPeriod'] as num?)?.toInt(),
      operatingCashFlow: (json['operatingCashFlow'] as num?)?.toInt(),
      capitalExpenditure: (json['capitalExpenditure'] as num?)?.toInt(),
      freeCashFlow: (json['freeCashFlow'] as num?)?.toInt(),
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
