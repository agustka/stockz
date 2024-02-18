import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/database_definition.dart';
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart';

part 'caching_state.dart';

@injectable
class CachingCubit extends Cubit<CachingState> {
  final ICacheRepository _cacheRepo;
  final SharedPrefsProvider _prefs;

  final DriftDb _database;
  final String _lastCheckIn = "jksi83Xidjz";
  final int _maxCacheTime = 24;

  CachingCubit(
      this._database,
      this._cacheRepo,
      this._prefs,
      ) : super(const CachingState());

  Future<void> init() async {
    try {
      final SharedPrefsWrapper prefs = await _prefs.getInstance();
      if (prefs.containsKey(_lastCheckIn)) {
        final DateTime lastUsed = DateTime.fromMillisecondsSinceEpoch(
          prefs.getInt(_lastCheckIn) ?? DateTime.now().millisecondsSinceEpoch,
        );
        final Duration delta = DateTime.now().difference(lastUsed);
        if (delta.inHours >= _maxCacheTime) {
          clearCache();
        }
      }
      prefs.setInt(_lastCheckIn, DateTime.now().millisecondsSinceEpoch);
    } catch (e) {
      err(e);
    }
  }

  Future<void> clearCache() async {
    await _database.purge();
    await _cacheRepo.deleteAllCachedFiles();
  }

  @override
  @mustCallSuper
  Future<void> close() async {
    super.close();
  }
}
