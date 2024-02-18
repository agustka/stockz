import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/domain/core/analytics/event.dart';
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart';

part 'analytics_state.dart';

@LazySingleton()
class AnalyticsCubit extends Cubit<AnalyticsState> {
  final IAnalyticsRepository _analyticsRepo;

  AnalyticsCubit(this._analyticsRepo) : super(AnalyticsState.initial());

  void init() {}

  void logEvent(Event event, {bool triggerInAppInNative = false}) {
    _analyticsRepo.logEvent(event);
  }
}
