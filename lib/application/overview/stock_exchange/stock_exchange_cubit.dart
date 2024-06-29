import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/application/core/analytics/analytics_helper.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/payload.dart';
import 'package:stockz/domain/exchange_listing/entities/exchange_listings.dart';
import 'package:stockz/domain/exchange_listing/entities/exchanges.dart';
import 'package:stockz/infrastructure/exchange_listing/repository/exchange_listings_repository.dart';

part 'stock_exchange_state.dart';

@injectable
class StockExchangeCubit extends Cubit<StockExchangeState> with AnalyticsHelper {
  final ExchangeListingsRepository _exchangeRepo;
  final EventBus eventBus;

  StockExchangeCubit(this._exchangeRepo, this.eventBus) : super(StockExchangeState.initial());

  Future<void> getData({required bool forceGet, required String exchangeSymbol}) async {
    emit(state.copyWith(status: StockExchangeStatus.loading, exchangeSymbol: exchangeSymbol));

    _exchangeRepo.getExchange(forceGet: forceGet, exchangeSymbol: exchangeSymbol).then(_receiveExchange);
    _exchangeRepo.getExchangeListings(exchangeSymbol: state.exchangeSymbol).then(_receiveCompanies);
  }

  void _receiveExchange(Payload<Exchange> value) {
    value.fold(
      (Failure failure) {
        eventBus.fire(StockExchangeMessage.errorLoadingExchange);
      },
      (Exchange exchange) {
        emit(state.copyWith(status: StockExchangeStatus.loaded, exchange: exchange));
      },
    );
  }

  void _receiveCompanies(Payload<StockListings> value) {
    value.fold(
          (Failure failure) {
        eventBus.fire(StockExchangeMessage.errorLoadingCompanies);
      },
          (StockListings listings) {
        emit(state.copyWith(listings: listings));
      },
    );
  }
}
