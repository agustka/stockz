import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';

class DeepLinkController extends ValueNotifier<RouteArguments> {
  RouteArguments get arguments => value;

  set arguments(RouteArguments arguments) => value = arguments;

  DeepLinkController(super.initialValue);
}
