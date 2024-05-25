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
      changesPercentage: (json['changesPercentage'] as num?)?.toDouble(),
      change: (json['change'] as num?)?.toDouble(),
      dayLow: (json['dayLow'] as num?)?.toDouble(),
      dayHigh: (json['dayHigh'] as num?)?.toDouble(),
      yearHigh: (json['yearHigh'] as num?)?.toDouble(),
      yearLow: (json['yearLow'] as num?)?.toDouble(),
      marketCap: (json['marketCap'] as num?)?.toDouble(),
      priceAvg50: (json['priceAvg50'] as num?)?.toDouble(),
      priceAvg200: (json['priceAvg200'] as num?)?.toDouble(),
      volume: (json['volume'] as num?)?.toDouble(),
      avgVolume: (json['avgVolume'] as num?)?.toDouble(),
      open: (json['open'] as num?)?.toDouble(),
      previousClose: (json['previousClose'] as num?)?.toDouble(),
      eps: (json['eps'] as num?)?.toDouble(),
      pe: (json['pe'] as num?)?.toDouble(),
      earningsAnnouncement: json['earningsAnnouncement'] as String?,
      sharesOutstanding: (json['sharesOutstanding'] as num?)?.toDouble(),
      timestamp: (json['timestamp'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StockListingModelToJson(StockListingModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'price': instance.price,
      'exchange': instance.exchange,
      'exchangeShortName': instance.exchangeShortName,
      'type': instance.type,
      'changesPercentage': instance.changesPercentage,
      'change': instance.change,
      'dayLow': instance.dayLow,
      'dayHigh': instance.dayHigh,
      'yearHigh': instance.yearHigh,
      'yearLow': instance.yearLow,
      'marketCap': instance.marketCap,
      'priceAvg50': instance.priceAvg50,
      'priceAvg200': instance.priceAvg200,
      'volume': instance.volume,
      'avgVolume': instance.avgVolume,
      'open': instance.open,
      'previousClose': instance.previousClose,
      'eps': instance.eps,
      'pe': instance.pe,
      'earningsAnnouncement': instance.earningsAnnouncement,
      'sharesOutstanding': instance.sharesOutstanding,
      'timestamp': instance.timestamp,
    };
