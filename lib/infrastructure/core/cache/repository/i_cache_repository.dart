import 'dart:io';

abstract class ICacheRepository {
  Future<File> createFile({required String fileName});

  Future<void> deleteAllCachedFiles();
}
