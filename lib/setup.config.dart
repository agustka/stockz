// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:drift/drift.dart' as _i35;
import 'package:event_bus/event_bus.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stockz/application/core/analytics/analytics_cubit.dart' as _i54;
import 'package:stockz/application/core/caching/caching_cubit.dart' as _i60;
import 'package:stockz/application/core/initialization/initialization_cubit.dart'
    as _i12;
import 'package:stockz/application/core/language/language_cubit.dart' as _i3;
import 'package:stockz/application/core/navigation/navigation_cubit.dart'
    as _i70;
import 'package:stockz/application/overview/overview_cubit.dart' as _i82;
import 'package:stockz/application/overview/stock_exchange/stock_exchange_cubit.dart'
    as _i83;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_cache.dart'
    as _i65;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_statement_dao.dart'
    as _i45;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart'
    as _i64;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/balance_sheet_statement_repository.dart'
    as _i77;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart'
    as _i76;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_module.dart'
    as _i86;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_service.dart'
    as _i66;
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart'
    as _i4;
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart'
    as _i27;
import 'package:stockz/infrastructure/balance_sheet_statement/service/offline/offline_balance_sheet_service.dart'
    as _i28;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_cache.dart'
    as _i53;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart'
    as _i46;
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart'
    as _i52;
import 'package:stockz/infrastructure/cash_flow_statement/repository/cash_flow_statement_repository.dart'
    as _i57;
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart'
    as _i56;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_module.dart'
    as _i87;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_service.dart'
    as _i43;
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart'
    as _i5;
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart'
    as _i21;
import 'package:stockz/infrastructure/cash_flow_statement/service/offline/offline_cash_flow_statement_service.dart'
    as _i22;
import 'package:stockz/infrastructure/chart/cache/chart_cache.dart' as _i69;
import 'package:stockz/infrastructure/chart/cache/chart_dao.dart' as _i47;
import 'package:stockz/infrastructure/chart/cache/i_chart_cache.dart' as _i68;
import 'package:stockz/infrastructure/chart/repository/chart_repository.dart'
    as _i79;
import 'package:stockz/infrastructure/chart/repository/i_chart_repository.dart'
    as _i78;
import 'package:stockz/infrastructure/chart/service/chart_service.dart' as _i38;
import 'package:stockz/infrastructure/chart/service/chopper/chart_chopper_service.dart'
    as _i6;
import 'package:stockz/infrastructure/chart/service/i_chart_service.dart'
    as _i37;
import 'package:stockz/infrastructure/chart/service/moving_average_service_module.dart'
    as _i88;
import 'package:stockz/infrastructure/chart/service/offline/offline_chart_service.dart'
    as _i51;
import 'package:stockz/infrastructure/company/repository/company_repository.dart'
    as _i85;
import 'package:stockz/infrastructure/company/repository/i_company_repository.dart'
    as _i84;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_cache.dart'
    as _i59;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_dao.dart'
    as _i48;
import 'package:stockz/infrastructure/company_profile/cache/i_company_profile_cache.dart'
    as _i58;
import 'package:stockz/infrastructure/company_profile/repository/company_profile_repository.dart'
    as _i74;
import 'package:stockz/infrastructure/company_profile/repository/i_company_profile_repository.dart'
    as _i73;
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart'
    as _i7;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service.dart'
    as _i24;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service_module.dart'
    as _i89;
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart'
    as _i23;
import 'package:stockz/infrastructure/company_profile/service/offline/offline_company_profile_service.dart'
    as _i36;
import 'package:stockz/infrastructure/core/analytics/repository/analytics_repository.dart'
    as _i42;
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart'
    as _i41;
import 'package:stockz/infrastructure/core/cache/database_definition.dart'
    as _i34;
import 'package:stockz/infrastructure/core/cache/database_module.dart' as _i93;
import 'package:stockz/infrastructure/core/cache/offline/offline_database_definition.dart'
    as _i44;
import 'package:stockz/infrastructure/core/cache/repository/cache_repository.dart'
    as _i33;
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart'
    as _i32;
import 'package:stockz/infrastructure/core/cache/service/cache_service.dart'
    as _i63;
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart'
    as _i17;
import 'package:stockz/infrastructure/core/cache/service/offline/offline_cache_service.dart'
    as _i18;
import 'package:stockz/infrastructure/core/prefs/offline/offline_shared_prefs_provider.dart'
    as _i26;
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart'
    as _i25;
import 'package:stockz/infrastructure/core/service/event_bus_module.dart'
    as _i90;
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart'
    as _i13;
