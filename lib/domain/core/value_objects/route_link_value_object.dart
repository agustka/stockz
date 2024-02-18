import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:stockz/domain/core/navigation/route_link.dart';
import 'package:stockz/domain/core/value_objects/failures/failure.dart';
import 'package:stockz/domain/core/value_objects/value_object.dart';

class RouteLinkValueObject extends ValueObject<List<RouteLink>> {
  List<RouteLink> get get => getOr(const []);

  factory RouteLinkValueObject(String? routeLink) {
    if (routeLink == null) {
      return RouteLinkValueObject.invalid();
    }
    return RouteLinkValueObject._(_parseRoute(payload: routeLink), _validateRoute(routeLink));
  }

  const RouteLinkValueObject._(List<RouteLink> super.input, Failure<String>? super.failure);

  static List<RouteLink> _parseRoute({required String payload}) {
    Map<String, dynamic> data;
    try {
      data = json.decode(payload) as Map<String, dynamic>;
    } catch (_) {
      data = {"route": payload};
    }
    if (!data.containsKey("route")) {
      final List<RouteLink> routes = [RouteLink.pageNotFound()];
      return routes;
    } else {
      final String route = data["route"]?.toString() ?? "";
      final List<String> parts = route.split("/").whereNot((element) => element.isEmpty).toList();
      final List<RouteLink> routes = parts.map((e) => RouteLink.fromLink(e)).toList();
      if (route.startsWith("//")) {
        final RouteLink popToRootRoute = RouteLink.clear();
        routes.insert(0, popToRootRoute);
      }
      return routes;
    }
  }

  factory RouteLinkValueObject.invalid() = _$InvalidRouteLinkValueObject;

  static Failure<String>? _validateRoute(String? routeLinkInput) {
    final routeLinkNonNull = routeLinkInput ?? "";
    if (routeLinkNonNull.isEmpty) {
      return const Failure.invalidValue(message: "Text input must not be null or empty");
    }

    Map<String, dynamic> data;
    try {
      data = json.decode(routeLinkNonNull) as Map<String, dynamic>;
    } catch (_) {
      data = {"route": routeLinkNonNull};
    }
    if (!data.containsKey("route")) {
      return const Failure.invalidValue(message: "route not found");
    }

    return null;
  }
}

class _$InvalidRouteLinkValueObject extends RouteLinkValueObject {
  _$InvalidRouteLinkValueObject()
      : super._([RouteLink.pageNotFound()], const Failure.invalidValue(message: "Null/invalid instance"));
}
