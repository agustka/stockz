import 'package:drift/drift.dart';

@DataClassName("ExchangeTableRow")
class ExchangeTableRowDefinition extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get symbol => text()();

  DateTimeColumn get expires => dateTime()();
}
