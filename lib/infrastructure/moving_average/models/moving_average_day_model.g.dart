// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moving_average_day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MovingAverageDayModel _$MovingAverageDayModelFromJson(
        Map<String, dynamic> json) =>
    MovingAverageDayModel(
      date: json['date'] as String?,
      open: (json['open'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
      low: (json['low'] as num?)?.toDouble(),
      close: (json['close'] as num?)?.toDouble(),
      volume: json['volume'] as int?,
      ema: (json['ema'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MovingAverageDayModelToJson(
        MovingAverageDayModel instance) =>
    <String, dynamic>{
      'date': instance.date,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'volume': instance.volume,
      'ema': instance.ema,
    };
