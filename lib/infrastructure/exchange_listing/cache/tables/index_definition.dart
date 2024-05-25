import 'package:drift/drift.dart';

@DataClassName("IndexTableRow")
class IndexTableRowDefinition extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();
  TextColumn get name => text().nullable()();
  TextColumn get currency => text().nullable()();
  TextColumn get stockExchange => text()();
  TextColumn get exchangeShortName => text().nullable()();

  DateTimeColumn get expires => dateTime()();
}
