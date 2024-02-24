import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stockz/domain/chart/entities/chart.dart';
import 'package:stockz/domain/core/value_objects/date_value_object.dart';
import 'package:stockz/domain/core/value_objects/int_value_object.dart';
import 'package:stockz/domain/core/value_objects/number_value_object.dart';
import 'package:stockz/domain/core/value_objects/string_id_value_objec.dart';
import 'package:stockz/domain/core/value_objects/text_value_object.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'chart_model.g.dart';

@immutable
@JsonSerializable(includeIfNull: true, explicitToJson: true)
class ChartModel {
  final String? symbol;
  final List<ChartEodItemModel> historical;

  const ChartModel({
    required this.symbol,
    required this.historical,
  });

  factory ChartModel.fromTableRow(List<ChartEodItemTableRow> rows) {
    return ChartModel(
      symbol: rows.first.symbol,
      historical: rows.map((ChartEodItemTableRow row) => ChartEodItemModel.fromTableRow(row)).toList(),
    );
  }

  factory ChartModel.fromJson(Map<String, dynamic> json) {
    return _$ChartModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChartModelToJson(this);

  Chart toDomain() {
    return Chart(
      symbol: StringIdValueObject(symbol),
      historical: historical.map((ChartEodItemModel e) => e.toDomain()).toList(),
    );
  }
}

@immutable
@JsonSerializable(includeIfNull: true)
class ChartEodItemModel {
  final String? date;
  final double? open;
  final double? high;
  final double? low;
  final double? close;
  final double? adjClose;
  final int? volume;
  final int? unadjustedVolume;
  final double? change;
  final double? changePercent;
  final double? vwap;
  final String? label;
  final double? changeOverTime;

  const ChartEodItemModel({
    required this.date,
    required this.open,
    required this.high,
    required this.low,
    required this.close,
    required this.adjClose,
    required this.volume,
    required this.unadjustedVolume,
    required this.change,
    required this.changePercent,
    required this.vwap,
    required this.label,
    required this.changeOverTime,
  });

  factory ChartEodItemModel.fromTableRow(ChartEodItemTableRow row) {
    return ChartEodItemModel(
      date: row.date,
      open: row.open,
      high: row.high,
      low: row.low,
      close: row.close,
      adjClose: row.adjClose,
      volume: row.volume,
      unadjustedVolume: row.unadjustedVolume,
      change: row.change,
      changePercent: row.changePercent,
      vwap: row.vwap,
      label: row.label,
      changeOverTime: row.changeOverTime,
    );
  }

  factory ChartEodItemModel.fromJson(Map<String, dynamic> json) {
    return _$ChartEodItemModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChartEodItemModelToJson(this);

  ChartEodItem toDomain() {
    return ChartEodItem(
      date: DateValueObject.fromString(date),
      open: NumberValueObject(open),
      high: NumberValueObject(high),
      low: NumberValueObject(low),
      close: NumberValueObject(close),
      adjClose: NumberValueObject(adjClose),
      volume: IntValueObject(volume),
      unadjustedVolume: IntValueObject(unadjustedVolume),
      change: NumberValueObject(change),
      changePercent: NumberValueObject(changePercent),
      vwap: NumberValueObject(vwap),
      label: TextValueObject(label),
      changeOverTime: NumberValueObject(changeOverTime),
    );
  }
}
