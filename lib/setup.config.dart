// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:drift/drift.dart' as _i38;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stockz/application/core/analytics/analytics_cubit.dart' as _i42;
import 'package:stockz/application/core/caching/caching_cubit.dart' as _i69;
import 'package:stockz/application/core/initialization/initialization_cubit.dart'
    as _i33;
import 'package:stockz/application/core/language/language_cubit.dart' as _i34;
import 'package:stockz/application/core/navigation/navigation_cubit.dart'
    as _i36;
import 'package:stockz/application/overview/overview_cubit.dart' as _i37;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_cache.dart'
    as _i48;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_statement_dao.dart'
    as _i43;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart'
    as _i47;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/balance_sheet_statement_repository.dart'
    as _i50;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart'
    as _i49;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_module.dart'
    as _i74;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_service.dart'
    as _i15;
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart'
    as _i4;
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart'
    as _i14;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_cache.dart'
    as _i54;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart'
    as _i44;
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart'
    as _i53;
import 'package:stockz/infrastructure/cash_flow_statement/repository/cash_flow_statement_repository.dart'
    as _i56;
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart'
    as _i55;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_module.dart'
    as _i75;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_service.dart'
    as _i20;
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart'
    as _i5;
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart'
    as _i19;
import 'package:stockz/infrastructure/chart/cache/chart_cache.dart' as _i58;
import 'package:stockz/infrastructure/chart/cache/chart_dao.dart' as _i45;
import 'package:stockz/infrastructure/chart/cache/i_chart_cache.dart' as _i57;
import 'package:stockz/infrastructure/chart/repository/chart_repository.dart'
    as _i60;
import 'package:stockz/infrastructure/chart/repository/i_chart_repository.dart'
    as _i59;
import 'package:stockz/infrastructure/chart/service/chart_service.dart' as _i22;
import 'package:stockz/infrastructure/chart/service/chopper/chart_chopper_service.dart'
    as _i6;
import 'package:stockz/infrastructure/chart/service/i_chart_service.dart'
    as _i21;
import 'package:stockz/infrastructure/chart/service/moving_average_service_module.dart'
    as _i76;
import 'package:stockz/infrastructure/company/repository/company_repository.dart'
    as _i73;
import 'package:stockz/infrastructure/company/repository/i_company_repository.dart'
    as _i72;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_cache.dart'
    as _i62;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_dao.dart'
    as _i46;
import 'package:stockz/infrastructure/company_profile/cache/i_company_profile_cache.dart'
    as _i61;
import 'package:stockz/infrastructure/company_profile/repository/company_profile_repository.dart'
    as _i64;
import 'package:stockz/infrastructure/company_profile/repository/i_company_profile_repository.dart'
    as _i63;
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart'
    as _i7;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service.dart'
    as _i24;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service_module.dart'
    as _i77;
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart'
    as _i23;
import 'package:stockz/infrastructure/core/analytics/repository/analytics_repository.dart'
    as _i13;
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart'
    as _i12;
import 'package:stockz/infrastructure/core/cache/database_definition.dart'
    as _i8;
import 'package:stockz/infrastructure/core/cache/database_module.dart' as _i79;
import 'package:stockz/infrastructure/core/cache/offline/offline_database_definition.dart'
    as _i9;
import 'package:stockz/infrastructure/core/cache/repository/cache_repository.dart'
    as _i52;
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart'
    as _i51;
import 'package:stockz/infrastructure/core/cache/service/cache_service.dart'
    as _i17;
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart'
    as _i16;
import 'package:stockz/infrastructure/core/cache/service/offline/offline_cache_service.dart'
    as _i18;
import 'package:stockz/infrastructure/core/prefs/offline/offline_shared_prefs_provider.dart'
    as _i41;
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart'
    as _i40;
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart'
    as _i3;
import 'package:stockz/infrastructure/core/service/interceptors/headers_request_interceptor.dart'
    as _i11;
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart'
    as _i35;
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart'
    as _i25;
import 'package:stockz/infrastructure/core/service/timer/offline/offline_poll_and_debounce.dart'
    as _i27;
