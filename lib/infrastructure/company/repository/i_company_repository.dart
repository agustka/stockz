import 'package:stockz/domain/company/entities/company.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';

abstract interface class ICompanyRepository {
  Future<Payload<Company>> getCompany({required String symbol, bool forceGet = false});

  Future<List<Company>> getCompanies({required List<String> tickers});
}
