import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/application/core/analytics/analytics_helper.dart';

part 'overview_state.dart';

@injectable
class OverviewCubit extends Cubit<OverviewState> with AnalyticsHelper {
  OverviewCubit() : super(OverviewState.initial());

  Future<void> getData({required bool forceGet}) async {
    emit(state.copyWith(status: OverviewStatus.loading));
  }
}
