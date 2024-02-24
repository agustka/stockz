import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/chart/cache/tables/chart_eod_item_definition.dart';
import 'package:stockz/infrastructure/chart/models/chart_model.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';

part 'chart_dao.g.dart';

@DriftAccessor(
  tables: [
    ChartEodItemTableRowDefinition,
  ],
)
@injectable
class ChartDao extends DatabaseAccessor<DriftDb> with _$ChartDaoMixin {
  ChartDao(super.db);

  Future<List<ChartEodItemTableRow>> getChart({
    required String symbol,
    required String from,
    required String to,
  }) async {
    return (select(chartEodItemTableRowDefinition)
          ..where(
            ($ChartEodItemTableRowDefinitionTable tbl) {
              return tbl.symbol.equals(symbol) & tbl.from.equals(from) & tbl.to.equals(to);
            },
          ))
        .get();
  }

  Future<void> addChart({
    required List<ChartEodItemModel> historical,
    required String symbol,
    required String from,
    required String to,
    required int ttlSeconds,
  }) async {
    final List<ChartEodItemModel> cloneList = historical.toList();
    return batch(
      (Batch batch) {
        batch.deleteWhere(
          chartEodItemTableRowDefinition,
          ($ChartEodItemTableRowDefinitionTable tbl) {
            return tbl.symbol.equals(symbol);
          },
        );
        batch.insertAll(
          chartEodItemTableRowDefinition,
          cloneList
              .map(
                (ChartEodItemModel item) => ChartEodItemTableRowDefinitionCompanion.insert(
                  symbol: symbol,
                  date: item.date!,
                  from: from,
                  to: to,
                  open: Value(item.open),
                  high: Value(item.high),
                  low: Value(item.low),
                  close: Value(item.close),
                  adjClose: Value(item.adjClose),
                  volume: Value(item.volume),
                  unadjustedVolume: Value(item.unadjustedVolume),
                  change: Value(item.change),
                  changePercent: Value(item.changePercent),
                  vwap: Value(item.vwap),
                  label: Value(item.label),
                  changeOverTime: Value(item.changeOverTime),
                  expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
