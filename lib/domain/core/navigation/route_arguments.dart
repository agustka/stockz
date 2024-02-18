import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';

@immutable
class RouteArguments extends Equatable {
  final Map<String, dynamic> arguments;

  const RouteArguments(this.arguments);

  const RouteArguments.empty() : arguments = const {};

  @override
  List<Object> get props => [arguments];

  bool containsKey(String key) {
    return arguments.containsKey(key);
  }

  dynamic getDynamic(String key, {bool logError = true}) {
    try {
      return arguments[key];
    } catch (e) {
      if (logError) {
        err("Trying to get $key but page arguments are: ${arguments.keys.join(", ")}");
      }
      return null;
    }
  }

  String? getString(String key) {
    final dynamic value = getDynamic(key);
    if (value == null) {
      return null;
    }
    return value.toString();
  }

  List<String>? getStringList(String key) {
    final dynamic value = getDynamic(key);
    if (value is Iterable) {
      return value.map((e) => e.toString()).toList();
    } else if (value is String) {
      return [value];
    }
    return null;
  }

  bool? getBool(String key) {
    final dynamic value = getDynamic(key);
    if (value is bool) {
      return value;
    } else if (value is String) {
      return value.toLowerCase() == 'true';
    }
    return null;
  }

  int? getInt(String key) {
    final dynamic value = getDynamic(key);
    if (value is int) {
      return value;
    } else if (value is String) {
      return int.tryParse(value);
    }
    return null;
  }

  double? getDouble(String key) {
    final dynamic value = getDynamic(key);
    if (value is double) {
      return value;
    } else if (value is String) {
      return double.tryParse(value);
    }
    return null;
  }

  num? getNum(String key) {
    final dynamic value = getDynamic(key);
    if (value is num) {
      return value;
    } else if (value is String) {
      return num.tryParse(value);
    }
    return null;
  }

  @override
  String toString() {
    return 'RouteArguments(arguments: $arguments)';
  }
}
