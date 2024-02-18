import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RouteObserverProvider {
  final RouteObserver _observer = RouteObserver();

  RouteObserver get() => _observer;
}
