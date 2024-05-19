// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:drift/drift.dart' as _i34;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stockz/application/core/analytics/analytics_cubit.dart' as _i55;
import 'package:stockz/application/core/caching/caching_cubit.dart' as _i61;
import 'package:stockz/application/core/initialization/initialization_cubit.dart'
    as _i12;
import 'package:stockz/application/core/language/language_cubit.dart' as _i3;
import 'package:stockz/application/core/navigation/navigation_cubit.dart'
    as _i70;
import 'package:stockz/application/overview/overview_cubit.dart' as _i4;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_cache.dart'
    as _i66;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_statement_dao.dart'
    as _i50;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart'
    as _i65;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/balance_sheet_statement_repository.dart'
    as _i78;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart'
    as _i77;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_module.dart'
    as _i91;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_service.dart'
    as _i67;
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart'
    as _i9;
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart'
    as _i27;
import 'package:stockz/infrastructure/balance_sheet_statement/service/offline/offline_balance_sheet_service.dart'
    as _i28;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_cache.dart'
    as _i54;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart'
    as _i49;
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart'
    as _i53;
import 'package:stockz/infrastructure/cash_flow_statement/repository/cash_flow_statement_repository.dart'
    as _i58;
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart'
    as _i57;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_module.dart'
    as _i90;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_service.dart'
    as _i42;
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart'
    as _i8;
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart'
    as _i21;
import 'package:stockz/infrastructure/cash_flow_statement/service/offline/offline_cash_flow_statement_service.dart'
    as _i22;
import 'package:stockz/infrastructure/chart/cache/chart_cache.dart' as _i69;
import 'package:stockz/infrastructure/chart/cache/chart_dao.dart' as _i47;
import 'package:stockz/infrastructure/chart/cache/i_chart_cache.dart' as _i68;
import 'package:stockz/infrastructure/chart/repository/chart_repository.dart'
    as _i80;
import 'package:stockz/infrastructure/chart/repository/i_chart_repository.dart'
    as _i79;
import 'package:stockz/infrastructure/chart/service/chart_service.dart' as _i37;
import 'package:stockz/infrastructure/chart/service/chopper/chart_chopper_service.dart'
    as _i6;
import 'package:stockz/infrastructure/chart/service/i_chart_service.dart'
    as _i36;
import 'package:stockz/infrastructure/chart/service/moving_average_service_module.dart'
    as _i88;
import 'package:stockz/infrastructure/chart/service/offline/offline_chart_service.dart'
    as _i52;
import 'package:stockz/infrastructure/company/repository/company_repository.dart'
    as _i86;
import 'package:stockz/infrastructure/company/repository/i_company_repository.dart'
    as _i85;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_cache.dart'
    as _i60;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_dao.dart'
    as _i48;
import 'package:stockz/infrastructure/company_profile/cache/i_company_profile_cache.dart'
    as _i59;
import 'package:stockz/infrastructure/company_profile/repository/company_profile_repository.dart'
    as _i76;
import 'package:stockz/infrastructure/company_profile/repository/i_company_profile_repository.dart'
    as _i75;
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart'
    as _i7;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service.dart'
    as _i24;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service_module.dart'
    as _i89;
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart'
    as _i23;
import 'package:stockz/infrastructure/company_profile/service/offline/offline_company_profile_service.dart'
    as _i35;
import 'package:stockz/infrastructure/core/analytics/repository/analytics_repository.dart'
    as _i41;
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart'
    as _i40;
import 'package:stockz/infrastructure/core/cache/database_definition.dart'
    as _i33;
import 'package:stockz/infrastructure/core/cache/database_module.dart' as _i93;
import 'package:stockz/infrastructure/core/cache/offline/offline_database_definition.dart'
    as _i43;
import 'package:stockz/infrastructure/core/cache/repository/cache_repository.dart'
    as _i32;
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart'
    as _i31;
