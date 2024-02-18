import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/company_profile/cache/tables/company_profile_definition.dart';
import 'package:stockz/infrastructure/company_profile/models/company_profile_model.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'company_profile_dao.g.dart';

@DriftAccessor(
  tables: [
    CompanyProfileTableRowDefinition,
  ],
)
@injectable
class CompanyProfileDao extends DatabaseAccessor<DriftDb> with _$CompanyProfileDaoMixin {
  CompanyProfileDao(super.db);

  Future<CompanyProfileTableRow?> getCompanyProfile({required String ticker}) async {
    final List<CompanyProfileTableRow> list = await (select(companyProfileTableRowDefinition)
          ..where(
            ($CompanyProfileTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
          ))
        .get();
    return list.firstOrNull;
  }

  Future<void> addCompanyProfile({
    required CompanyProfileModel companyProfile,
    required String ticker,
    required int ttlSeconds,
  }) async {
    return batch(
      (Batch batch) {
        batch.deleteWhere(
          companyProfileTableRowDefinition,
          ($CompanyProfileTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
        );
        batch.insert(
          companyProfileTableRowDefinition,
          CompanyProfileTableRowDefinitionCompanion.insert(
            symbol: companyProfile.symbol!,
            price: Value(companyProfile.price),
            beta: Value(companyProfile.beta),
            volAvg: Value(companyProfile.volAvg),
            mktCap: Value(companyProfile.mktCap),
            lastDiv: Value(companyProfile.lastDiv),
            range: Value(companyProfile.range),
            changes: Value(companyProfile.changes),
            companyName: Value(companyProfile.companyName),
            currency: Value(companyProfile.currency),
            cik: Value(companyProfile.cik),
            isin: Value(companyProfile.isin),
            cusip: Value(companyProfile.cusip),
            exchange: Value(companyProfile.exchange),
            exchangeShortName: Value(companyProfile.exchangeShortName),
            industry: Value(companyProfile.industry),
            website: Value(companyProfile.website),
            description: Value(companyProfile.description),
            ceo: Value(companyProfile.ceo),
            sector: Value(companyProfile.sector),
            country: Value(companyProfile.country),
            fullTimeEmployees: Value(companyProfile.fullTimeEmployees),
            phone: Value(companyProfile.phone),
            address: Value(companyProfile.address),
            city: Value(companyProfile.city),
            state: Value(companyProfile.state),
            zip: Value(companyProfile.zip),
            dcfDiff: Value(companyProfile.dcfDiff),
            dcf: Value(companyProfile.dcf),
            image: Value(companyProfile.image),
            ipoDate: Value(companyProfile.ipoDate),
            defaultImage: Value(companyProfile.defaultImage),
            isEtf: Value(companyProfile.isEtf),
            isActivelyTrading: Value(companyProfile.isActivelyTrading),
            isAdr: Value(companyProfile.isAdr),
            isFund: Value(companyProfile.isFund),
            expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
          ),
        );
      },
    );
  }
}
