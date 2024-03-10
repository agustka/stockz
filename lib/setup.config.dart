// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:drift/drift.dart' as _i44;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stockz/application/core/analytics/analytics_cubit.dart' as _i50;
import 'package:stockz/application/core/caching/caching_cubit.dart' as _i82;
import 'package:stockz/application/core/initialization/initialization_cubit.dart'
    as _i39;
import 'package:stockz/application/core/language/language_cubit.dart' as _i40;
import 'package:stockz/application/core/navigation/navigation_cubit.dart'
    as _i42;
import 'package:stockz/application/overview/overview_cubit.dart' as _i43;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_cache.dart'
    as _i56;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_statement_dao.dart'
    as _i51;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart'
    as _i55;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/balance_sheet_statement_repository.dart'
    as _i58;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart'
    as _i57;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_module.dart'
    as _i87;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_service.dart'
    as _i15;
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart'
    as _i4;
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart'
    as _i14;
import 'package:stockz/infrastructure/balance_sheet_statement/service/offline/offline_balance_sheet_service.dart'
    as _i16;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_cache.dart'
    as _i62;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart'
    as _i52;
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart'
    as _i61;
import 'package:stockz/infrastructure/cash_flow_statement/repository/cash_flow_statement_repository.dart'
    as _i64;
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart'
    as _i63;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_module.dart'
    as _i88;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_service.dart'
    as _i21;
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart'
    as _i5;
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart'
    as _i20;
import 'package:stockz/infrastructure/cash_flow_statement/service/offline/offline_cash_flow_statement_service.dart'
    as _i22;
import 'package:stockz/infrastructure/chart/cache/chart_cache.dart' as _i66;
import 'package:stockz/infrastructure/chart/cache/chart_dao.dart' as _i53;
import 'package:stockz/infrastructure/chart/cache/i_chart_cache.dart' as _i65;
import 'package:stockz/infrastructure/chart/repository/chart_repository.dart'
    as _i68;
import 'package:stockz/infrastructure/chart/repository/i_chart_repository.dart'
    as _i67;
import 'package:stockz/infrastructure/chart/service/chart_service.dart' as _i25;
import 'package:stockz/infrastructure/chart/service/chopper/chart_chopper_service.dart'
    as _i6;
import 'package:stockz/infrastructure/chart/service/i_chart_service.dart'
    as _i23;
import 'package:stockz/infrastructure/chart/service/moving_average_service_module.dart'
    as _i89;
import 'package:stockz/infrastructure/chart/service/offline/offline_chart_service.dart'
    as _i24;
import 'package:stockz/infrastructure/company/repository/company_repository.dart'
    as _i84;
import 'package:stockz/infrastructure/company/repository/i_company_repository.dart'
    as _i83;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_cache.dart'
    as _i70;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_dao.dart'
    as _i54;
import 'package:stockz/infrastructure/company_profile/cache/i_company_profile_cache.dart'
    as _i69;
import 'package:stockz/infrastructure/company_profile/repository/company_profile_repository.dart'
    as _i72;
import 'package:stockz/infrastructure/company_profile/repository/i_company_profile_repository.dart'
    as _i71;
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart'
    as _i7;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service.dart'
    as _i27;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service_module.dart'
    as _i90;
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart'
    as _i26;
import 'package:stockz/infrastructure/company_profile/service/offline/offline_company_profile_service.dart'
    as _i28;
import 'package:stockz/infrastructure/core/analytics/repository/analytics_repository.dart'
    as _i13;
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart'
    as _i12;
import 'package:stockz/infrastructure/core/cache/database_definition.dart'
    as _i8;
import 'package:stockz/infrastructure/core/cache/database_module.dart' as _i92;
import 'package:stockz/infrastructure/core/cache/offline/offline_database_definition.dart'
    as _i9;
import 'package:stockz/infrastructure/core/cache/repository/cache_repository.dart'
    as _i60;
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart'
    as _i59;
import 'package:stockz/infrastructure/core/cache/service/cache_service.dart'
    as _i18;
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart'
    as _i17;
import 'package:stockz/infrastructure/core/cache/service/offline/offline_cache_service.dart'
    as _i19;
