// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockMarketHoursModel _$StockMarketHoursModelFromJson(
        Map<String, dynamic> json) =>
    StockMarketHoursModel(
      openingHour: json['openingHour'] as String?,
      closingHour: json['closingHour'] as String?,
    );

Map<String, dynamic> _$StockMarketHoursModelToJson(
        StockMarketHoursModel instance) =>
    <String, dynamic>{
      'openingHour': instance.openingHour,
      'closingHour': instance.closingHour,
    };

StockMarketHolidaysModel _$StockMarketHolidaysModelFromJson(
        Map<String, dynamic> json) =>
    StockMarketHolidaysModel(
      year: json['year'],
      holidays: json['holidays'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StockMarketHolidaysModelToJson(
        StockMarketHolidaysModel instance) =>
    <String, dynamic>{
      'year': instance.year,
      'holidays': instance.holidays,
    };