import 'package:stockz/infrastructure/core/service/interceptors/headers_request_interceptor.dart'
    as _i14;
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart'
    as _i15;
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart'
    as _i39;
import 'package:stockz/infrastructure/core/service/timer/offline/offline_poll_and_debounce.dart'
    as _i40;
import 'package:stockz/infrastructure/core/service/timer/poll_and_debounce.dart'
    as _i55;
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart'
    as _i29;
import 'package:stockz/infrastructure/core/test_runner_determiner/offline/offline_test_runner_determiner.dart'
    as _i30;
import 'package:stockz/infrastructure/core/test_runner_determiner/test_runner_determiner.dart'
    as _i61;
import 'package:stockz/infrastructure/exchange_listing/cache/exchange_listings_cache.dart'
    as _i67;
import 'package:stockz/infrastructure/exchange_listing/cache/exchange_listings_dao.dart'
    as _i49;
import 'package:stockz/infrastructure/exchange_listing/repository/exchange_listings_repository.dart'
    as _i75;
import 'package:stockz/infrastructure/exchange_listing/service/chopper/exchange_listings_chopper_service.dart'
    as _i9;
import 'package:stockz/infrastructure/exchange_listing/service/exchange_listings_module.dart'
    as _i91;
import 'package:stockz/infrastructure/exchange_listing/service/exchange_listings_service.dart'
    as _i31;
import 'package:stockz/infrastructure/income_statement/cache/i_income_statement_cache.dart'
    as _i71;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_cache.dart'
    as _i72;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_dao.dart'
    as _i50;
import 'package:stockz/infrastructure/income_statement/repository/i_income_statement_repository.dart'
    as _i80;
import 'package:stockz/infrastructure/income_statement/repository/income_statement_repository.dart'
    as _i81;
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart'
    as _i10;
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart'
    as _i19;
import 'package:stockz/infrastructure/income_statement/service/income_statement_module.dart'
    as _i92;
import 'package:stockz/infrastructure/income_statement/service/income_statement_service.dart'
    as _i62;
import 'package:stockz/infrastructure/income_statement/service/offline/offline_income_statement_service.dart'
    as _i20;
import 'package:stockz/presentation/core/global_navigator_key.dart' as _i11;
import 'package:stockz/presentation/core/route_observer_provider.dart' as _i16;

