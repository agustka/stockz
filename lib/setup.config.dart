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
import 'package:stockz/application/core/analytics/analytics_cubit.dart' as _i38;
import 'package:stockz/application/core/caching/caching_cubit.dart' as _i56;
import 'package:stockz/application/core/initialization/initialization_cubit.dart'
    as _i29;
import 'package:stockz/application/core/language/language_cubit.dart' as _i30;
import 'package:stockz/application/core/navigation/navigation_cubit.dart'
    as _i32;
import 'package:stockz/application/overview/overview_cubit.dart' as _i33;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_cache.dart'
    as _i43;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/balance_sheet_statement_dao.dart'
    as _i39;
import 'package:stockz/infrastructure/balance_sheet_statement/cache/i_balance_sheet_cache.dart'
    as _i42;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/balance_sheet_statement_repository.dart'
    as _i45;
import 'package:stockz/infrastructure/balance_sheet_statement/repository/i_balance_sheet_statement_repository.dart'
    as _i44;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_module.dart'
    as _i57;
import 'package:stockz/infrastructure/balance_sheet_statement/service/balance_sheet_statement_service.dart'
    as _i14;
import 'package:stockz/infrastructure/balance_sheet_statement/service/chopper/balance_sheet_statement_chopper_service.dart'
    as _i4;
import 'package:stockz/infrastructure/balance_sheet_statement/service/i_balance_sheet_statement_service.dart'
    as _i13;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_cache.dart'
    as _i49;
import 'package:stockz/infrastructure/cash_flow_statement/cache/cash_flow_statement_dao.dart'
    as _i40;
import 'package:stockz/infrastructure/cash_flow_statement/cache/i_cash_flow_statement_cache.dart'
    as _i48;
import 'package:stockz/infrastructure/cash_flow_statement/repository/cash_flow_statement_repository.dart'
    as _i51;
import 'package:stockz/infrastructure/cash_flow_statement/repository/i_cash_flow_statement_repository.dart'
    as _i50;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_module.dart'
    as _i58;
import 'package:stockz/infrastructure/cash_flow_statement/service/cash_flow_statement_service.dart'
    as _i19;
import 'package:stockz/infrastructure/cash_flow_statement/service/chopper/cash_flow_statement_chopper_service.dart'
    as _i5;
import 'package:stockz/infrastructure/cash_flow_statement/service/i_cash_flow_statement_service.dart'
    as _i18;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_cache.dart'
    as _i53;
import 'package:stockz/infrastructure/company_profile/cache/company_profile_dao.dart'
    as _i41;
import 'package:stockz/infrastructure/company_profile/cache/i_company_profile_cache.dart'
    as _i52;
import 'package:stockz/infrastructure/company_profile/service/chopper/company_profile_chopper_service.dart'
    as _i6;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service.dart'
    as _i21;
import 'package:stockz/infrastructure/company_profile/service/company_profile_service_module.dart'
    as _i59;
import 'package:stockz/infrastructure/company_profile/service/i_company_profile_service.dart'
    as _i20;
import 'package:stockz/infrastructure/core/analytics/repository/analytics_repository.dart'
    as _i12;
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart'
    as _i11;
import 'package:stockz/infrastructure/core/cache/database_definition.dart'
    as _i7;
import 'package:stockz/infrastructure/core/cache/database_module.dart' as _i61;
import 'package:stockz/infrastructure/core/cache/offline/offline_database_definition.dart'
    as _i8;
import 'package:stockz/infrastructure/core/cache/repository/cache_repository.dart'
    as _i47;
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart'
    as _i46;
import 'package:stockz/infrastructure/core/cache/service/cache_service.dart'
    as _i16;
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart'
    as _i15;
import 'package:stockz/infrastructure/core/cache/service/offline/offline_cache_service.dart'
    as _i17;
import 'package:stockz/infrastructure/core/prefs/offline/offline_shared_prefs_provider.dart'
    as _i37;
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart'
    as _i36;
import 'package:stockz/infrastructure/core/service/interceptors/auth_request_interceptor.dart'
    as _i3;
import 'package:stockz/infrastructure/core/service/interceptors/headers_request_interceptor.dart'
    as _i10;
import 'package:stockz/infrastructure/core/service/interceptors/logging_interceptor.dart'
    as _i31;
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart'
    as _i22;
import 'package:stockz/infrastructure/core/service/timer/offline/offline_poll_and_debounce.dart'
    as _i23;
import 'package:stockz/infrastructure/core/service/timer/poll_and_debounce.dart'
    as _i24;
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart'
    as _i25;
import 'package:stockz/infrastructure/core/test_runner_determiner/offline/offline_test_runner_determiner.dart'
    as _i27;
import 'package:stockz/infrastructure/core/test_runner_determiner/test_runner_determiner.dart'
    as _i26;
import 'package:stockz/infrastructure/income_statement/service/chopper/income_statement_chopper_service.dart'
    as _i28;
import 'package:stockz/infrastructure/income_statement/service/i_income_statement_service.dart'
    as _i54;
import 'package:stockz/infrastructure/income_statement/service/income_statement_module.dart'
    as _i60;
import 'package:stockz/infrastructure/income_statement/service/income_statement_service.dart'
    as _i55;
