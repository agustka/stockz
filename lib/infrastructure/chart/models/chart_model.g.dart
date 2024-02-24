// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartModel _$ChartModelFromJson(Map<String, dynamic> json) => ChartModel(
      symbol: json['symbol'] as String?,
      historical: (json['historical'] as List<dynamic>)
          .map((e) => ChartEodItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChartModelToJson(ChartModel instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'historical': instance.historical.map((e) => e.toJson()).toList(),
    };

ChartEodItemModel _$ChartEodItemModelFromJson(Map<String, dynamic> json) =>
    ChartEodItemModel(
      date: json['date'] as String?,
      open: (json['open'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
      low: (json['low'] as num?)?.toDouble(),
      close: (json['close'] as num?)?.toDouble(),
      adjClose: (json['adjClose'] as num?)?.toDouble(),
      volume: json['volume'] as int?,
      unadjustedVolume: json['unadjustedVolume'] as int?,
      change: (json['change'] as num?)?.toDouble(),
      changePercent: (json['changePercent'] as num?)?.toDouble(),
      vwap: (json['vwap'] as num?)?.toDouble(),
      label: json['label'] as String?,
      changeOverTime: (json['changeOverTime'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ChartEodItemModelToJson(ChartEodItemModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'adjClose': instance.adjClose,
      'volume': instance.volume,
      'unadjustedVolume': instance.unadjustedVolume,
      'change': instance.change,
      'changePercent': instance.changePercent,
      'vwap': instance.vwap,
      'label': instance.label,
      'changeOverTime': instance.changeOverTime,
    };
