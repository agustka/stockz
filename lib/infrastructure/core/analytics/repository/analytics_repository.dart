import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:stockz/domain/core/analytics/event.dart';
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart';

@LazySingleton(as: IAnalyticsRepository)
class AnalyticsRepository implements IAnalyticsRepository {
  AnalyticsRepository();

  @override
  Future<void> logEvent(Event event) async {
    Logger().i(event);
  }
}
