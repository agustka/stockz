import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/balance_sheet_statement/entities/balance_sheet_statements.dart';
import 'package:stockz/domain/cash_flow_statement/entities/cash_flow_statements.dart';
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
