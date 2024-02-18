import 'package:stockz/application/core/analytics/analytics_cubit.dart';
import 'package:stockz/domain/core/analytics/event.dart';
import 'package:stockz/setup.dart';

mixin AnalyticsHelper {
  void log(Event event) {
    getIt<AnalyticsCubit>().logEvent(event);
  }
}
