import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/security_type_value_object.dart';
import 'package:stockz/domain/core/value_objects/stock_exchange_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';

@immutable
class StockListings {
  final List<StockListing> listings;

  const StockListings({required this.listings});
}

@immutable
class StockListing {
  final StringIdValueObject symbol;
  final TextValueObject name;
  final NumberValueObject price;
  final StockExchangeValueObject exchange;
  final TextValueObject exchangeShortName;
  final SecurityTypeValueObject type;

  const StockListing({
    required this.symbol,
    required this.name,
    required this.price,
    required this.exchange,
    required this.exchangeShortName,
    required this.type,
  });
}
