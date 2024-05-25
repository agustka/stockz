import 'package:stockz/domain/stock_listing/entities/exchanges.dart';

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

  Exchange toDomain() {

  }
}

class StockMarketHoursModel {
  final String? openingHour;
  final String? closingHour;

  StockMarketHoursModel({
    required this.openingHour,
    required this.closingHour,
  });

  factory StockMarketHoursModel.fromJson(Map<String, dynamic> json) {
    return StockMarketHoursModel(
      openingHour: json["openingHour"] as String?,
      closingHour: json["closingHour"] as String?,
    );
  }
}

class StockMarketHolidaysModel {
  final int? year;
  final Map<String, String>? holidays;

  StockMarketHolidaysModel({
    required this.year,
    required this.holidays,
  });

  factory StockMarketHolidaysModel.fromJson(Map<String, dynamic> json) {
    final Map<String, String> holidays = Map.from(json)..remove("year");
    return StockMarketHolidaysModel(
      year: json["year"] as int?,
      holidays: holidays.cast<String, String>(),
    );
  }
}