import 'package:stockz/infrastructure/core/service/timer/poll_and_debounce.dart'
    as _i26;
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart'
    as _i28;
import 'package:stockz/infrastructure/core/test_runner_determiner/offline/offline_test_runner_determiner.dart'
    as _i30;
import 'package:stockz/infrastructure/core/test_runner_determiner/test_runner_determiner.dart'
    as _i29;
import 'package:stockz/infrastructure/income_statement/cache/i_income_statement_cache.dart'
    as _i65;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_cache.dart'
    as _i66;
import 'package:stockz/infrastructure/income_statement/cache/income_statement_dao.dart'
    as _i32;
import 'package:stockz/infrastructure/income_statement/repository/i_income_statement_repository.dart'
    as _i70;
import 'package:stockz/infrastructure/income_statement/repository/income_statement_repository.dart'
    as _i71;
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart'
    as _i31;
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart'
    as _i67;
import 'package:stockz/infrastructure/income_statement/service/income_statement_module.dart'
    as _i78;
import 'package:stockz/infrastructure/income_statement/service/income_statement_service.dart'
    as _i68;
import 'package:stockz/presentation/core/global_navigator_key.dart' as _i10;
import 'package:stockz/presentation/core/route_observer_provider.dart' as _i39;

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
    gh.lazySingleton<_i16.ICacheService>(
      () => _i17.CacheService(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i16.ICacheService>(
      () => _i18.OfflineCacheService(),
      registerFor: {_offline},
    );
    gh.factory<_i19.ICashFlowStatementService>(
      () => _i20.CashFlowStatementService(
          gh<_i5.CashFlowStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i21.IChartService>(
      () => _i22.ChartService(gh<_i6.ChartChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i23.ICompanyProfileService>(
      () => _i24.CompanyProfileService(gh<_i7.CompanyProfileChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i25.IPollAndDebounce>(
      () => _i26.PollAndDebounce(),
      registerFor: {_online},
    );
    gh.factory<_i25.IPollAndDebounce>(
      () => _i27.OfflinePollAndDebounce(),
      registerFor: {_offline},
    );
    gh.factory<_i28.ITestRunnerDeterminer>(
      () => _i29.TestRunnerDeterminer(),
      registerFor: {_online},
    );
    gh.factory<_i28.ITestRunnerDeterminer>(
      () => _i30.OfflineTestRunnerDeterminer(),
      registerFor: {_offline},
    );
    gh.factory<_i31.IncomeStatementChopperService>(
        () => incomeStatementServiceModule.incomeStatementChopperService);
    gh.factory<_i32.IncomeStatementDao>(
        () => _i32.IncomeStatementDao(gh<_i8.DriftDb>()));
    gh.lazySingleton<_i33.InitializationCubit>(
        () => _i33.InitializationCubit());
    gh.factory<_i34.LanguageCubit>(() => _i34.LanguageCubit());
    gh.lazySingleton<_i35.LoggingInterceptor>(() => _i35.LoggingInterceptor());
    gh.singleton<_i36.NavigationCubit>(_i36.NavigationCubit(
      gh<_i12.IAnalyticsRepository>(),
      gh<_i25.IPollAndDebounce>(),
    ));
    gh.lazySingleton<_i35.NoBodyLoggingInterceptor>(
        () => _i35.NoBodyLoggingInterceptor());
    gh.factory<_i37.OverviewCubit>(() => _i37.OverviewCubit());
    gh.singleton<_i38.QueryExecutor>(databaseModule.queryExecutorOnline);
    gh.lazySingleton<_i39.RouteObserverProvider>(
        () => _i39.RouteObserverProvider());
    gh.lazySingleton<_i40.SharedPrefsProvider>(
      () => _i41.OfflineSharedPrefsProvider(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i40.SharedPrefsProvider>(
      () => _i40.SharedPrefsProvider(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i42.AnalyticsCubit>(
        () => _i42.AnalyticsCubit(gh<_i12.IAnalyticsRepository>()));
    gh.factory<_i43.BalanceSheetStatementDao>(
        () => _i43.BalanceSheetStatementDao(gh<_i8.DriftDb>()));
    gh.factory<_i44.CashFlowStatementDao>(
        () => _i44.CashFlowStatementDao(gh<_i8.DriftDb>()));
    gh.factory<_i45.ChartDao>(() => _i45.ChartDao(gh<_i8.DriftDb>()));
    gh.factory<_i46.CompanyProfileDao>(
        () => _i46.CompanyProfileDao(gh<_i8.DriftDb>()));
    gh.lazySingleton<_i8.DriftDb>(
      () => _i8.DriftDb(executor: gh<_i38.QueryExecutor>()),
      registerFor: {_online},
    );
    gh.factory<_i47.IBalanceSheetStatementCache>(() =>
        _i48.BalanceSheetStatementCache(gh<_i43.BalanceSheetStatementDao>()));
    gh.lazySingleton<_i49.IBalanceSheetStatementRepository>(
        () => _i50.BalanceSheetStatementRepository(
              gh<_i14.IBalanceSheetStatementService>(),
              gh<_i47.IBalanceSheetStatementCache>(),
            ));
    gh.lazySingleton<_i51.ICacheRepository>(
        () => _i52.CacheRepository(gh<_i16.ICacheService>()));
    gh.factory<_i53.ICashFlowStatementCache>(
        () => _i54.CashFlowStatementCache(gh<_i44.CashFlowStatementDao>()));
    gh.lazySingleton<_i55.ICashFlowStatementRepository>(
        () => _i56.CashFlowStatementRepository(
              gh<_i19.ICashFlowStatementService>(),
              gh<_i53.ICashFlowStatementCache>(),
            ));
    gh.factory<_i57.IChartCache>(() => _i58.ChartCache(gh<_i45.ChartDao>()));
    gh.lazySingleton<_i59.IChartRepository>(() => _i60.MovingAverageRepository(
          gh<_i21.IChartService>(),
          gh<_i57.IChartCache>(),
        ));
    gh.factory<_i61.ICompanyProfileCache>(
        () => _i62.CompanyProfileCache(gh<_i46.CompanyProfileDao>()));
    gh.lazySingleton<_i63.ICompanyProfileRepository>(
        () => _i64.CompanyProfileRepository(
              gh<_i23.ICompanyProfileService>(),
              gh<_i61.ICompanyProfileCache>(),
            ));
    gh.factory<_i65.IIncomeStatementCache>(
        () => _i66.IncomeStatementCache(gh<_i32.IncomeStatementDao>()));
    gh.factory<_i67.IIncomeStatementService>(
      () =>
          _i68.IncomeStatementService(gh<_i31.IncomeStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i69.CachingCubit>(() => _i69.CachingCubit(
          gh<_i8.DriftDb>(),
          gh<_i51.ICacheRepository>(),
          gh<_i40.SharedPrefsProvider>(),
        ));
    gh.lazySingleton<_i70.IIncomeStatementRepository>(
        () => _i71.IncomeStatementRepository(
              gh<_i67.IIncomeStatementService>(),
              gh<_i65.IIncomeStatementCache>(),
            ));
    gh.lazySingleton<_i72.ICompanyRepository>(() => _i73.CompanyRepository(
          gh<_i49.IBalanceSheetStatementRepository>(),
          gh<_i55.ICashFlowStatementRepository>(),
          gh<_i63.ICompanyProfileRepository>(),
          gh<_i70.IIncomeStatementRepository>(),
          gh<_i59.IChartRepository>(),
        ));
    return this;
  }
}

class _$BalanceSheetStatementServiceModule
    extends _i74.BalanceSheetStatementServiceModule {}

class _$CashFlowStatementServiceModule
    extends _i75.CashFlowStatementServiceModule {}

class _$MovingAverageServiceModule extends _i76.MovingAverageServiceModule {}

class _$CompanyProfileServiceModule extends _i77.CompanyProfileServiceModule {}

class _$IncomeStatementServiceModule
    extends _i78.IncomeStatementServiceModule {}

class _$DatabaseModule extends _i79.DatabaseModule {}
