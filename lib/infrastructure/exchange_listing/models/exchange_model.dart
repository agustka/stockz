import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockz/domain/core/value_objects/bool_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/domain/exchange_listing/entities/exchanges.dart';
import 'package:stockz/domain/exchange_listing/value_objects/open_hours_value_object.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'exchange_model.g.dart';

class ExchangeModel {
  final String? stockExchangeName;
  final StockMarketHoursModel? stockMarketHours;
  final List<StockMarketHolidaysModel>? stockMarketHolidays;
  final bool? isTheStockMarketOpen;
  final bool? isTheEuronextMarketOpen;
  final bool? isTheForexMarketOpen;
  final bool? isTheCryptoMarketOpen;

  ExchangeModel({
    required this.stockExchangeName,
    required this.stockMarketHours,
    required this.stockMarketHolidays,
    required this.isTheStockMarketOpen,
    required this.isTheEuronextMarketOpen,
    required this.isTheForexMarketOpen,
    required this.isTheCryptoMarketOpen,
  });

  factory ExchangeModel.fromJson(Map<String, dynamic> json) {
    return ExchangeModel(
      stockExchangeName: json["stockExchangeName"] as String?,
      stockMarketHours: StockMarketHoursModel.fromJson(json["stockMarketHours"] as Map<String, dynamic>? ?? {}),
      stockMarketHolidays: (json["stockMarketHolidays"] as List<dynamic>)
          .map((dynamic e) => StockMarketHolidaysModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isTheStockMarketOpen: json["isTheStockMarketOpen"] as bool?,
      isTheEuronextMarketOpen: json["isTheEuronextMarketOpen"] as bool?,
      isTheForexMarketOpen: json["isTheForexMarketOpen"] as bool?,
      isTheCryptoMarketOpen: json["isTheCryptoMarketOpen"] as bool?,
    );
  }

  factory ExchangeModel.fromTableRow(ExchangeTableRow row) {
    return ExchangeModel(
      stockExchangeName: row.stockExchangeName,
      stockMarketHours: StockMarketHoursModel.fromJsonString(row.stockMarketHours),
      stockMarketHolidays: StockMarketHolidaysModel.fromJsonString(row.stockMarketHolidays),
      isTheStockMarketOpen: row.isTheStockMarketOpen,
      isTheEuronextMarketOpen: row.isTheEuronextMarketOpen,
      isTheForexMarketOpen: row.isTheForexMarketOpen,
      isTheCryptoMarketOpen: row.isTheCryptoMarketOpen,
    );
  }

  Exchange toDomain({required String exchangeSymbol}) {
    return Exchange(
      exchangeSymbol: StringIdValueObject(exchangeSymbol),
      stockExchangeName: TextValueObject(stockExchangeName),
      stockMarketHours: stockMarketHours?.toDomain() ?? const OpeningHours.invalid(),
      stockMarketHolidays: (stockMarketHolidays ?? []).map((StockMarketHolidaysModel e) => e.toDomain()).toList(),
      isTheStockMarketOpen: BoolValueObject(input: isTheStockMarketOpen),
      isTheEuronextMarketOpen: BoolValueObject(input: isTheEuronextMarketOpen),
      isTheForexMarketOpen: BoolValueObject(input: isTheForexMarketOpen),
      isTheCryptoMarketOpen: BoolValueObject(input: isTheCryptoMarketOpen),
    );
  }

  String? stockMarketHoursAsJson() {
    if (stockMarketHours == null) {
      return null;
    }
    return json.encode(stockMarketHours!.toJson());
  }

  String? stockMarketHolidaysAsJson() {
    if (stockMarketHolidays == null) {
      return null;
    }
    return json.encode(stockMarketHolidays!.map((StockMarketHolidaysModel e) => e.toJson()).toList());
  }
}

@immutable
@JsonSerializable(includeIfNull: true, explicitToJson: true)
class StockMarketHoursModel {
  final String? openingHour;
  final String? closingHour;

  const StockMarketHoursModel({
    required this.openingHour,
    required this.closingHour,
  });

  factory StockMarketHoursModel.fromJson(Map<String, dynamic> json) {
    return _$StockMarketHoursModelFromJson(json);
  }

  factory StockMarketHoursModel.fromJsonString(String? jsonData) {
    final Map<String, dynamic> data = json.decode(jsonData ?? "{}") as Map<String, dynamic>;
    return StockMarketHoursModel.fromJson(data);
  }

  Map<String, dynamic> toJson() => _$StockMarketHoursModelToJson(this);

  OpeningHours toDomain() {
    return OpeningHours(
      openingHour: OpenHoursValueObject(openingHour),
      closingHour: OpenHoursValueObject(closingHour),
      openStatus: openingHour == "CLOSED" ? OpenStatus.closed : OpenStatus.open,
    );
  }
}

@immutable
@JsonSerializable(includeIfNull: true, explicitToJson: true)
class StockMarketHolidaysModel {
  final dynamic year;
  final Map? holidays;

  const StockMarketHolidaysModel({
    required this.year,
    required this.holidays,
  });

  factory StockMarketHolidaysModel.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> withoutYear = Map.from(json)..remove("year");
    final Map? holidays = withoutYear["holidays"] as Map?;
    return StockMarketHolidaysModel(
      year: json["year"]?.toString(),
      holidays: holidays,
    );
  }

  static List<StockMarketHolidaysModel> fromJsonString(String? jsonData) {
    final List<dynamic> data = json.decode(jsonData ?? "[]") as List<dynamic>;
    return data.map((dynamic e) => StockMarketHolidaysModel.fromJson(e as Map<String, dynamic>)).toList();
  }

  Map<String, dynamic> toJson() => _$StockMarketHolidaysModelToJson(this);

  StockMarketHolidays toDomain() {
    return StockMarketHolidays(
      year: NumberValueObject.fromString(year?.toString()),
      holidays: (holidays ?? {}).keys.map(
        (dynamic key) {
          final dynamic value = holidays![key];
          return StockMarketHoliday(
            name: TextValueObject(key.toString()),
            date: DateValueObject.fromString(value?.toString()),
          );
        },
      ).toList(),
    );
  }
}
