import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/security_type_value_object.dart';
import 'package:stockz/domain/core/value_objects/stock_exchange_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/domain/stock_listing/entities/stock_listings.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'stock_listing_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class StockListingModel {
  final String? symbol;
  final String? name;
  final double? price;
  final String? exchange;
  final String? exchangeShortName;
  final String? type;

  const StockListingModel({
    required this.symbol,
    required this.name,
    required this.price,
    required this.exchange,
    required this.exchangeShortName,
    required this.type,
  });

  factory StockListingModel.fromTableRow(StockListingTableRow row) {
    return StockListingModel(
      symbol: row.symbol,
      name: row.name,
      price: row.price,
      exchange: row.exchange,
      exchangeShortName: row.exchangeShortName,
      type: row.type,
    );
  }

  factory StockListingModel.fromJson(Map<String, dynamic> json) {
    return _$StockListingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$StockListingModelToJson(this);

  StockListing toDomain() {
    return StockListing(
      symbol: StringIdValueObject(symbol),
      name: TextValueObject(name),
      price: NumberValueObject(price),
      exchange: StockExchangeValueObject(exchange),
      exchangeShortName: TextValueObject(exchangeShortName),
      type: SecurityTypeValueObject(type),
    );
  }
}
