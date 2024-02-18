import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@singleton
class GlobalNavigatorKey {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  BuildContext? get context => key.currentContext;
}
