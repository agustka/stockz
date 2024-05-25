import 'package:drift/drift.dart';

@DataClassName("ExchangeTableRow")
class ExchangeTableRowDefinition extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get exchangeSymbol => text()();
  TextColumn get stockExchangeName => text().nullable()();
  TextColumn get stockMarketHours => text().nullable()();
  TextColumn get stockMarketHolidays => text().nullable()();
  BoolColumn get isTheStockMarketOpen  => boolean().nullable()();
  BoolColumn get isTheEuronextMarketOpen  => boolean().nullable()();
  BoolColumn get isTheForexMarketOpen => boolean().nullable()();
  BoolColumn get isTheCryptoMarketOpen => boolean().nullable()();

  DateTimeColumn get expires => dateTime()();
}
