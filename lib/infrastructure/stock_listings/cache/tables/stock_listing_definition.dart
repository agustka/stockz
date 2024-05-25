import 'package:drift/drift.dart';

@DataClassName("StockListingTableRow")
class StockListingTableRowDefinition extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();
  TextColumn get name => text().nullable()();
  RealColumn get price => real().nullable()();
  TextColumn get exchange => text()();
  TextColumn get exchangeShortName => text().nullable()();
  TextColumn get type => text().nullable()();
  RealColumn get changesPercentage => real().nullable()();
  RealColumn get change => real().nullable()();
  RealColumn get dayLow => real().nullable()();
  RealColumn get dayHigh => real().nullable()();
  RealColumn get yearHigh => real().nullable()();
  RealColumn get yearLow => real().nullable()();
  RealColumn get marketCap => real().nullable()();
  RealColumn get priceAvg50 => real().nullable()();
  RealColumn get priceAvg200 => real().nullable()();
  RealColumn get volume => real().nullable()();
  RealColumn get avgVolume => real().nullable()();
  RealColumn get open => real().nullable()();
  RealColumn get previousClose => real().nullable()();
  RealColumn get eps => real().nullable()();
  RealColumn get pe => real().nullable()();
  TextColumn get earningsAnnouncement => text().nullable()();
  RealColumn get sharesOutstanding => real().nullable()();
  IntColumn get timestamp => integer().nullable()();

  DateTimeColumn get expires => dateTime()();
}
