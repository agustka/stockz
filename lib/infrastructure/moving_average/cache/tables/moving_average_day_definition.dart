import 'package:drift/drift.dart';

@DataClassName("MovingAverageDayTableRow")
class MovingAverageDayTableRowDefinition extends Table {
  TextColumn get date => text()();
  TextColumn get symbol => text()();
  RealColumn get open => real().nullable()();
  RealColumn get high => real().nullable()();
  RealColumn get low => real().nullable()();
  RealColumn get close => real().nullable()();
  IntColumn get volume => integer().nullable()();
  RealColumn get ema => real().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol, date};
}
