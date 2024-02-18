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
      netIncome: json['netIncome'] as int?,
      depreciationAndAmortization: json['depreciationAndAmortization'] as int?,
      deferredIncomeTax: json['deferredIncomeTax'] as int?,
      stockBasedCompensation: json['stockBasedCompensation'] as int?,
      changeInWorkingCapital: json['changeInWorkingCapital'] as int?,
      accountsReceivables: json['accountsReceivables'] as int?,
      inventory: json['inventory'] as int?,
      accountsPayables: json['accountsPayables'] as int?,
      otherWorkingCapital: json['otherWorkingCapital'] as int?,
      otherNonCashItems: json['otherNonCashItems'] as int?,
      netCashProvidedByOperatingActivities:
          json['netCashProvidedByOperatingActivities'] as int?,
      investmentsInPropertyPlantAndEquipment:
          json['investmentsInPropertyPlantAndEquipment'] as int?,
      acquisitionsNet: json['acquisitionsNet'] as int?,
      purchasesOfInvestments: json['purchasesOfInvestments'] as int?,
      salesMaturitiesOfInvestments:
          json['salesMaturitiesOfInvestments'] as int?,
      otherInvestingActivites: json['otherInvestingActivites'] as int?,
      netCashUsedForInvestingActivites:
          json['netCashUsedForInvestingActivites'] as int?,
      debtRepayment: json['debtRepayment'] as int?,
      commonStockIssued: json['commonStockIssued'] as int?,
      commonStockRepurchased: json['commonStockRepurchased'] as int?,
      dividendsPaid: json['dividendsPaid'] as int?,
      otherFinancingActivites: json['otherFinancingActivites'] as int?,
      netCashUsedProvidedByFinancingActivities:
          json['netCashUsedProvidedByFinancingActivities'] as int?,
      effectOfForexChangesOnCash: json['effectOfForexChangesOnCash'] as int?,
      netChangeInCash: json['netChangeInCash'] as int?,
      cashAtEndOfPeriod: json['cashAtEndOfPeriod'] as int?,
      cashAtBeginningOfPeriod: json['cashAtBeginningOfPeriod'] as int?,
      operatingCashFlow: json['operatingCashFlow'] as int?,
      capitalExpenditure: json['capitalExpenditure'] as int?,
      freeCashFlow: json['freeCashFlow'] as int?,
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
