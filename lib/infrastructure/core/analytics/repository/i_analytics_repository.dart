import 'package:stockz/domain/core/analytics/event.dart';

abstract class IAnalyticsRepository {
  Future<void> logEvent(Event event);
}
