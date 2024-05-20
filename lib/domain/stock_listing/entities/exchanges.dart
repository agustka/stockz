import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/stock_exchange_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';

@immutable
class Exchanges {
  final List<Exchange> exchanges;

  const Exchanges({required this.exchanges});

  factory Exchanges.fromList(List<String> symbols) {
    return Exchanges(
      exchanges: symbols.map((String e) => Exchange(symbol: StringIdValueObject(e))).toList(),
    );
  }
}

@immutable
class Exchange {
  final StringIdValueObject symbol;

  const Exchange({
    required this.symbol,
  });
}
