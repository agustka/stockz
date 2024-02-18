import 'package:drift/drift.dart';

@DataClassName("CompanyProfileTableRow")
class CompanyProfileTableRowDefinition extends Table {
  TextColumn get symbol => text()();
  RealColumn get price => real().nullable()();
  RealColumn get beta => real().nullable()();
  RealColumn get volAvg => real().nullable()();
  RealColumn get mktCap => real().nullable()();
  RealColumn get lastDiv => real().nullable()();
  TextColumn get range => text().nullable()();
  RealColumn get changes => real().nullable()();
  TextColumn get companyName => text().nullable()();
  TextColumn get currency => text().nullable()();
  TextColumn get cik => text().nullable()();
  TextColumn get isin => text().nullable()();
  TextColumn get cusip => text().nullable()();
  TextColumn get exchange => text().nullable()();
  TextColumn get exchangeShortName => text().nullable()();
  TextColumn get industry => text().nullable()();
  TextColumn get website => text().nullable()();
  TextColumn get description => text().nullable()();
  TextColumn get ceo => text().nullable()();
  TextColumn get sector => text().nullable()();
  TextColumn get country => text().nullable()();
  TextColumn get fullTimeEmployees => text().nullable()();
  TextColumn get phone => text().nullable()();
  TextColumn get address => text().nullable()();
  TextColumn get city => text().nullable()();
  TextColumn get state => text().nullable()();
  TextColumn get zip => text().nullable()();
  RealColumn get dcfDiff => real().nullable()();
  RealColumn get dcf => real().nullable()();
  TextColumn get image => text().nullable()();
  TextColumn get ipoDate => text().nullable()();
  BoolColumn get defaultImage => boolean().nullable()();
  BoolColumn get isEtf => boolean().nullable()();
  BoolColumn get isActivelyTrading => boolean().nullable()();
  BoolColumn get isAdr => boolean().nullable()();
  BoolColumn get isFund => boolean().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol};
}