import 'package:stockz/infrastructure/core/prefs/offline/offline_shared_prefs_provider.dart'
    as _i47;
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart'
    as _i46;
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart'
    as _i3;
import 'package:stockz/infrastructure/core/service/interceptors/headers_request_interceptor.dart'
    as _i11;
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart'
    as _i41;
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart'
    as _i31;
import 'package:stockz/infrastructure/core/service/timer/offline/offline_poll_and_debounce.dart'
    as _i33;
import 'package:stockz/infrastructure/core/service/timer/poll_and_debounce.dart'
    as _i32;
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart'
    as _i34;
import 'package:stockz/infrastructure/core/test_runner_determiner/offline/offline_test_runner_determiner.dart'
    as _i36;
import 'package:stockz/infrastructure/core/test_runner_determiner/test_runner_determiner.dart'
    as _i35;
import 'package:stockz/infrastructure/income_statement/cache/i_income_statement_cache.dart'
    as _i73;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_cache.dart'
    as _i74;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_dao.dart'
    as _i38;
import 'package:stockz/infrastructure/income_statement/repository/i_income_statement_repository.dart'
    as _i75;
import 'package:stockz/infrastructure/income_statement/repository/income_statement_repository.dart'
    as _i76;
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart'
    as _i37;
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart'
    as _i29;
import 'package:stockz/infrastructure/income_statement/service/income_statement_module.dart'
    as _i91;
import 'package:stockz/infrastructure/income_statement/service/income_statement_service.dart'
    as _i77;
import 'package:stockz/infrastructure/income_statement/service/offline/offline_income_statement_service.dart'
    as _i30;
import 'package:stockz/infrastructure/stock_listings/cache/i_stock_listings_cache.dart'
    as _i78;
import 'package:stockz/infrastructure/stock_listings/cache/stock_listings_cache.dart'
    as _i79;
import 'package:stockz/infrastructure/stock_listings/cache/stock_listings_dao.dart'
    as _i49;
import 'package:stockz/infrastructure/stock_listings/repository/i_stock_listings_repository.dart'
    as _i85;
import 'package:stockz/infrastructure/stock_listings/repository/stock_listings_repository.dart'
    as _i86;
import 'package:stockz/infrastructure/stock_listings/service/chopper/stock_listings_chopper_service.dart'
    as _i48;
import 'package:stockz/infrastructure/stock_listings/service/i_stock_listings_service.dart'
    as _i80;
import 'package:stockz/infrastructure/stock_listings/service/stock_listings_module.dart'
    as _i93;
import 'package:stockz/infrastructure/stock_listings/service/stock_listings_service.dart'
    as _i81;
