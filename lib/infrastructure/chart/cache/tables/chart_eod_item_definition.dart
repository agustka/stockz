import 'package:drift/drift.dart';

@DataClassName("ChartEodItemTableRow")
class ChartEodItemTableRowDefinition extends Table {
  TextColumn get symbol => text()();
  TextColumn get from => text()();
  TextColumn get to => text()();
  TextColumn get date => text()();
  RealColumn get open => real().nullable()();
  RealColumn get high => real().nullable()();
  RealColumn get low => real().nullable()();
  RealColumn get close => real().nullable()();
  RealColumn get adjClose => real().nullable()();
  IntColumn get volume => integer().nullable()();
  IntColumn get unadjustedVolume => integer().nullable()();
  RealColumn get change => real().nullable()();
  RealColumn get changePercent => real().nullable()();
  RealColumn get vwap => real().nullable()();
  TextColumn get label => text().nullable()();
  RealColumn get changeOverTime => real().nullable()();

  DateTimeColumn get expires => dateTime()();

  @override
  Set<Column> get primaryKey => {symbol, date, from, to};
}
