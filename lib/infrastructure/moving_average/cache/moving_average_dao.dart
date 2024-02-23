import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/moving_average/cache/tables/moving_average_day_definition.dart';
import 'package:stockz/infrastructure/moving_average/models/moving_average_day_model.dart';

part 'moving_average_dao.g.dart';

@DriftAccessor(
  tables: [
    MovingAverageDayTableRowDefinition,
  ],
)
@injectable
class MovingAverageDao extends DatabaseAccessor<DriftDb> with _$MovingAverageDaoMixin {
  MovingAverageDao(super.db);

  Future<List<MovingAverageDayTableRow>> getMovingAverageDays({required String ticker}) async {
    return (select(movingAverageDayTableRowDefinition)
          ..where(
            ($MovingAverageDayTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
          ))
        .get();
  }

  Future<void> addMovingAverageDays({
    required List<MovingAverageDayModel> days,
    required String ticker,
    required int ttlSeconds,
  }) async {
    final List<MovingAverageDayModel> cloneList = days.toList();
    return batch(
      (Batch batch) {
        batch.deleteWhere(
          movingAverageDayTableRowDefinition,
          ($MovingAverageDayTableRowDefinitionTable tbl) => tbl.symbol.equals(ticker),
        );
        batch.insertAll(
          movingAverageDayTableRowDefinition,
          cloneList
              .map(
                (MovingAverageDayModel day) => MovingAverageDayTableRowDefinitionCompanion.insert(
                  symbol: ticker,
                  date: day.date!,
                  open: Value(day.open),
                  high: Value(day.high),
                  low: Value(day.low),
                  close: Value(day.close),
                  volume: Value(day.volume),
                  ema: Value(day.ema),
                  expires: DateTime.now().add(Duration(seconds: ttlSeconds)),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
