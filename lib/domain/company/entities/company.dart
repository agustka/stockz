import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/company/entities/statement.dart';
import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/income_statement/entities/income_statements.dart';
import 'package:stockz/domain/moving_average/entities/moving_average.dart';

@immutable
class Company extends Equatable {
  static const double _stalePenalty = 0.9;

  final CompanyProfile profile;
  final BalanceSheetStatements balanceSheetStatements;
  final CashFlowStatements cashFlowStatements;
  final IncomeStatements incomeStatements;
  final MovingAverage ema12;
  final MovingAverage ema26;
  final bool valid;

  const Company({
    required this.profile,
    required this.balanceSheetStatements,
    required this.cashFlowStatements,
    required this.incomeStatements,
    required this.ema12,
    required this.ema26,
    this.valid = true,
  });

  const factory Company.invalid() = _$InvalidCompany;

  double getPiotroskiFScore({bool strict = false}) {
    final double roa = _fScoreRoa(strict: strict);
    final double operatingCashFlow = _fScoreOperatingCashFlow(strict: strict);
    final double changeInRoa = _fScoreChangeInRoa(strict: strict);
    final double accruals = _fScoreAccruals(strict: strict);

    final double changeInLeverage = _fScoreChangeInLeverage(strict: strict);
    final double changeInCurrentRatio = _fScoreChangeInCurrentRatio(strict: strict);
    final double changeInNumberOfShares = _fScoreChangeInNumberOfShares(strict: strict);

    final double changeInGrossMargin = _fScoreChangeInGrossMargin(strict: strict);
    final double changeInAssetTurnoverRatio = _fScoreChangeInAssetTurnoverRatio(strict: strict);

    return roa +
        operatingCashFlow +
        changeInRoa +
        accruals +
        changeInLeverage +
        changeInCurrentRatio +
        changeInNumberOfShares +
        changeInGrossMargin +
        changeInAssetTurnoverRatio;
  }

