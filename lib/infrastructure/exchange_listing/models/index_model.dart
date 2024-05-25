import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/domain/core/value_objects/currency_value_object.dart';
import 'package:stockz/domain/core/value_objects/stock_exchange_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/domain/exchange_listing/entities/index.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'index_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class IndexModel {
  final String? symbol;
  final String? name;
  final String? currency;
  final String? stockExchange;
  final String? exchangeShortName;

  const IndexModel({
    required this.symbol,
    required this.name,
    required this.currency,
    required this.stockExchange,
    required this.exchangeShortName,
  });

  factory IndexModel.fromTableRow(IndexTableRow row) {
    return IndexModel(
      symbol: row.symbol,
      name: row.name,
      currency: row.currency,
      stockExchange: row.stockExchange,
      exchangeShortName: row.exchangeShortName,
    );
  }

  factory IndexModel.fromJson(Map<String, dynamic> json) {
    return _$IndexModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$IndexModelToJson(this);

  Index toDomain() {
    return Index(
      symbol: StringIdValueObject(symbol),
      name: TextValueObject(name),
      currency: CurrencyValueObject(currency),
      stockExchange: StockExchangeValueObject(stockExchange),
      exchangeShortName: TextValueObject(exchangeShortName),
    );
  }
}