const String _offline = 'offline';
const String _online = 'online';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final balanceSheetStatementServiceModule =
        _$BalanceSheetStatementServiceModule();
    final cashFlowStatementServiceModule = _$CashFlowStatementServiceModule();
    final movingAverageServiceModule = _$MovingAverageServiceModule();
    final companyProfileServiceModule = _$CompanyProfileServiceModule();
    final eventBusModule = _$EventBusModule();
    final exchangeListingsServiceModule = _$ExchangeListingsServiceModule();
    final incomeStatementServiceModule = _$IncomeStatementServiceModule();
    final databaseModule = _$DatabaseModule();
    gh.factory<_i3.LanguageCubit>(() => _i3.LanguageCubit());
    gh.factory<_i4.BalanceSheetStatementChopperService>(() =>
        balanceSheetStatementServiceModule.balanceSheetStatementChopperService);
    gh.factory<_i5.CashFlowStatementChopperService>(
        () => cashFlowStatementServiceModule.cashFlowStatementChopperService);
    gh.factory<_i6.ChartChopperService>(
        () => movingAverageServiceModule.chartChopperService);
    gh.factory<_i7.CompanyProfileChopperService>(
        () => companyProfileServiceModule.companyProfileChopperService);
    gh.factory<_i8.EventBus>(() => eventBusModule.eventBus);
    gh.factory<_i9.ExchangeListingsChopperService>(
        () => exchangeListingsServiceModule.stockListingsChopperService);
    gh.factory<_i10.IncomeStatementChopperService>(
        () => incomeStatementServiceModule.incomeStatementChopperService);
    gh.singleton<_i11.GlobalNavigatorKey>(() => _i11.GlobalNavigatorKey());
    gh.lazySingleton<_i12.InitializationCubit>(
        () => _i12.InitializationCubit());
    gh.lazySingleton<_i13.AuthRequestInterceptor>(
        () => _i13.AuthRequestInterceptor());
    gh.lazySingleton<_i14.HeadersRequestInterceptor>(
        () => _i14.HeadersRequestInterceptor());
    gh.lazySingleton<_i15.NoBodyLoggingInterceptor>(
        () => _i15.NoBodyLoggingInterceptor());
    gh.lazySingleton<_i15.LoggingInterceptor>(() => _i15.LoggingInterceptor());
    gh.lazySingleton<_i16.RouteObserverProvider>(
        () => _i16.RouteObserverProvider());
    gh.lazySingleton<_i17.ICacheService>(
      () => _i18.OfflineCacheService(),
      registerFor: {_offline},
    );
    gh.factory<_i19.IIncomeStatementService>(
      () => _i20.OfflineIncomeStatementService(),
      registerFor: {_offline},
    );
    gh.factory<_i21.ICashFlowStatementService>(
      () => _i22.OfflineCashFlowStatementService(),
      registerFor: {_offline},
    );
    gh.factory<_i23.ICompanyProfileService>(
      () => _i24.CompanyProfileService(gh<_i7.CompanyProfileChopperService>()),
      registerFor: {_online},
    );
    gh.lazySingleton<_i25.SharedPrefsProvider>(
      () => _i26.OfflineSharedPrefsProvider(),
      registerFor: {_offline},
    );
    gh.factory<_i27.IBalanceSheetStatementService>(
      () => _i28.OfflineBalanceSheetStatementService(),
      registerFor: {_offline},
    );
    gh.singleton<_i29.ITestRunnerDeterminer>(
      () => _i30.OfflineTestRunnerDeterminer(),
      registerFor: {_offline},
    );
    gh.factory<_i31.ExchangeListingsService>(
      () => _i31.ExchangeListingsService(
          gh<_i9.ExchangeListingsChopperService>()),
      registerFor: {_online},
    );
    gh.lazySingleton<_i32.ICacheRepository>(
        () => _i33.CacheRepository(gh<_i17.ICacheService>()));
    gh.lazySingleton<_i34.DriftDb>(
      () => _i34.DriftDb(executor: gh<_i35.QueryExecutor>()),
      registerFor: {_online},
    );
    gh.factory<_i23.ICompanyProfileService>(
      () => _i36.OfflineCompanyProfileService(),
      registerFor: {_offline},
    );
    gh.factory<_i37.IChartService>(
      () => _i38.ChartService(gh<_i6.ChartChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i39.IPollAndDebounce>(
      () => _i40.OfflinePollAndDebounce(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i41.IAnalyticsRepository>(
        () => _i42.AnalyticsRepository());
    gh.factory<_i21.ICashFlowStatementService>(
      () => _i43.CashFlowStatementService(
          gh<_i5.CashFlowStatementChopperService>()),
      registerFor: {_online},
    );
    gh.lazySingleton<_i34.DriftDb>(
      () => _i44.OfflineDriftDb(),
      registerFor: {_offline},
    );
    gh.factory<_i45.BalanceSheetStatementDao>(
        () => _i45.BalanceSheetStatementDao(gh<_i34.DriftDb>()));
    gh.factory<_i46.CashFlowStatementDao>(
        () => _i46.CashFlowStatementDao(gh<_i34.DriftDb>()));
    gh.factory<_i47.ChartDao>(() => _i47.ChartDao(gh<_i34.DriftDb>()));
    gh.factory<_i48.CompanyProfileDao>(
        () => _i48.CompanyProfileDao(gh<_i34.DriftDb>()));
    gh.factory<_i49.StockListingsDao>(
        () => _i49.StockListingsDao(gh<_i34.DriftDb>()));
    gh.factory<_i50.IncomeStatementDao>(
        () => _i50.IncomeStatementDao(gh<_i34.DriftDb>()));
    gh.factory<_i37.IChartService>(
      () => _i51.OfflineChartService(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i25.SharedPrefsProvider>(
      () => _i25.SharedPrefsProvider(),
      registerFor: {_online},
    );
    gh.factory<_i52.ICashFlowStatementCache>(
        () => _i53.CashFlowStatementCache(gh<_i46.CashFlowStatementDao>()));
    gh.lazySingleton<_i54.AnalyticsCubit>(
        () => _i54.AnalyticsCubit(gh<_i41.IAnalyticsRepository>()));
    gh.factory<_i39.IPollAndDebounce>(
      () => _i55.PollAndDebounce(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i56.ICashFlowStatementRepository>(
        () => _i57.CashFlowStatementRepository(
              gh<_i21.ICashFlowStatementService>(),
              gh<_i52.ICashFlowStatementCache>(),
            ));
    gh.factory<_i58.ICompanyProfileCache>(
        () => _i59.CompanyProfileCache(gh<_i48.CompanyProfileDao>()));
    gh.factory<_i60.CachingCubit>(() => _i60.CachingCubit(
          gh<_i32.ICacheRepository>(),
          gh<_i25.SharedPrefsProvider>(),
        ));
    gh.singleton<_i29.ITestRunnerDeterminer>(
      () => _i61.TestRunnerDeterminer(),
      registerFor: {_online},
    );
    gh.factory<_i19.IIncomeStatementService>(
      () =>
          _i62.IncomeStatementService(gh<_i10.IncomeStatementChopperService>()),
      registerFor: {_online},
    );
    gh.lazySingleton<_i17.ICacheService>(
      () => _i63.CacheService(),
      registerFor: {_online},
    );
    gh.factory<_i64.IBalanceSheetStatementCache>(() =>
        _i65.BalanceSheetStatementCache(gh<_i45.BalanceSheetStatementDao>()));
    gh.factory<_i27.IBalanceSheetStatementService>(
      () => _i66.BalanceSheetStatementService(
          gh<_i4.BalanceSheetStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i67.ExchangeListingsCache>(
        () => _i67.ExchangeListingsCache(gh<_i49.StockListingsDao>()));
    gh.factory<_i68.IChartCache>(() => _i69.ChartCache(gh<_i47.ChartDao>()));
    gh.singleton<_i70.NavigationCubit>(() => _i70.NavigationCubit(
          gh<_i41.IAnalyticsRepository>(),
          gh<_i39.IPollAndDebounce>(),
        ));
    gh.factory<_i71.IIncomeStatementCache>(
        () => _i72.IncomeStatementCache(gh<_i50.IncomeStatementDao>()));
    gh.lazySingleton<_i73.ICompanyProfileRepository>(
        () => _i74.CompanyProfileRepository(
              gh<_i23.ICompanyProfileService>(),
              gh<_i58.ICompanyProfileCache>(),
            ));
    gh.lazySingleton<_i75.ExchangeListingsRepository>(
        () => _i75.ExchangeListingsRepository(
              gh<_i31.ExchangeListingsService>(),
              gh<_i67.ExchangeListingsCache>(),
            ));
    gh.lazySingleton<_i76.IBalanceSheetStatementRepository>(
        () => _i77.BalanceSheetStatementRepository(
              gh<_i27.IBalanceSheetStatementService>(),
              gh<_i64.IBalanceSheetStatementCache>(),
            ));
    gh.lazySingleton<_i78.IChartRepository>(() => _i79.MovingAverageRepository(
          gh<_i37.IChartService>(),
          gh<_i68.IChartCache>(),
        ));
    gh.lazySingleton<_i80.IIncomeStatementRepository>(
        () => _i81.IncomeStatementRepository(
              gh<_i19.IIncomeStatementService>(),
              gh<_i71.IIncomeStatementCache>(),
            ));
    gh.factory<_i82.OverviewCubit>(() => _i82.OverviewCubit(
          gh<_i75.ExchangeListingsRepository>(),
          gh<_i8.EventBus>(),
        ));
    gh.factory<_i83.StockExchangeCubit>(() => _i83.StockExchangeCubit(
          gh<_i75.ExchangeListingsRepository>(),
          gh<_i8.EventBus>(),
        ));
    gh.lazySingleton<_i84.ICompanyRepository>(() => _i85.CompanyRepository(
          gh<_i76.IBalanceSheetStatementRepository>(),
          gh<_i56.ICashFlowStatementRepository>(),
          gh<_i73.ICompanyProfileRepository>(),
          gh<_i80.IIncomeStatementRepository>(),
          gh<_i78.IChartRepository>(),
        ));
    gh.singleton<_i35.QueryExecutor>(() => databaseModule.queryExecutorOnline);
    return this;
  }
}

class _$BalanceSheetStatementServiceModule
    extends _i86.BalanceSheetStatementServiceModule {}

class _$CashFlowStatementServiceModule
    extends _i87.CashFlowStatementServiceModule {}

class _$MovingAverageServiceModule extends _i88.MovingAverageServiceModule {}

class _$CompanyProfileServiceModule extends _i89.CompanyProfileServiceModule {}

class _$EventBusModule extends _i90.EventBusModule {}

class _$ExchangeListingsServiceModule
    extends _i91.ExchangeListingsServiceModule {}

class _$IncomeStatementServiceModule
    extends _i92.IncomeStatementServiceModule {}

class _$DatabaseModule extends _i93.DatabaseModule {}
