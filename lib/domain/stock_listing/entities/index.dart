import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/stock_exchange_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';

@immutable
class Indices {
  final List<Index> indices;

  const Indices({required this.indices});
}

@immutable
class Index {
  final StringIdValueObject symbol;
  final TextValueObject name;
  final CurrencyValueObject currency;
  final StockExchangeValueObject stockExchange;
  final TextValueObject exchangeShortName;

  const Index({
    required this.symbol,
    required this.name,
    required this.currency,
    required this.stockExchange,
    required this.exchangeShortName,
  });
}
