import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/chart/entities/chart.dart';
import 'package:stockz/domain/company/entities/statement.dart';
import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/income_statement/entities/income_statements.dart';

@immutable
class Company extends Equatable {
  final CompanyProfile profile;
  final BalanceSheetStatements balanceSheetStatements;
  final CashFlowStatements cashFlowStatements;
  final IncomeStatements incomeStatements;
  final Chart chart;
  final bool valid;

  BalanceSheetStatement get mostRecentBalanceSheetStatement {
    final int year = DateTime.now().year;
    for (int i = year; i > year - 10; i--) {
      final BalanceSheetStatement statement = balanceSheetStatements.getWithYear(i);
      if (statement.valid) {
        return statement;
      }
    }
    return const BalanceSheetStatement.invalid();
  }

  IncomeStatement get mostRecentIncomeStatement {
    final int year = DateTime.now().year;
    for (int i = year; i > year - 10; i--) {
      final IncomeStatement statement = incomeStatements.getWithYear(i);
      if (statement.valid) {
        return statement;
      }
    }
    return const IncomeStatement.invalid();
  }

  double get ebit {
    final IncomeStatement statement = mostRecentIncomeStatement;
    return statement.operatingIncome.get.toDouble();
  }

  double get enterpriseValue {
    final BalanceSheetStatement statement = mostRecentBalanceSheetStatement;

    final double marketCap = profile.mktCap.get.toDouble();
    final double cash = statement.cashAndCashEquivalents.get.toDouble();
    final double debt = statement.totalDebt.get.toDouble();
    final double minorityInterest = statement.minorityInterest.get.toDouble();
    final double preferredStock = statement.preferredStock.get.toDouble();

    return marketCap + debt - cash + minorityInterest + preferredStock;
  }

  double get totalAssets {
    final BalanceSheetStatement statement = mostRecentBalanceSheetStatement;
    return statement.totalAssets.get.toDouble();
  }

  double get currentAssets {
    final BalanceSheetStatement statement = mostRecentBalanceSheetStatement;
    return statement.totalCurrentAssets.get.toDouble();
  }

  double get currentLiabilities {
    final BalanceSheetStatement statement = mostRecentBalanceSheetStatement;
    return statement.totalCurrentLiabilities.get.toDouble();
  }

  const Company({
    required this.profile,
    required this.balanceSheetStatements,
    required this.cashFlowStatements,
    required this.incomeStatements,
    required this.chart,
    this.valid = true,
  });

  const factory Company.invalid() = _$InvalidCompany;

  double? findRoa({required int year}) {
    final IncomeStatement incomeStatement = incomeStatements.getWithYear(year);
    final BalanceSheetStatement balanceSheetStatement = balanceSheetStatements.getWithYear(year);

    if (!incomeStatement.isInvalid && !balanceSheetStatement.isInvalid) {
      return incomeStatement.netIncome.get.toDouble() / balanceSheetStatement.totalAssets.get.toDouble();
    }
    return null;
  }

  double? findOperatingCashFlowToTotalAssetsRatio({required int year}) {
    final CashFlowStatement cashFlowStatement = cashFlowStatements.getWithYear(year);
    final BalanceSheetStatement balanceSheetStatement = balanceSheetStatements.getWithYear(year);

    if (!cashFlowStatement.isInvalid && !balanceSheetStatement.isInvalid) {
      return cashFlowStatement.operatingCashFlow.get.toDouble() / balanceSheetStatement.totalAssets.get.toDouble();
    }
    return null;
  }

  double? findAssetTurnoverRatio({required int year}) {
    final IncomeStatement incomeStatement = incomeStatements.getWithYear(year);
    final BalanceSheetStatement balanceSheetStatement = balanceSheetStatements.getWithYear(year);

    if (incomeStatement.valid && balanceSheetStatement.valid) {
      // Ensure total assets is not zero to avoid division by zero
      if (balanceSheetStatement.totalAssets.get.toDouble() > 0) {
        return incomeStatement.revenue.get.toDouble() / balanceSheetStatement.totalAssets.get.toDouble();
      }
    }
    return null; // Return null if the statements are invalid or total assets are zero
  }

  double? findGrossMargin({required int year}) {
    return incomeStatements.findGrossMargin(year: year);
  }

  double? findCommonStockIssued({required int year}) {
    return cashFlowStatements.findCommonStockIssued(year: year);
  }

  double? findCurrentRatio({required int year}) {
    return balanceSheetStatements.findCurrentRatio(year: year);
  }

  double? findLongTermDebtToAssetsRatio({required int year}) {
    return balanceSheetStatements.findLongTermDebtToAssetsRatio(year: year);
  }

  double? findOperatingCashFlow({required int year}) {
    return cashFlowStatements.findOperatingCashFlow(year: year);
  }

  double? findNetIncome({required int year}) {
    return incomeStatements.findNetIncome(year);
  }

  double? findTotalAssets({required int year}) {
    return balanceSheetStatements.findTotalAssets(year);
  }

  @override
  List<Object?> get props => [
        profile,
        balanceSheetStatements,
        cashFlowStatements,
        incomeStatements,
        valid,
      ];
}

class _$InvalidCompany extends Company {
  const _$InvalidCompany()
      : super(
          profile: const CompanyProfile.invalid(),
          balanceSheetStatements: const BalanceSheetStatements.invalid(),
          cashFlowStatements: const CashFlowStatements.invalid(),
          incomeStatements: const IncomeStatements.invalid(),
          chart: const Chart.invalid(),
          valid: false,
        );
}

class StatementPair {
  Statement? first;
  Statement? second;

  StatementPair({this.first, this.second});
}
