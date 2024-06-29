import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stockz/application/overview/stock_exchange/stock_exchange_cubit.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/presentation/core/widgets/text/st_feature_heading.dart';
import 'package:stockz/setup.dart';

class StockExchangePage extends StatelessWidget {
  static Widget creator(RouteArguments args) {
    return StockExchangePage(exchangeSymbol: args.getString("exchangeSymbol") ?? "");
  }

  final String exchangeSymbol;

  const StockExchangePage({super.key, required this.exchangeSymbol});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StockExchangeCubit>(
      create: (BuildContext context) {
        final StockExchangeCubit cubit = getIt<StockExchangeCubit>();
        cubit.getData(forceGet: false, exchangeSymbol: exchangeSymbol);
        cubit.eventBus.on<StockExchangeMessage>().listen((StockExchangeMessage event) {
          if (!context.mounted) {
            return;
          }
          switch (event) {
            case StockExchangeMessage.errorLoadingExchange:
              StToast.show(
                context: context,
                type: ToastType.error,
                text: S.of(context).stock_exchange_error_loading_exchange,
              );
            case StockExchangeMessage.errorLoadingCompanies:
              StToast.show(
                context: context,
                type: ToastType.error,
                text: S.of(context).stock_exchange_error_loading_exchange_listings,
              );
          }
        });

        return cubit;
      },
      child: BlocBuilder<StockExchangeCubit, StockExchangeState>(
        builder: (BuildContext contest, StockExchangeState state) {
          return StScaffold(
            appBar: const StAppBar(),
            child: ListView(
              children: [
                StFeatureHeading(loading: state.isLoading, text: state.exchange.stockExchangeName.get),
              ],
            ),
          );
        },
      ),
    );
  }
}