import 'package:stockz/infrastructure/core/cache/service/cache_service.dart'
    as _i64;
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart'
    as _i17;
import 'package:stockz/infrastructure/core/cache/service/offline/offline_cache_service.dart'
    as _i18;
import 'package:stockz/infrastructure/core/prefs/offline/offline_shared_prefs_provider.dart'
    as _i26;
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart'
    as _i25;
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart'
    as _i14;
import 'package:stockz/infrastructure/core/service/interceptors/headers_request_interceptor.dart'
    as _i13;
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart'
    as _i15;
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart'
    as _i38;
import 'package:stockz/infrastructure/core/service/timer/offline/offline_poll_and_debounce.dart'
    as _i39;
import 'package:stockz/infrastructure/core/service/timer/poll_and_debounce.dart'
    as _i56;
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart'
    as _i29;
import 'package:stockz/infrastructure/core/test_runner_determiner/offline/offline_test_runner_determiner.dart'
    as _i30;
import 'package:stockz/infrastructure/core/test_runner_determiner/test_runner_determiner.dart'
    as _i62;
import 'package:stockz/infrastructure/income_statement/cache/i_income_statement_cache.dart'
    as _i71;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_cache.dart'
    as _i72;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_dao.dart'
    as _i46;
import 'package:stockz/infrastructure/income_statement/repository/i_income_statement_repository.dart'
    as _i81;
import 'package:stockz/infrastructure/income_statement/repository/income_statement_repository.dart'
    as _i82;
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart'
    as _i5;
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart'
    as _i19;
import 'package:stockz/infrastructure/income_statement/service/income_statement_module.dart'
    as _i87;
import 'package:stockz/infrastructure/income_statement/service/income_statement_service.dart'
    as _i63;
import 'package:stockz/infrastructure/income_statement/service/offline/offline_income_statement_service.dart'
    as _i20;
import 'package:stockz/infrastructure/stock_listings/cache/i_stock_listings_cache.dart'
    as _i73;
import 'package:stockz/infrastructure/stock_listings/cache/stock_listings_cache.dart'
    as _i74;
import 'package:stockz/infrastructure/stock_listings/cache/stock_listings_dao.dart'
    as _i51;
import 'package:stockz/infrastructure/stock_listings/repository/i_stock_listings_repository.dart'
    as _i83;
import 'package:stockz/infrastructure/stock_listings/repository/stock_listings_repository.dart'
    as _i84;
import 'package:stockz/infrastructure/stock_listings/service/chopper/stock_listings_chopper_service.dart'
    as _i10;
import 'package:stockz/infrastructure/stock_listings/service/i_stock_listings_service.dart'
    as _i44;
import 'package:stockz/infrastructure/stock_listings/service/stock_listings_module.dart'
    as _i92;
