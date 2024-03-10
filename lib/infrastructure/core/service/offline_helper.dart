import 'package:flutter/services.dart';

mixin OfflineHelper {
  String get symbolReplacement => "%%symbol%%";

  Future<String> getFileData(String path) {
    return rootBundle.loadString(path, cache: false);
  }

  Future<ByteData> getFileByteData(String path) {
    return rootBundle.load(path);
  }
}
