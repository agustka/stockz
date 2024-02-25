import 'package:flutter/foundation.dart';
import 'package:stockz/domain/company/entities/company.dart';

@immutable
class MagicFormula {
  final Company company;

  const MagicFormula({required this.company});

  double calculateEarningsYield() {
    final double earningsYield = company.ebit / company.enterpriseValue;
    return earningsYield;
  }

  double calculateReturnOnCapital() {
    final double netFixedAssets = company.totalAssets - company.currentAssets;
    final double workingCapital = company.currentAssets - company.currentLiabilities;
    final double returnOnCapital = company.ebit / (netFixedAssets + workingCapital);
    return returnOnCapital;
  }

  double getMagicFormulaScore() {
    final double earningsYield = calculateEarningsYield();
    final double returnOnCapital = calculateReturnOnCapital();

    return earningsYield + returnOnCapital;
  }
}