  double _fScoreChangeInAssetTurnoverRatio({required bool strict}) {
    double oldStatementPenalty = 1;
    int year = DateTime.now().year;
    double? currentYearRatio = findAssetTurnoverRatio(year: year);
    if (currentYearRatio == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRatio = findAssetTurnoverRatio(year: year);
      if (currentYearRatio == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearRatio = findAssetTurnoverRatio(year: year);
    if (previousYearRatio == null) {
      return 0;
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    // 1 point if the ratio improved, 0 otherwise
    final double score = currentYearRatio > previousYearRatio ? 1.0 : 0.0;
    return score * oldStatementPenalty;
  }

  double _fScoreChangeInGrossMargin({required bool strict}) {
    double oldStatementPenalty = 1;
    int year = DateTime.now().year;
    double? currentYearMargin = incomeStatements.findGrossMargin(year: year);
    if (currentYearMargin == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearMargin = incomeStatements.findGrossMargin(year: year);
      if (currentYearMargin == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearMargin = incomeStatements.findGrossMargin(year: year);
    if (previousYearMargin == null) {
      return 0;
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    // 1 point if the margin improved, 0 otherwise
    final double score = currentYearMargin > previousYearMargin ? 1.0 : 0.0;
    return score * oldStatementPenalty; // Return 0 if there's insufficient data to calculate the change in gross margin
  }

  double _fScoreChangeInNumberOfShares({required bool strict}) {
    double oldStatementPenalty = 1;
    int year = DateTime.now().year;
    double? currentYearIssuance = cashFlowStatements.findCommonStockIssued(year: year);
    if (currentYearIssuance == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearIssuance = cashFlowStatements.findCommonStockIssued(year: year);
      if (currentYearIssuance == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearIssuance = cashFlowStatements.findCommonStockIssued(year: year);
    if (previousYearIssuance == null) {
      return 0;
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    // Check if no new shares were issued by comparing this year's issuance to last year's
    final double score = currentYearIssuance <= previousYearIssuance ? 1.0 : 0.0;
    return score * oldStatementPenalty;
  }

  double _fScoreChangeInCurrentRatio({required bool strict}) {
    double oldStatementPenalty = 1;
    int year = DateTime.now().year;
    double? currentYearRatio = balanceSheetStatements.findCurrentRatio(year: year);
    if (currentYearRatio == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRatio = balanceSheetStatements.findCurrentRatio(year: year);
      if (currentYearRatio == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearRatio = balanceSheetStatements.findCurrentRatio(year: year);
    if (previousYearRatio == null) {
      return 0;
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    final double score = currentYearRatio > previousYearRatio ? 1.0 : 0.0;
    return score * oldStatementPenalty;
  }

  double _fScoreChangeInLeverage({required bool strict}) {
    double oldStatementPenalty = 1;
    int year = DateTime.now().year;
    double? currentYearRatio = balanceSheetStatements.findLongTermDebtToAssetsRatio(year: year);
    if (currentYearRatio == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRatio = balanceSheetStatements.findLongTermDebtToAssetsRatio(year: year);
      if (currentYearRatio == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearRatio = balanceSheetStatements.findLongTermDebtToAssetsRatio(year: year);
    if (previousYearRatio == null) {
      return 0;
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    final double score = currentYearRatio < previousYearRatio ? 1.0 : 0.0;
    return score * oldStatementPenalty;
  }

  double _fScoreAccruals({required bool strict}) {
    double oldRoaPenalty = 1;
    int year = DateTime.now().year;
    double? currentYearRoa = findRoa(year: year);
    if (currentYearRoa == null) {
      oldRoaPenalty = _stalePenalty;
      year--;
      currentYearRoa = findRoa(year: year);
      if (currentYearRoa == null) {
        return 0;
      }
    }

    double oldRatioPenalty = 1;
    year = DateTime.now().year;
    double? operatingCashFlowToTotalAssetsRatio = findOperatingCashFlowToTotalAssetsRatio(year: year);
    if (operatingCashFlowToTotalAssetsRatio == null) {
      oldRatioPenalty *= _stalePenalty;
      year--;
      operatingCashFlowToTotalAssetsRatio = findRoa(year: year);
      if (operatingCashFlowToTotalAssetsRatio == null) {
        return 0;
      }
    }

    if (strict) {
      oldRoaPenalty = 1;
      oldRatioPenalty = 1;
    }

    final double score = operatingCashFlowToTotalAssetsRatio > currentYearRoa ? 1 : 0;
    return score * oldRoaPenalty * oldRatioPenalty;
  }

  double _fScoreChangeInRoa({required bool strict}) {
    double oldStatementPenalty = 1;

    int year = DateTime.now().year;
    double? currentYearRoa = findRoa(year: year);
    if (currentYearRoa == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRoa = findRoa(year: year);
      if (currentYearRoa == null) {
        return 0;
      }
    }
    year--;
    double? previousYearRoa = findRoa(year: year);
    if (previousYearRoa == null) {
      oldStatementPenalty *= _stalePenalty;
      year--;
      previousYearRoa = findRoa(year: year);
      if (previousYearRoa == null) {
        return 0;
      }
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    final double score = currentYearRoa > previousYearRoa ? 1 : 0;
    return score * oldStatementPenalty;
  }

  double _fScoreOperatingCashFlow({required bool strict}) {
    final int mostRecent = DateTime.now().year;
    CashFlowStatement flow = cashFlowStatements.getWithYear(mostRecent);
    double oldStatementPenalty = flow.isInvalid ? _stalePenalty : 1;
    if (flow.isInvalid) {
      flow = cashFlowStatements.getWithYear(mostRecent - 1);
      oldStatementPenalty = flow.isInvalid ? 0 : oldStatementPenalty;
    }
    if (flow.isInvalid) {
      return 0;
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    final double operatingCashFlow = flow.operatingCashFlow.get.toDouble();
    final double score = oldStatementPenalty * (operatingCashFlow > 0 ? 1 : 0);
    if (score > 0) {
      return score;
    }
    return score;
  }

  double _fScoreRoa({required bool strict}) {
    final int mostRecent = DateTime.now().year;
    IncomeStatement income = incomeStatements.getWithYear(mostRecent);
    double oldIncomeStatementPenalty = income.isInvalid ? _stalePenalty : 1;
    if (income.isInvalid) {
      income = incomeStatements.getWithYear(mostRecent - 1);
      oldIncomeStatementPenalty = income.isInvalid ? 0 : oldIncomeStatementPenalty;
    }
    if (income.isInvalid) {
      return 0;
    }

    BalanceSheetStatement balance = balanceSheetStatements.getWithYear(mostRecent);
    double oldBalanceStatementPenalty = balance.isInvalid ? _stalePenalty : 1;
    if (balance.isInvalid) {
      balance = balanceSheetStatements.getWithYear(mostRecent - 1);
      oldBalanceStatementPenalty = balance.isInvalid ? 0 : oldBalanceStatementPenalty;
    }
    if (balance.isInvalid) {
      return 0;
    }

    if (strict) {
      oldIncomeStatementPenalty = 1;
      oldBalanceStatementPenalty = 1;
    }

    final double roa = income.netIncome.get.toDouble() / balance.totalAssets.get.toDouble();
    if (roa > 0) {
      return 1 * oldIncomeStatementPenalty * oldBalanceStatementPenalty;
    }
    return 0;
  }

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
          ema12: const MovingAverage.invalid(),
          ema26: const MovingAverage.invalid(),
          valid: false,
        );
}

class StatementPair {
  Statement? first;
  Statement? second;

  StatementPair({this.first, this.second});
}
