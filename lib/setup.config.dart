// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:drift/drift.dart' as _i36;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:stockz/application/core/analytics/analytics_cubit.dart' as _i40;
import 'package:stockz/application/core/caching/caching_cubit.dart' as _i51;
import 'package:stockz/application/core/initialization/initialization_cubit.dart'
    as _i31;
import 'package:stockz/application/core/language/language_cubit.dart' as _i32;
import 'package:stockz/application/core/navigation/navigation_cubit.dart'
    as _i34;
import 'package:stockz/application/overview/overview_cubit.dart' as _i35;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_cache.dart'
    as _i44;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_statement_dao.dart'
    as _i41;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart'
    as _i43;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/balance_sheet_statement_repository.dart'
    as _i46;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart'
    as _i45;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_module.dart'
    as _i52;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_service.dart'
    as _i14;
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart'
    as _i4;
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart'
    as _i13;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_cache.dart'
    as _i19;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart'
    as _i42;
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart'
    as _i18;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_module.dart'
    as _i53;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_service.dart'
    as _i21;
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart'
    as _i5;
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart'
    as _i20;
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart'
    as _i6;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service.dart'
    as _i23;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service_module.dart'
    as _i54;
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart'
    as _i22;
import 'package:stockz/infrastructure/core/analytics/repository/analytics_repository.dart'
    as _i12;
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart'
    as _i11;
import 'package:stockz/infrastructure/core/cache/database_definition.dart'
    as _i7;
import 'package:stockz/infrastructure/core/cache/database_module.dart' as _i56;
import 'package:stockz/infrastructure/core/cache/offline/offline_database_definition.dart'
    as _i8;
import 'package:stockz/infrastructure/core/cache/repository/cache_repository.dart'
    as _i48;
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart'
    as _i47;
import 'package:stockz/infrastructure/core/cache/service/cache_service.dart'
    as _i17;
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart'
    as _i15;
import 'package:stockz/infrastructure/core/cache/service/offline/offline_cache_service.dart'
    as _i16;
import 'package:stockz/infrastructure/core/prefs/offline/offline_shared_prefs_provider.dart'
    as _i39;
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart'
    as _i38;
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart'
    as _i3;
import 'package:stockz/infrastructure/core/service/interceptors/headers_request_interceptor.dart'
    as _i10;
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart'
    as _i33;
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart'
    as _i24;
import 'package:stockz/infrastructure/core/service/timer/offline/offline_poll_and_debounce.dart'
    as _i25;
import 'package:stockz/infrastructure/core/service/timer/poll_and_debounce.dart'
    as _i26;
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart'
    as _i27;
import 'package:stockz/infrastructure/core/test_runner_determiner/offline/offline_test_runner_determiner.dart'
    as _i28;
import 'package:stockz/infrastructure/core/test_runner_determiner/test_runner_determiner.dart'
    as _i29;
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart'
    as _i30;
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart'
    as _i49;
import 'package:stockz/infrastructure/income_statement/service/income_statement_module.dart'
    as _i55;
import 'package:stockz/infrastructure/income_statement/service/income_statement_service.dart'
    as _i50;
