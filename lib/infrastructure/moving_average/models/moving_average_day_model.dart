import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'moving_average_day_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true)
class MovingAverageDayModel {
  final String? date;
  final double? open;
  final double? high;
  final double? low;
  final double? close;
  final int? volume;
  final double? ema;

  const MovingAverageDayModel({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.volume,
    required this.ema,
  });

  factory MovingAverageDayModel.fromTableRow(MovingAverageDayTableRow row) {
    return MovingAverageDayModel(
      date: row.date,
      open: row.open,
      high: row.high,
      low: row.low,
      close: row.close,
      volume: row.volume,
      ema: row.ema,
    );
  }

  factory MovingAverageDayModel.fromJson(Map<String, dynamic> json) {
    return _$MovingAverageDayModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MovingAverageDayModelToJson(this);
}