import 'package:stockz/presentation/core/global_navigator_key.dart' as _i10;
import 'package:stockz/presentation/core/route_observer_provider.dart' as _i45;

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
    final incomeStatementServiceModule = _$IncomeStatementServiceModule();
    final databaseModule = _$DatabaseModule();
    final stockListingsServiceModule = _$StockListingsServiceModule();
    gh.lazySingleton<_i3.AuthRequestInterceptor>(
        () => _i3.AuthRequestInterceptor());
    gh.factory<_i4.BalanceSheetStatementChopperService>(() =>
        balanceSheetStatementServiceModule.balanceSheetStatementChopperService);
    gh.factory<_i5.CashFlowStatementChopperService>(
        () => cashFlowStatementServiceModule.cashFlowStatementChopperService);
    gh.factory<_i6.ChartChopperService>(
        () => movingAverageServiceModule.chartChopperService);
    gh.factory<_i7.CompanyProfileChopperService>(
        () => companyProfileServiceModule.companyProfileChopperService);
    gh.lazySingleton<_i8.DriftDb>(
      () => _i9.OfflineDriftDb(),
      registerFor: {_offline},
    );
    gh.singleton<_i10.GlobalNavigatorKey>(_i10.GlobalNavigatorKey());
    gh.lazySingleton<_i11.HeadersRequestInterceptor>(
        () => _i11.HeadersRequestInterceptor());
    gh.lazySingleton<_i12.IAnalyticsRepository>(
        () => _i13.AnalyticsRepository());
    gh.factory<_i14.IBalanceSheetStatementService>(
      () => _i15.BalanceSheetStatementService(
          gh<_i4.BalanceSheetStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i14.IBalanceSheetStatementService>(
      () => _i16.OfflineBalanceSheetStatementService(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i17.ICacheService>(
      () => _i18.CacheService(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i17.ICacheService>(
      () => _i19.OfflineCacheService(),
      registerFor: {_offline},
    );
    gh.factory<_i20.ICashFlowStatementService>(
      () => _i21.CashFlowStatementService(
          gh<_i5.CashFlowStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i20.ICashFlowStatementService>(
      () => _i22.OfflineCashFlowStatementService(),
      registerFor: {_offline},
    );
    gh.factory<_i23.IChartService>(
      () => _i24.OfflineChartService(),
      registerFor: {_offline},
    );
    gh.factory<_i23.IChartService>(
      () => _i25.ChartService(gh<_i6.ChartChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i26.ICompanyProfileService>(
      () => _i27.CompanyProfileService(gh<_i7.CompanyProfileChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i26.ICompanyProfileService>(
      () => _i28.OfflineCompanyProfileService(),
      registerFor: {_offline},
    );
    gh.factory<_i29.IIncomeStatementService>(
      () => _i30.OfflineIncomeStatementService(),
      registerFor: {_offline},
    );
    gh.factory<_i31.IPollAndDebounce>(
      () => _i32.PollAndDebounce(),
      registerFor: {_online},
    );
    gh.factory<_i31.IPollAndDebounce>(
      () => _i33.OfflinePollAndDebounce(),
      registerFor: {_offline},
    );
    gh.factory<_i34.ITestRunnerDeterminer>(
      () => _i35.TestRunnerDeterminer(),
      registerFor: {_online},
    );
    gh.factory<_i34.ITestRunnerDeterminer>(
      () => _i36.OfflineTestRunnerDeterminer(),
      registerFor: {_offline},
    );
    gh.factory<_i37.IncomeStatementChopperService>(
        () => incomeStatementServiceModule.incomeStatementChopperService);
    gh.factory<_i38.IncomeStatementDao>(
        () => _i38.IncomeStatementDao(gh<_i8.DriftDb>()));
    gh.lazySingleton<_i39.InitializationCubit>(
        () => _i39.InitializationCubit());
    gh.factory<_i40.LanguageCubit>(() => _i40.LanguageCubit());
    gh.lazySingleton<_i41.LoggingInterceptor>(() => _i41.LoggingInterceptor());
    gh.singleton<_i42.NavigationCubit>(_i42.NavigationCubit(
      gh<_i12.IAnalyticsRepository>(),
      gh<_i31.IPollAndDebounce>(),
    ));
    gh.lazySingleton<_i41.NoBodyLoggingInterceptor>(
        () => _i41.NoBodyLoggingInterceptor());
    gh.factory<_i43.OverviewCubit>(() => _i43.OverviewCubit());
    gh.singleton<_i44.QueryExecutor>(databaseModule.queryExecutorOnline);
    gh.lazySingleton<_i45.RouteObserverProvider>(
        () => _i45.RouteObserverProvider());
    gh.lazySingleton<_i46.SharedPrefsProvider>(
      () => _i47.OfflineSharedPrefsProvider(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i46.SharedPrefsProvider>(
      () => _i46.SharedPrefsProvider(),
      registerFor: {_online},
    );
    gh.factory<_i48.StockListingsChopperService>(
        () => stockListingsServiceModule.stockListingsChopperService);
    gh.factory<_i49.StockListingsDao>(
        () => _i49.StockListingsDao(gh<_i8.DriftDb>()));
    gh.lazySingleton<_i50.AnalyticsCubit>(
        () => _i50.AnalyticsCubit(gh<_i12.IAnalyticsRepository>()));
    gh.factory<_i51.BalanceSheetStatementDao>(
        () => _i51.BalanceSheetStatementDao(gh<_i8.DriftDb>()));
    gh.factory<_i52.CashFlowStatementDao>(
        () => _i52.CashFlowStatementDao(gh<_i8.DriftDb>()));
    gh.factory<_i53.ChartDao>(() => _i53.ChartDao(gh<_i8.DriftDb>()));
    gh.factory<_i54.CompanyProfileDao>(
        () => _i54.CompanyProfileDao(gh<_i8.DriftDb>()));
    gh.lazySingleton<_i8.DriftDb>(
      () => _i8.DriftDb(executor: gh<_i44.QueryExecutor>()),
      registerFor: {_online},
    );
    gh.factory<_i55.IBalanceSheetStatementCache>(() =>
        _i56.BalanceSheetStatementCache(gh<_i51.BalanceSheetStatementDao>()));
    gh.lazySingleton<_i57.IBalanceSheetStatementRepository>(
        () => _i58.BalanceSheetStatementRepository(
              gh<_i14.IBalanceSheetStatementService>(),
              gh<_i55.IBalanceSheetStatementCache>(),
            ));
    gh.lazySingleton<_i59.ICacheRepository>(
        () => _i60.CacheRepository(gh<_i17.ICacheService>()));
    gh.factory<_i61.ICashFlowStatementCache>(
        () => _i62.CashFlowStatementCache(gh<_i52.CashFlowStatementDao>()));
    gh.lazySingleton<_i63.ICashFlowStatementRepository>(
        () => _i64.CashFlowStatementRepository(
              gh<_i20.ICashFlowStatementService>(),
              gh<_i61.ICashFlowStatementCache>(),
            ));
    gh.factory<_i65.IChartCache>(() => _i66.ChartCache(gh<_i53.ChartDao>()));
    gh.lazySingleton<_i67.IChartRepository>(() => _i68.MovingAverageRepository(
          gh<_i23.IChartService>(),
          gh<_i65.IChartCache>(),
        ));
    gh.factory<_i69.ICompanyProfileCache>(
        () => _i70.CompanyProfileCache(gh<_i54.CompanyProfileDao>()));
    gh.lazySingleton<_i71.ICompanyProfileRepository>(
        () => _i72.CompanyProfileRepository(
              gh<_i26.ICompanyProfileService>(),
              gh<_i69.ICompanyProfileCache>(),
            ));
    gh.factory<_i73.IIncomeStatementCache>(
        () => _i74.IncomeStatementCache(gh<_i38.IncomeStatementDao>()));
    gh.lazySingleton<_i75.IIncomeStatementRepository>(
        () => _i76.IncomeStatementRepository(
              gh<_i29.IIncomeStatementService>(),
              gh<_i73.IIncomeStatementCache>(),
            ));
    gh.factory<_i29.IIncomeStatementService>(
      () =>
          _i77.IncomeStatementService(gh<_i37.IncomeStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i78.IStockListingsCache>(
        () => _i79.StockListingsCache(gh<_i49.StockListingsDao>()));
    gh.factory<_i80.IStockListingsService>(
      () => _i81.StockListingsService(gh<_i48.StockListingsChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i82.CachingCubit>(() => _i82.CachingCubit(
          gh<_i8.DriftDb>(),
          gh<_i59.ICacheRepository>(),
          gh<_i46.SharedPrefsProvider>(),
        ));
    gh.lazySingleton<_i83.ICompanyRepository>(() => _i84.CompanyRepository(
          gh<_i57.IBalanceSheetStatementRepository>(),
          gh<_i63.ICashFlowStatementRepository>(),
          gh<_i71.ICompanyProfileRepository>(),
          gh<_i75.IIncomeStatementRepository>(),
          gh<_i67.IChartRepository>(),
        ));
    gh.lazySingleton<_i85.IStockListingsRepository>(
        () => _i86.StockListingsRepository(
              gh<_i80.IStockListingsService>(),
              gh<_i78.IStockListingsCache>(),
            ));
    return this;
  }
}

class _$BalanceSheetStatementServiceModule
    extends _i87.BalanceSheetStatementServiceModule {}

class _$CashFlowStatementServiceModule
    extends _i88.CashFlowStatementServiceModule {}

class _$MovingAverageServiceModule extends _i89.MovingAverageServiceModule {}

class _$CompanyProfileServiceModule extends _i90.CompanyProfileServiceModule {}

class _$IncomeStatementServiceModule
    extends _i91.IncomeStatementServiceModule {}

class _$DatabaseModule extends _i92.DatabaseModule {}

class _$StockListingsServiceModule extends _i93.StockListingsServiceModule {}