import 'package:stockz/presentation/core/global_navigator_key.dart' as _i9;
import 'package:stockz/presentation/core/route_observer_provider.dart' as _i37;

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
    final companyProfileServiceModule = _$CompanyProfileServiceModule();
    final incomeStatementServiceModule = _$IncomeStatementServiceModule();
    final databaseModule = _$DatabaseModule();
    gh.lazySingleton<_i3.AuthRequestInterceptor>(
        () => _i3.AuthRequestInterceptor());
    gh.factory<_i4.BalanceSheetStatementChopperService>(() =>
        balanceSheetStatementServiceModule.balanceSheetStatementChopperService);
    gh.factory<_i5.CashFlowStatementChopperService>(
        () => cashFlowStatementServiceModule.cashFlowStatementChopperService);
    gh.factory<_i6.CompanyProfileChopperService>(
        () => companyProfileServiceModule.companyProfileChopperService);
    gh.lazySingleton<_i7.DriftDb>(
      () => _i8.OfflineDriftDb(),
      registerFor: {_offline},
    );
    gh.singleton<_i9.GlobalNavigatorKey>(_i9.GlobalNavigatorKey());
    gh.lazySingleton<_i10.HeadersRequestInterceptor>(
        () => _i10.HeadersRequestInterceptor());
    gh.lazySingleton<_i11.IAnalyticsRepository>(
        () => _i12.AnalyticsRepository());
    gh.factory<_i13.IBalanceSheetStatementService>(
      () => _i14.BalanceSheetStatementService(
          gh<_i4.BalanceSheetStatementChopperService>()),
      registerFor: {_online},
    );
    gh.lazySingleton<_i15.ICacheService>(
      () => _i16.OfflineCacheService(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i15.ICacheService>(
      () => _i17.CacheService(),
      registerFor: {_online},
    );
    gh.factory<_i18.ICashFlowStatementCache>(
        () => _i19.CashFlowStatementCache(gh<InvalidType>()));
    gh.factory<_i20.ICashFlowStatementService>(
      () => _i21.CashFlowStatementService(
          gh<_i5.CashFlowStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i22.ICompanyProfileService>(
      () => _i23.CompanyProfileService(gh<_i6.CompanyProfileChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i24.IPollAndDebounce>(
      () => _i25.OfflinePollAndDebounce(),
      registerFor: {_offline},
    );
    gh.factory<_i24.IPollAndDebounce>(
      () => _i26.PollAndDebounce(),
      registerFor: {_online},
    );
    gh.factory<_i27.ITestRunnerDeterminer>(
      () => _i28.OfflineTestRunnerDeterminer(),
      registerFor: {_offline},
    );
    gh.factory<_i27.ITestRunnerDeterminer>(
      () => _i29.TestRunnerDeterminer(),
      registerFor: {_online},
    );
    gh.factory<_i30.IncomeStatementChopperService>(
        () => incomeStatementServiceModule.incomeStatementChopperService);
    gh.lazySingleton<_i31.InitializationCubit>(
        () => _i31.InitializationCubit());
    gh.factory<_i32.LanguageCubit>(() => _i32.LanguageCubit());
    gh.lazySingleton<_i33.LoggingInterceptor>(() => _i33.LoggingInterceptor());
    gh.singleton<_i34.NavigationCubit>(_i34.NavigationCubit(
      gh<_i11.IAnalyticsRepository>(),
      gh<_i24.IPollAndDebounce>(),
    ));
    gh.lazySingleton<_i33.NoBodyLoggingInterceptor>(
        () => _i33.NoBodyLoggingInterceptor());
    gh.factory<_i35.OverviewCubit>(() => _i35.OverviewCubit());
    gh.singleton<_i36.QueryExecutor>(databaseModule.queryExecutorOnline);
    gh.lazySingleton<_i37.RouteObserverProvider>(
        () => _i37.RouteObserverProvider());
    gh.lazySingleton<_i38.SharedPrefsProvider>(
      () => _i39.OfflineSharedPrefsProvider(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i38.SharedPrefsProvider>(
      () => _i38.SharedPrefsProvider(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i40.AnalyticsCubit>(
        () => _i40.AnalyticsCubit(gh<_i11.IAnalyticsRepository>()));
    gh.factory<_i41.BalanceSheetStatementDao>(
        () => _i41.BalanceSheetStatementDao(gh<_i7.DriftDb>()));
    gh.factory<_i42.CashFlowStatementDao>(
        () => _i42.CashFlowStatementDao(gh<_i7.DriftDb>()));
    gh.lazySingleton<_i7.DriftDb>(
      () => _i7.DriftDb(executor: gh<_i36.QueryExecutor>()),
      registerFor: {_online},
    );
    gh.factory<_i43.IBalanceSheetStatementCache>(() =>
        _i44.BalanceSheetStatementCache(gh<_i41.BalanceSheetStatementDao>()));
    gh.lazySingleton<_i45.IBalanceSheetStatementRepository>(
        () => _i46.BalanceSheetStatementService(
              gh<_i13.IBalanceSheetStatementService>(),
              gh<_i43.IBalanceSheetStatementCache>(),
            ));
    gh.lazySingleton<_i47.ICacheRepository>(
        () => _i48.CacheRepository(gh<_i15.ICacheService>()));
    gh.factory<_i49.IIncomeStatementService>(
      () =>
          _i50.IncomeStatementService(gh<_i30.IncomeStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i51.CachingCubit>(() => _i51.CachingCubit(
          gh<_i7.DriftDb>(),
          gh<_i47.ICacheRepository>(),
          gh<_i38.SharedPrefsProvider>(),
        ));
    return this;
  }
}

class _$BalanceSheetStatementServiceModule
    extends _i52.BalanceSheetStatementServiceModule {}

class _$CashFlowStatementServiceModule
    extends _i53.CashFlowStatementServiceModule {}

class _$CompanyProfileServiceModule extends _i54.CompanyProfileServiceModule {}

class _$IncomeStatementServiceModule
    extends _i55.IncomeStatementServiceModule {}

class _$DatabaseModule extends _i56.DatabaseModule {}
