// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockListingModel _$StockListingModelFromJson(Map<String, dynamic> json) =>
    StockListingModel(
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      exchange: json['exchange'] as String?,
      exchangeShortName: json['exchangeShortName'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$StockListingModelToJson(StockListingModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'price': instance.price,
      'exchange': instance.exchange,
      'exchangeShortName': instance.exchangeShortName,
      'type': instance.type,
    };
