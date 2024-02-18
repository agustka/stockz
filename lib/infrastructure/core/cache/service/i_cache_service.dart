import 'dart:io';

abstract interface class ICacheService {
  Future deleteCachedFiles();

  Future<File> createFile({required String fileName});
}
