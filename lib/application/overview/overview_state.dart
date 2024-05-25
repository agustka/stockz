part of 'overview_cubit.dart';

enum OverviewMessage {
  errorLoadingExchanges,
}

enum OverviewStatus {
  loading,
  loaded,
}

class OverviewState extends Equatable {
  final OverviewStatus status;
  final List<ExchangeSymbolValueObject> exchanges;

  const OverviewState({
    required this.status,
    required this.exchanges,
  });

  factory OverviewState.initial() {
    return const OverviewState(
      status: OverviewStatus.loading,
      exchanges: [],
    );
  }

  OverviewState copyWith({
    OverviewStatus? status,
    List<ExchangeSymbolValueObject>? exchanges,
  }) {
    return OverviewState(
      status: status ?? this.status,
      exchanges: exchanges ?? this.exchanges,
    );
  }

  @override
  List<Object?> get props => [
        status,
        exchanges,
      ];
}
