import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:stockz/infrastructure/core/cache/service/i_cache_service.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@LazySingleton(as: ICacheService)
class CacheService implements ICacheService {
  static const String _isbFolderName = "isb.files.cache";

  @override
  Future deleteCachedFiles() async {
    _deletePreMigrationCachedFiles();
    _deleteCachedFiles();
  }

  @override
  Future<File> createFile({required String fileName}) async {
    final Directory isbCacheFolder = await _createIsbCachedFolder();
    final File file = File("${isbCacheFolder.path}/$fileName");
    await file.parent.create();

    return file;
  }

  Future _deleteCachedFiles() async {}

  void _deleteFileIfPdf(FileSystemEntity file) {
    try {
      final String fileName = file.path.split(Platform.pathSeparator).last;
      final String fileNameEnding = fileName.split(".").last;
      final String fileNameEndingLowerCased = fileNameEnding.toLowerCase();
      if (fileNameEndingLowerCased.contains("pdf")) {
        file.delete();
      }
    } catch (ex) {
      err("_deleteFileIfPdf: Error deleting file: $ex");
    }
  }

  Future<void> _deletePreMigrationCachedFiles() async {
    try {
      final Directory dir = await getTemporaryDirectory();
      final List<FileSystemEntity> files = dir.listSync(recursive: true);
      for (final FileSystemEntity file in files) {
        {
          if (await FileSystemEntity.isDirectory(file.path)) {
            final Directory directory = Directory(file.path);
            _deletePdfFilesFrom(directory);
          } else {
            if (await FileSystemEntity.isFile(file.path)) {
              _deleteFileIfPdf(file);
            }
          }
        }
      }
    } catch (ex) {
      err("Error deleting pre-migration cached file: $ex");
    }
  }

  Future<Directory> _createIsbCachedFolder() async {
    final Directory dir = await getTemporaryDirectory();
    final Directory isbCacheFolder = Directory("${dir.path}/$_isbFolderName");
    return isbCacheFolder;
  }
}
