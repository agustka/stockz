import 'dart:async';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/repository/i_cache_repository.dart';
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart';

@LazySingleton(as: ICacheRepository)
class CacheRepository implements ICacheRepository {
  final ICacheService _cacheService;

  const CacheRepository(this._cacheService);

  @override
  Future<File> createFile({required String fileName}) async {
    return _cacheService.createFile(fileName: fileName);
  }

  @override
  Future<void> deleteAllCachedFiles() async {
    _cacheService.deleteCachedFiles();
  }
}
