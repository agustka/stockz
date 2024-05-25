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
  final double? changesPercentage;
  final double? change;
  final double? dayLow;
  final double? dayHigh;
  final double? yearHigh;
  final double? yearLow;
  final double? marketCap;
  final double? priceAvg50;
  final double? priceAvg200;
  final double? volume;
  final double? avgVolume;
  final double? open;
  final double? previousClose;
  final double? eps;
  final double? pe;
  final String? earningsAnnouncement;
  final double? sharesOutstanding;
  final int? timestamp;

  const StockListingModel({
    required this.symbol,
    required this.name,
    required this.price,
    required this.exchange,
    required this.exchangeShortName,
    required this.type,
    required this.changesPercentage,
    required this.change,
    required this.dayLow,
    required this.dayHigh,
    required this.yearHigh,
    required this.yearLow,
    required this.marketCap,
    required this.priceAvg50,
    required this.priceAvg200,
    required this.volume,
    required this.avgVolume,
    required this.open,
    required this.previousClose,
    required this.eps,
    required this.pe,
    required this.earningsAnnouncement,
    required this.sharesOutstanding,
    required this.timestamp,
  });

  factory StockListingModel.fromTableRow(StockListingTableRow row) {
    return StockListingModel(
      symbol: row.symbol,
      name: row.name,
      price: row.price,
      exchange: row.exchange,
      exchangeShortName: row.exchangeShortName,
      type: row.type,
      changesPercentage: row.changesPercentage,
      change: row.change,
      dayLow: row.dayLow,
      dayHigh: row.dayHigh,
      yearHigh: row.yearHigh,
      yearLow: row.yearLow,
      marketCap: row.marketCap,
      priceAvg50: row.priceAvg50,
      priceAvg200: row.priceAvg200,
      volume: row.volume,
      avgVolume: row.avgVolume,
      open: row.open,
      previousClose: row.previousClose,
      eps: row.eps,
      pe: row.pe,
      earningsAnnouncement: row.earningsAnnouncement,
      sharesOutstanding: row.sharesOutstanding,
      timestamp: row.timestamp,
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
