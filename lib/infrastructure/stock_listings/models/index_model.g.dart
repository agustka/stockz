// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IndexModel _$IndexModelFromJson(Map<String, dynamic> json) => IndexModel(
      symbol: json['symbol'] as String?,
      name: json['name'] as String?,
      currency: json['currency'] as String?,
      stockExchange: json['stockExchange'] as String?,
      exchangeShortName: json['exchangeShortName'] as String?,
    );

Map<String, dynamic> _$IndexModelToJson(IndexModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'currency': instance.currency,
      'stockExchange': instance.stockExchange,
      'exchangeShortName': instance.exchangeShortName,
    };
