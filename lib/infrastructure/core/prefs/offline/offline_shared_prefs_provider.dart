import 'package:injectable/injectable.dart';
import 'package:stockz/infrastructure/core/prefs/shared_prefs_wrapper.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.offline
@LazySingleton(as: SharedPrefsProvider)
class OfflineSharedPrefsProvider implements SharedPrefsProvider {
  @override
  Future<SharedPrefsWrapper> getInstance() async {
    return OfflineSharedPrefsWrapper();
  }
}

class OfflineSharedPrefsWrapper implements SharedPrefsWrapper {
  final Map<dynamic, dynamic> _map = {};

  OfflineSharedPrefsWrapper();

  @override
  bool containsKey(String key) {
    return _map.containsKey(key);
  }

  @override
  int? getInt(String key) {
    return _map[key] as int?;
  }

  @override
  bool? getBool(String key) {
    return _map[key] as bool?;
  }

  @override
  String? getString(String key) {
    return _map[key] as String?;
  }

  @override
  Future setString(String key, String value) async {
    _map[key] = value;
  }

  @override
  Future setBool(String key, bool value) async {
    _map[key] = value;
  }

  @override
  Future setInt(String key, int value) async {
    _map[key] = value;
  }

  @override
  Future clearUserData() async {
    _map.clear();
  }
}
