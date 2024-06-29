part of 'stock_exchange_cubit.dart';

enum StockExchangeMessage {
  errorLoadingExchange,
  errorLoadingCompanies,
}

enum StockExchangeStatus {
  loading,
  loaded,
}

class StockExchangeState extends Equatable {
  final StockExchangeStatus status;
  final String exchangeSymbol;
  final Exchange exchange;
  final StockListings listings;

  bool get isLoading => status == StockExchangeStatus.loading;

  const StockExchangeState({
    required this.status,
    required this.exchangeSymbol,
    required this.exchange,
    required this.listings,
  });

  factory StockExchangeState.initial() {
    return const StockExchangeState(
      status: StockExchangeStatus.loading,
      exchangeSymbol: "",
      exchange: Exchange.invalid(),
      listings: StockListings.invalid(),
    );
  }

  StockExchangeState copyWith({
    StockExchangeStatus? status,
    String? exchangeSymbol,
    Exchange? exchange,
    StockListings? listings,
  }) {
    return StockExchangeState(
      status: status ?? this.status,
      exchangeSymbol: exchangeSymbol ?? this.exchangeSymbol,
      exchange: exchange ?? this.exchange,
      listings: listings ?? this.listings,
    );
  }

  @override
  List<Object?> get props => [
        status,
        exchangeSymbol,
        exchange,
        listings,
      ];
}
