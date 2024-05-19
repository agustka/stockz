import 'package:drift/drift.dart';

@DataClassName("StockListingTableRow")
class StockListingTableRowDefinition extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();
  TextColumn get exchange => text()();
  TextColumn get name => text().nullable()();
  RealColumn get price => real().nullable()();
  TextColumn get exchangeShortName => text().nullable()();
  TextColumn get type => text().nullable()();

  DateTimeColumn get expires => dateTime()();
}
