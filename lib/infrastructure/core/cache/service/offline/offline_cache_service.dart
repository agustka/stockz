import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart';
import 'package:stockz/setup.dart';

/// https://dev.azure.com/islandsbanki/IT/_git/API.Contracts?path=/domains/documents/documents-parties.v1.yaml&version=GBmaster
/// Note that this is a "light" (special/custom) document service for Loans (overdraft) - not the general purpose one
@InjectableEnv.offline
@LazySingleton(as: ICacheService)
class OfflineCacheService implements ICacheService {
  @override
  Future deleteCachedFiles() async {}

  @override
  Future<File> createFile({required String fileName}) async {
    return File(fileName);
  }
}
