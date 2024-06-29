import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/application/core/analytics/analytics_helper.dart';
import 'package:stockz/application/core/navigation/navigation_cubit.dart';
import 'package:stockz/domain/core/navigation/route_link.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/exchange_listing/value_objects/exchange_symbol_value_object.dart';
import 'package:stockz/infrastructure/exchange_listing/repository/exchange_listings_repository.dart';
import 'package:stockz/setup.dart';

part 'overview_state.dart';

@injectable
class OverviewCubit extends Cubit<OverviewState> with AnalyticsHelper {
  final ExchangeListingsRepository _exchangeRepo;
  final EventBus eventBus;

  OverviewCubit(this._exchangeRepo, this.eventBus) : super(OverviewState.initial());

  Future<void> getData({required bool forceGet}) async {
    emit(state.copyWith(status: OverviewStatus.loading));

    _exchangeRepo.getExchangeSymbols(forceGet: forceGet).then(_receiveExchangeSymbols);
  }

  void _receiveExchangeSymbols(Payload<List<ExchangeSymbolValueObject>> value) {
    value.fold(
      (Failure failure) {
        eventBus.fire(OverviewMessage.errorLoadingExchanges);
      },
      (List<ExchangeSymbolValueObject> exchanges) {
        emit(
          state.copyWith(
            status: OverviewStatus.loaded,
            exchanges: exchanges.where((ExchangeSymbolValueObject e) => e.valid).toList(),
          ),
        );
      },
    );
  }

  void gotoExchange({required String exchangeSymbol}) {
    getIt<NavigationCubit>().navigate(routeLink: RouteLink.stockExchange(exchangeSymbol: exchangeSymbol));
  }
}