import 'package:stockz/presentation/core/global_navigator_key.dart' as _i9;
import 'package:stockz/presentation/core/route_observer_provider.dart' as _i35;

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
      () => _i16.CacheService(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i15.ICacheService>(
      () => _i17.OfflineCacheService(),
      registerFor: {_offline},
    );
    gh.factory<_i18.ICashFlowStatementService>(
      () => _i19.CashFlowStatementService(
          gh<_i5.CashFlowStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i20.ICompanyProfileService>(
      () => _i21.CompanyProfileService(gh<_i6.CompanyProfileChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i22.IPollAndDebounce>(
      () => _i23.OfflinePollAndDebounce(),
      registerFor: {_offline},
    );
    gh.factory<_i22.IPollAndDebounce>(
      () => _i24.PollAndDebounce(),
      registerFor: {_online},
    );
    gh.factory<_i25.ITestRunnerDeterminer>(
      () => _i26.TestRunnerDeterminer(),
      registerFor: {_online},
    );
    gh.factory<_i25.ITestRunnerDeterminer>(
      () => _i27.OfflineTestRunnerDeterminer(),
      registerFor: {_offline},
    );
    gh.factory<_i28.IncomeStatementChopperService>(
        () => incomeStatementServiceModule.incomeStatementChopperService);
    gh.lazySingleton<_i29.InitializationCubit>(
        () => _i29.InitializationCubit());
    gh.factory<_i30.LanguageCubit>(() => _i30.LanguageCubit());
    gh.lazySingleton<_i31.LoggingInterceptor>(() => _i31.LoggingInterceptor());
    gh.singleton<_i32.NavigationCubit>(_i32.NavigationCubit(
      gh<_i11.IAnalyticsRepository>(),
      gh<_i22.IPollAndDebounce>(),
    ));
    gh.lazySingleton<_i31.NoBodyLoggingInterceptor>(
        () => _i31.NoBodyLoggingInterceptor());
    gh.factory<_i33.OverviewCubit>(() => _i33.OverviewCubit());
    gh.singleton<_i34.QueryExecutor>(databaseModule.queryExecutorOnline);
    gh.lazySingleton<_i35.RouteObserverProvider>(
        () => _i35.RouteObserverProvider());
    gh.lazySingleton<_i36.SharedPrefsProvider>(
      () => _i36.SharedPrefsProvider(),
      registerFor: {_online},
    );
    gh.lazySingleton<_i36.SharedPrefsProvider>(
      () => _i37.OfflineSharedPrefsProvider(),
      registerFor: {_offline},
    );
    gh.lazySingleton<_i38.AnalyticsCubit>(
        () => _i38.AnalyticsCubit(gh<_i11.IAnalyticsRepository>()));
    gh.factory<_i39.BalanceSheetStatementDao>(
        () => _i39.BalanceSheetStatementDao(gh<_i7.DriftDb>()));
    gh.factory<_i40.CashFlowStatementDao>(
        () => _i40.CashFlowStatementDao(gh<_i7.DriftDb>()));
    gh.factory<_i41.CompanyProfileDao>(
        () => _i41.CompanyProfileDao(gh<_i7.DriftDb>()));
    gh.lazySingleton<_i7.DriftDb>(
      () => _i7.DriftDb(executor: gh<_i34.QueryExecutor>()),
      registerFor: {_online},
    );
    gh.factory<_i42.IBalanceSheetStatementCache>(() =>
        _i43.BalanceSheetStatementCache(gh<_i39.BalanceSheetStatementDao>()));
    gh.lazySingleton<_i44.IBalanceSheetStatementRepository>(
        () => _i45.BalanceSheetStatementService(
              gh<_i13.IBalanceSheetStatementService>(),
              gh<_i42.IBalanceSheetStatementCache>(),
            ));
    gh.lazySingleton<_i46.ICacheRepository>(
        () => _i47.CacheRepository(gh<_i15.ICacheService>()));
    gh.factory<_i48.ICashFlowStatementCache>(
        () => _i49.CashFlowStatementCache(gh<_i40.CashFlowStatementDao>()));
    gh.lazySingleton<_i50.ICashFlowStatementRepository>(
        () => _i51.CashFlowStatementService(
              gh<_i18.ICashFlowStatementService>(),
              gh<_i48.ICashFlowStatementCache>(),
            ));
    gh.factory<_i52.ICompanyProfileCache>(
        () => _i53.CompanyProfileCache(gh<_i41.CompanyProfileDao>()));
    gh.factory<_i54.IIncomeStatementService>(
      () =>
          _i55.IncomeStatementService(gh<_i28.IncomeStatementChopperService>()),
      registerFor: {_online},
    );
    gh.factory<_i56.CachingCubit>(() => _i56.CachingCubit(
          gh<_i7.DriftDb>(),
          gh<_i46.ICacheRepository>(),
          gh<_i36.SharedPrefsProvider>(),
        ));
    return this;
  }
}

class _$BalanceSheetStatementServiceModule
    extends _i57.BalanceSheetStatementServiceModule {}

class _$CashFlowStatementServiceModule
    extends _i58.CashFlowStatementServiceModule {}

class _$CompanyProfileServiceModule extends _i59.CompanyProfileServiceModule {}

class _$IncomeStatementServiceModule
    extends _i60.IncomeStatementServiceModule {}

class _$DatabaseModule extends _i61.DatabaseModule {}