import 'package:stockz/infrastructure/stock_listings/service/stock_listings_service.dart'
    as _i45;
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
    final incomeStatementServiceModule = _$IncomeStatementServiceModule();
    final movingAverageServiceModule = _$MovingAverageServiceModule();
    final companyProfileServiceModule = _$CompanyProfileServiceModule();
    final cashFlowStatementServiceModule = _$CashFlowStatementServiceModule();
    final balanceSheetStatementServiceModule =
        _$BalanceSheetStatementServiceModule();
    final stockListingsServiceModule = _$StockListingsServiceModule();
    final databaseModule = _$DatabaseModule();
    gh.factory<_i3.LanguageCubit>(() => _i3.LanguageCubit());
    gh.factory<_i4.OverviewCubit>(() => _i4.OverviewCubit());
    gh.factory<_i5.IncomeStatementChopperService>(
        () => incomeStatementServiceModule.incomeStatementChopperService);
    gh.factory<_i6.ChartChopperService>(
        () => movingAverageServiceModule.chartChopperService);
    gh.factory<_i7.CompanyProfileChopperService>(
        () => companyProfileServiceModule.companyProfileChopperService);
    gh.factory<_i8.CashFlowStatementChopperService>(
        () => cashFlowStatementServiceModule.cashFlowStatementChopperService);
    gh.factory<_i9.BalanceSheetStatementChopperService>(() =>
        balanceSheetStatementServiceModule.balanceSheetStatementChopperService);
    gh.factory<_i10.StockListingsChopperService>(
        () => stockListingsServiceModule.stockListingsChopperService);
    gh.singleton<_i11.GlobalNavigatorKey>(() => _i11.GlobalNavigatorKey());
    gh.lazySingleton<_i12.InitializationCubit>(
        () => _i12.InitializationCubit());
    gh.lazySingleton<_i13.HeadersRequestInterceptor>(
        () => _i13.HeadersRequestInterceptor());
    gh.lazySingleton<_i14.AuthRequestInterceptor>(
        () => _i14.AuthRequestInterceptor());
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
    gh.lazySingleton<_i31.ICacheRepository>(
        () => _i32.CacheRepository(gh<_i17.ICacheService>()));
    gh.lazySingleton<_i33.DriftDb>(
      () => _i33.DriftDb(executor: gh<_i34.QueryExecutor>()),
      registerFor: {_online},
    );
    gh.factory<_i23.ICompanyProfileService>(
      () => _i35.OfflineCompanyProfileService(),
      registerFor: {_offline},
    );
    gh.factory<_i36.IChartService>(
      () => _i37.ChartService(gh<_i6.ChartChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i38.IPollAndDebounce>(
      () => _i39.OfflinePollAndDebounce(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i40.IAnalyticsRepository>(
        () => _i41.AnalyticsRepository());
    gh.factory<_i21.ICashFlowStatementService>(
      () => _i42.CashFlowStatementService(
          gh<_i8.CashFlowStatementChopperService>()),
      registerFor: {_online},
    );
    gh.lazySingleton<_i33.DriftDb>(
      () => _i43.OfflineDriftDb(),
      registerFor: {_offline},
    );
    gh.factory<_i44.IStockListingsService>(
      () => _i45.StockListingsService(gh<_i10.StockListingsChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i46.IncomeStatementDao>(
        () => _i46.IncomeStatementDao(gh<_i33.DriftDb>()));
    gh.factory<_i47.ChartDao>(() => _i47.ChartDao(gh<_i33.DriftDb>()));
    gh.factory<_i48.CompanyProfileDao>(
        () => _i48.CompanyProfileDao(gh<_i33.DriftDb>()));
    gh.factory<_i49.CashFlowStatementDao>(
        () => _i49.CashFlowStatementDao(gh<_i33.DriftDb>()));
    gh.factory<_i50.BalanceSheetStatementDao>(
        () => _i50.BalanceSheetStatementDao(gh<_i33.DriftDb>()));
    gh.factory<_i51.StockListingsDao>(
        () => _i51.StockListingsDao(gh<_i33.DriftDb>()));
    gh.factory<_i36.IChartService>(
      () => _i52.OfflineChartService(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i25.SharedPrefsProvider>(
      () => _i25.SharedPrefsProvider(),
      registerFor: {_online},
    );
    gh.factory<_i53.ICashFlowStatementCache>(
        () => _i54.CashFlowStatementCache(gh<_i49.CashFlowStatementDao>()));
    gh.lazySingleton<_i55.AnalyticsCubit>(
        () => _i55.AnalyticsCubit(gh<_i40.IAnalyticsRepository>()));
    gh.factory<_i38.IPollAndDebounce>(
      () => _i56.PollAndDebounce(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i57.ICashFlowStatementRepository>(
        () => _i58.CashFlowStatementRepository(
              gh<_i21.ICashFlowStatementService>(),
              gh<_i53.ICashFlowStatementCache>(),
            ));
    gh.factory<_i59.ICompanyProfileCache>(
        () => _i60.CompanyProfileCache(gh<_i48.CompanyProfileDao>()));
    gh.factory<_i61.CachingCubit>(() => _i61.CachingCubit(
          gh<_i31.ICacheRepository>(),
          gh<_i25.SharedPrefsProvider>(),
        ));
    gh.singleton<_i29.ITestRunnerDeterminer>(
      () => _i62.TestRunnerDeterminer(),
      registerFor: {_online},
    );
    gh.factory<_i19.IIncomeStatementService>(
      () =>
          _i63.IncomeStatementService(gh<_i5.IncomeStatementChopperService>()),
      registerFor: {_online},
    );
    gh.lazySingleton<_i17.ICacheService>(
      () => _i64.CacheService(),
      registerFor: {_online},
    );
    gh.factory<_i65.IBalanceSheetStatementCache>(() =>
        _i66.BalanceSheetStatementCache(gh<_i50.BalanceSheetStatementDao>()));
    gh.factory<_i27.IBalanceSheetStatementService>(
      () => _i67.BalanceSheetStatementService(
          gh<_i9.BalanceSheetStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i68.IChartCache>(() => _i69.ChartCache(gh<_i47.ChartDao>()));
    gh.singleton<_i70.NavigationCubit>(() => _i70.NavigationCubit(
          gh<_i40.IAnalyticsRepository>(),
          gh<_i38.IPollAndDebounce>(),
        ));
    gh.factory<_i71.IIncomeStatementCache>(
        () => _i72.IncomeStatementCache(gh<_i46.IncomeStatementDao>()));
    gh.factory<_i73.IStockListingsCache>(
        () => _i74.StockListingsCache(gh<_i51.StockListingsDao>()));
    gh.lazySingleton<_i75.ICompanyProfileRepository>(
        () => _i76.CompanyProfileRepository(
              gh<_i23.ICompanyProfileService>(),
              gh<_i59.ICompanyProfileCache>(),
            ));
    gh.lazySingleton<_i77.IBalanceSheetStatementRepository>(
        () => _i78.BalanceSheetStatementRepository(
              gh<_i27.IBalanceSheetStatementService>(),
              gh<_i65.IBalanceSheetStatementCache>(),
            ));
    gh.lazySingleton<_i79.IChartRepository>(() => _i80.MovingAverageRepository(
          gh<_i36.IChartService>(),
          gh<_i68.IChartCache>(),
        ));
    gh.lazySingleton<_i81.IIncomeStatementRepository>(
        () => _i82.IncomeStatementRepository(
              gh<_i19.IIncomeStatementService>(),
              gh<_i71.IIncomeStatementCache>(),
            ));
    gh.lazySingleton<_i83.IStockListingsRepository>(
        () => _i84.StockListingsRepository(
              gh<_i44.IStockListingsService>(),
              gh<_i73.IStockListingsCache>(),
            ));
    gh.lazySingleton<_i85.ICompanyRepository>(() => _i86.CompanyRepository(
          gh<_i77.IBalanceSheetStatementRepository>(),
          gh<_i57.ICashFlowStatementRepository>(),
          gh<_i75.ICompanyProfileRepository>(),
          gh<_i81.IIncomeStatementRepository>(),
          gh<_i79.IChartRepository>(),
        ));
    gh.singleton<_i34.QueryExecutor>(() => databaseModule.queryExecutorOnline);
    return this;
  }
}

class _$IncomeStatementServiceModule
    extends _i87.IncomeStatementServiceModule {}

class _$MovingAverageServiceModule extends _i88.MovingAverageServiceModule {}

class _$CompanyProfileServiceModule extends _i89.CompanyProfileServiceModule {}

class _$CashFlowStatementServiceModule
    extends _i90.CashFlowStatementServiceModule {}

class _$BalanceSheetStatementServiceModule
    extends _i91.BalanceSheetStatementServiceModule {}

class _$StockListingsServiceModule extends _i92.StockListingsServiceModule {}

class _$DatabaseModule extends _i93.DatabaseModule {}
