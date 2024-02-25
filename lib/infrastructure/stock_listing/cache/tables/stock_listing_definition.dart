import 'package:drift/drift.dart';

@DataClassName("StockListingTableRow")
class StockListingTableRowDefinition extends Table {
  TextColumn get symbol => text()();
  TextColumn get name => text().nullable()();
  RealColumn get price => real().nullable()();
  TextColumn get exchange => text().nullable()();
  TextColumn get exchangeShortName => text().nullable()();
  TextColumn get type => text().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol};
}
