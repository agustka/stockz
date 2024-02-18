import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stockz/domain/core/extensions/shared_preferences_extensions.dart';
import 'package:stockz/setup.dart';

@InjectableEnv.online
@LazySingleton()
class SharedPrefsProvider {
  Future<SharedPrefsWrapper> getInstance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return SharedPrefsWrapper(prefs);
  }
}

class SharedPrefsWrapper {
  final SharedPreferences _prefs;

  const SharedPrefsWrapper(this._prefs);

  bool containsKey(String key) {
    return _prefs.containsKey(key);
  }

  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  String? getString(String key) {
    return _prefs.getString(key);
  }

  Future setString(String key, String value) {
    return _prefs.setString(key, value);
  }

  Future setBool(String key, bool value) {
    return _prefs.setBool(key, value);
  }

  Future setInt(String key, int value) {
    return _prefs.setInt(key, value);
  }

  Future clearUserData() {
    return _prefs.clearUserData();
  }
}
