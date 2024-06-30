import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/stock_exchange_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/domain/exchange_listing/value_objects/percentage_value_object.dart';

@immutable
class StockListings extends Equatable {
  final StringIdValueObject exchangeSymbol;
  final List<ExchangeListing> listings;
  final bool valid;

  bool get isInvalid => !valid;

  const StockListings({required this.exchangeSymbol, required this.listings, this.valid = true});

  const factory StockListings.invalid() = _$InvalidStockListings;

  @override
  List<Object?> get props => [exchangeSymbol, listings, valid];
}

class _$InvalidStockListings extends StockListings {
  const _$InvalidStockListings()
      : super(
          exchangeSymbol: const StringIdValueObject.invalid(),
          listings: const [],
          valid: false,
        );
}

@immutable
class ExchangeListing extends Equatable {
  final StringIdValueObject symbol;
  final TextValueObject name;
  final NumberValueObject price;
  final StockExchangeValueObject exchange;
  final PercentageValueObject change;

  const ExchangeListing({
    required this.symbol,
    required this.name,
    required this.price,
    required this.exchange,
    required this.change,
  });

  @override
  List<Object?> get props => [
        symbol,
        name,
        price,
        exchange,
        change,
      ];
}
