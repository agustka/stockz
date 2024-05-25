import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/bool_value_object.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/domain/exchange_listing/value_objects/open_hours_value_object.dart';

@immutable
class Exchanges extends Equatable {
  final List<Exchange> exchanges;

  const Exchanges({required this.exchanges});

  @override
  List<Object?> get props => [exchanges];
}

@immutable
class Exchange extends Equatable {
  final StringIdValueObject exchangeSymbol;
  final TextValueObject stockExchangeName;
  final OpeningHours stockMarketHours;
  final List<StockMarketHolidays> stockMarketHolidays;
  final BoolValueObject isTheStockMarketOpen;
  final BoolValueObject isTheEuronextMarketOpen;
  final BoolValueObject isTheForexMarketOpen;
  final BoolValueObject isTheCryptoMarketOpen;

  const Exchange({
    required this.exchangeSymbol,
    required this.stockExchangeName,
    required this.stockMarketHours,
    required this.stockMarketHolidays,
    required this.isTheStockMarketOpen,
    required this.isTheEuronextMarketOpen,
    required this.isTheForexMarketOpen,
    required this.isTheCryptoMarketOpen,
  });


  @override
  List<Object?> get props => [
        exchangeSymbol,
        stockExchangeName,
        stockMarketHours,
        stockMarketHolidays,
        isTheStockMarketOpen,
        isTheEuronextMarketOpen,
        isTheForexMarketOpen,
        isTheCryptoMarketOpen,
      ];
}

class OpeningHours extends Equatable {
  final OpenHoursValueObject openingHour;
  final OpenHoursValueObject closingHour;
  final OpenStatus openStatus;
  final bool valid;

  const OpeningHours({
    required this.openingHour,
    required this.closingHour,
    required this.openStatus,
    this.valid = true,
  });

  const factory OpeningHours.invalid() = _$InvalidOpeningHours;

  @override
  List<Object?> get props => [openingHour, closingHour, openStatus, valid];
}

class _$InvalidOpeningHours extends OpeningHours {
  const _$InvalidOpeningHours()
      : super(
    openingHour: const OpenHoursValueObject.invalid(),
    closingHour: const OpenHoursValueObject.invalid(),
    openStatus: OpenStatus.invalid,
    valid: false,
  );
}

enum OpenStatus {
  open,
  closed,
  invalid,
}

class StockMarketHolidays extends Equatable {
  final NumberValueObject year;
  final List<StockMarketHoliday> holidays;

  const StockMarketHolidays({required this.year, required this.holidays});

  @override
  List<Object?> get props => [year, holidays];
}

class StockMarketHoliday extends Equatable {
  final TextValueObject name;
  final DateValueObject date;

  const StockMarketHoliday({required this.name, required this.date});

  @override
  List<Object?> get props => [name, date];
}
