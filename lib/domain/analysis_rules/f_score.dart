import 'package:flutter/foundation.dart';
import 'package:stockz/domain/company/entities/company.dart';

@immutable
class FScore {
  static const double _stalePenalty = 0.9;

  final Company company;

  const FScore({required this.company});

  double getFScore({bool strict = false}) {
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
    double? currentYearRatio = company.findAssetTurnoverRatio(year: year);
    if (currentYearRatio == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRatio = company.findAssetTurnoverRatio(year: year);
      if (currentYearRatio == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearRatio = company.findAssetTurnoverRatio(year: year);
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
    double? currentYearMargin = company.findGrossMargin(year: year);
    if (currentYearMargin == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearMargin = company.findGrossMargin(year: year);
      if (currentYearMargin == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearMargin = company.findGrossMargin(year: year);
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
    double? currentYearIssuance = company.findCommonStockIssued(year: year);
    if (currentYearIssuance == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearIssuance = company.findCommonStockIssued(year: year);
      if (currentYearIssuance == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearIssuance = company.findCommonStockIssued(year: year);
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
    double? currentYearRatio = company.findCurrentRatio(year: year);
    if (currentYearRatio == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRatio = company.findCurrentRatio(year: year);
      if (currentYearRatio == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearRatio = company.findCurrentRatio(year: year);
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
    double? currentYearRatio = company.findLongTermDebtToAssetsRatio(year: year);
    if (currentYearRatio == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRatio = company.findLongTermDebtToAssetsRatio(year: year);
      if (currentYearRatio == null) {
        return 0;
      }
    }
    year--;
    final double? previousYearRatio = company.findLongTermDebtToAssetsRatio(year: year);
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
    double? currentYearRoa = company.findRoa(year: year);
    if (currentYearRoa == null) {
      oldRoaPenalty = _stalePenalty;
      year--;
      currentYearRoa = company.findRoa(year: year);
      if (currentYearRoa == null) {
        return 0;
      }
    }

    double oldRatioPenalty = 1;
    year = DateTime.now().year;
    double? operatingCashFlowToTotalAssetsRatio = company.findOperatingCashFlowToTotalAssetsRatio(year: year);
    if (operatingCashFlowToTotalAssetsRatio == null) {
      oldRatioPenalty *= _stalePenalty;
      year--;
      operatingCashFlowToTotalAssetsRatio = company.findRoa(year: year);
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
    double? currentYearRoa = company.findRoa(year: year);
    if (currentYearRoa == null) {
      oldStatementPenalty = _stalePenalty;
      year--;
      currentYearRoa = company.findRoa(year: year);
      if (currentYearRoa == null) {
        return 0;
      }
    }
    year--;
    double? previousYearRoa = company.findRoa(year: year);
    if (previousYearRoa == null) {
      oldStatementPenalty *= _stalePenalty;
      year--;
      previousYearRoa = company.findRoa(year: year);
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
    double? operatingCashFlow = company.findOperatingCashFlow(year: mostRecent);
    double oldStatementPenalty = operatingCashFlow == null ? _stalePenalty : 1;
    operatingCashFlow ??= company.findOperatingCashFlow(year: mostRecent - 1);
    if (operatingCashFlow == null) {
      return 0;
    }

    if (strict) {
      oldStatementPenalty = 1;
    }

    final double score = oldStatementPenalty * (operatingCashFlow > 0 ? 1 : 0);
    if (score > 0) {
      return score;
    }
    return score;
  }

  double _fScoreRoa({required bool strict}) {
    final int mostRecent = DateTime.now().year;
    double? netIncome = company.findNetIncome(year: mostRecent);
    double oldIncomeStatementPenalty = netIncome == null ? _stalePenalty : 1;
    if (netIncome == null) {
      netIncome = company.findNetIncome(year: mostRecent - 1);
      oldIncomeStatementPenalty = netIncome == null ? 0 : oldIncomeStatementPenalty;
    }
    if (netIncome == null) {
      return 0;
    }

    double? totalAssets = company.findTotalAssets(year: mostRecent);
    double oldBalanceStatementPenalty = totalAssets == null ? _stalePenalty : 1;
    if (totalAssets == null) {
      totalAssets = company.findTotalAssets(year: mostRecent - 1);
      oldBalanceStatementPenalty = totalAssets == null ? 0 : oldBalanceStatementPenalty;
    }
    if (totalAssets == null) {
      return 0;
    }

    if (strict) {
      oldIncomeStatementPenalty = 1;
      oldBalanceStatementPenalty = 1;
    }

    final double roa = netIncome / totalAssets;
    if (roa > 0) {
      return 1 * oldIncomeStatementPenalty * oldBalanceStatementPenalty;
    }
    return 0;
  }
}
