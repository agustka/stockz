import 'package:drift/drift.dart';

@DataClassName("ExchangeSymbolTableRow")
class ExchangeSymbolTableRowDefinition extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();

  DateTimeColumn get expires => dateTime()();
}
