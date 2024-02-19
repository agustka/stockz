import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
import 'package:stockz/domain/company/entities/statement.dart';
import 'package:stockz/domain/company_profile/entities/company_profile.dart';
import 'package:stockz/domain/income_statement/entities/income_statements.dart';

@immutable
class Company extends Equatable {
  final CompanyProfile profile;
  final BalanceSheetStatements balanceSheetStatements;
  final CashFlowStatements cashFlowStatements;
  final IncomeStatements incomeStatements;
  final bool valid;

  const Company({
    required this.profile,
    required this.balanceSheetStatements,
    required this.cashFlowStatements,
    required this.incomeStatements,
    this.valid = true,
  });

  const factory Company.invalid() = _$InvalidCompany;

  double getPiotroskiFScore() {
    final double roa = _fScoreRoa();
    return roa;
  }

  double _fScoreRoa() {
    final int mostRecent = DateTime.now().year;
    IncomeStatement income = incomeStatements.getWithYear(mostRecent);
    double oldIncomeStatementPenalty = income.isInvalid ? 0.5 : 1;
    if (income.isInvalid) {
      income = incomeStatements.getWithYear(mostRecent - 1);
      oldIncomeStatementPenalty = income.isInvalid ? 0 : oldIncomeStatementPenalty;
    }

    BalanceSheetStatement balance = balanceSheetStatements.getWithYear(mostRecent);
    double oldBalanceStatementPenalty = balance.isInvalid ? 0.5 : 1;
    if (balance.isInvalid) {
      balance = balanceSheetStatements.getWithYear(mostRecent - 1);
      oldBalanceStatementPenalty = balance.isInvalid ? 0 : oldBalanceStatementPenalty;
    }

    final double roa = income.netIncome.get.toDouble() / balance.totalAssets.get.toDouble();
    if (roa > 0) {
      return 1 * oldIncomeStatementPenalty * oldBalanceStatementPenalty;
    }
    return 0;
  }

  List<StatementPair> joinAndSortStatements(List<Statement> list1, List<Statement> list2) {
    // Combine all years into a set to eliminate duplicates and sort them
    final List<int> allYears = {
      ...list1.map((Statement e) => e.statementYear.get),
      ...list2.map((Statement e) => e.statementYear.get),
    }.toList();
    allYears.sort();

    // Map each list by year for easy access
    final Map<int, Statement> map1 = {for (final Statement statement in list1) statement.statementYear.get: statement};
    final Map<int, Statement> map2 = {for (final Statement statement in list2) statement.statementYear.get: statement};

    // Create a list of StatementPairs
    final List<StatementPair> result = [];

    for (final int year in allYears) {
      result.add(
        StatementPair(
          first: map1[year],
          second: map2[year],
        ),
      );
    }

    return result.reversed.toList();
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
          valid: false,
        );
}

class StatementPair {
  Statement? first;
  Statement? second;

  StatementPair({this.first, this.second});
}
