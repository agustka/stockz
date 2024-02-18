import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

Future<void>? _isWorking;

/// Clears Shared Preferences preserving predetermined keys
extension SharedPreferencesUtil on SharedPreferences {
  Future<void> clearUserData() async {
    if (_isWorking != null) {
      await _isWorking;
      return clearUserData();
    }

    // lock
    final Completer<void> completer = Completer<void>();
    _isWorking = completer.future;

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.reload();

    /// Add here a SharedPreferences' key that you want to be saved

    final List<String> keysToSave = [];

    final Map<String, dynamic> valuesToSave = {};
    for (final String key in keysToSave) {
      final value = prefs.get(key);
      valuesToSave[key] = value;
    }

    await prefs.clear();

    for (final MapEntry<String, dynamic> entry in valuesToSave.entries) {
      switch (entry.value.runtimeType) {
        case const (bool):
          await prefs.setBool(entry.key, entry.value as bool);

        case const (double):
          await prefs.setDouble(entry.key, entry.value as double);

        case const (int):
          await prefs.setInt(entry.key, entry.value as int);

        case const (String):
          await prefs.setString(entry.key, entry.value as String);

        default:
          break;
      }
    }

    // unlock
    completer.complete();
    _isWorking = null;
  }
}
