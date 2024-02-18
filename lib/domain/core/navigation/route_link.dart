import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:stockz/domain/core/navigation/named_route.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/presentation/core/widgets/dialogs/st_alert_dialog.dart';

enum MainNavTabs {
  overview,
  tab2,
  tab3,
  tab4,
}

extension MainNavTabsExtension on MainNavTabs {
  int get tabIndex {
    switch (this) {
      case MainNavTabs.overview:
        return 0;

      case MainNavTabs.tab2:
        return 1;

      case MainNavTabs.tab3:
        return 2;

      case MainNavTabs.tab4:
        return 3;
    }
  }
}

class RouteLink extends Equatable {
  final NamedRoute route;
  final int tabIndex;
  final String routeAsString;
  final RouteArguments arguments;
  final NavigationType type;
  final bool shouldHideIosTabBar;
  final bool forceOpenInFlutter;

  const RouteLink._({
    required this.route,
    this.type = NavigationType.route,
    this.tabIndex = -1,
    this.routeAsString = "",
    this.arguments = const RouteArguments.empty(),
    this.shouldHideIosTabBar = true,
    this.forceOpenInFlutter = false,
  });

  RouteLink copyWith({NavigationType? type, NamedRoute? route}) {
    return RouteLink._(
      route: route ?? this.route,
      type: type ?? this.type,
      tabIndex: tabIndex,
      routeAsString: routeAsString,
      arguments: arguments,
      shouldHideIosTabBar: shouldHideIosTabBar,
      forceOpenInFlutter: forceOpenInFlutter,
    );
  }

  factory RouteLink.none() {
    return RouteLink._(route: NamedRoute.none(), type: NavigationType.invalid);
  }

  bool get isPop => type == NavigationType.pop;

  bool get isReplace => type == NavigationType.replace;

  bool get isReset => type == NavigationType.reset;

  bool get isPushAndPopTo => type == NavigationType.pushAndPopTo;

  @override
  List<Object?> get props => [
    route,
    tabIndex,
    routeAsString,
    arguments,
    type,
    shouldHideIosTabBar,
    forceOpenInFlutter,
  ];

  @override
  String toString() {
    return "route: $route, tabIndex: $tabIndex, routeAsString: $routeAsString, type: $type, shouldHideIosTabBar: $shouldHideIosTabBar, forceOpenInFlutter: $forceOpenInFlutter, arguments: $arguments";
  }

  String toJsonString() {
    return '{"route": "${route.name}", "arguments": "$arguments", "type": "$type", "tabIndex": $tabIndex';
  }

  String getRouteName() {
    if (route.name != "./name") {
      return route.name;
    }
    return "";
  }

  factory RouteLink.fromString(String input) {
    try {
      final Map<String, dynamic> obj = json.decode(input) as Map<String, dynamic>;

      final RouteArguments args =
      RouteArguments(obj.containsKey("arguments") ? obj["arguments"] as Map<String, dynamic> : const {});
      final String routeAsString = obj["route"] as String;
      NamedRoute namedRoute = NamedRoute.parse(routeAsString);

      if (namedRoute.name.isEmpty == true) {
        namedRoute = NamedRoute.pageNotFound();
        err("The page ${obj["route"]} was not found!");
      }
      return RouteLink._(
        route: namedRoute,
        routeAsString: routeAsString,
        arguments: args,
      );
    } catch (e) {
      err(e);
      throw Exception('invalid route link');
    }
  }

  factory RouteLink.raw({
    required NamedRoute route,
    required String routeAsString,
    required String type,
    required RouteArguments arguments,
  }) {
    return RouteLink._(
      route: route,
      routeAsString: routeAsString,
      type: _parseType(type),
      arguments: arguments,
    );
  }

  factory RouteLink.pop({NamedRoute? popTo, NamedRoute? popToAfter}) {
    assert(!(popTo != null && popToAfter != null), "popTo and popToAfter can't both be set at the same time.");
    final Map<String, dynamic> args = {};
    if (popTo != null) {
      args["popTo"] = popTo;
    }
    if (popToAfter != null) {
      args["popToAfter"] = popToAfter;
    }
    return RouteLink._(
      route: popTo ?? popToAfter ?? NamedRoute.none(),
      type: NavigationType.pop,
      arguments: RouteArguments(args),
    );
  }

  factory RouteLink.pushAndPopTo({
    required NamedRoute route,
    required NamedRoute popTo,
    required RouteArguments arguments,
  }) {
    return RouteLink._(
      route: route,
      type: NavigationType.pushAndPopTo,
      arguments: RouteArguments({
        "popTo": popTo,
        ...arguments.arguments,
      }),
    );
  }

  factory RouteLink.clear() {
    return RouteLink._(
      route: NamedRoute.root(),
      type: NavigationType.reset,
    );
  }

  factory RouteLink.pageNotFound({bool dueToPageBeingHidden = false}) {
    return RouteLink._(
      route: NamedRoute.pageNotFound(),
      arguments: RouteArguments({"isHidden": dueToPageBeingHidden}),
    );
  }

  factory RouteLink.switchTab({required int tabIndex, required RouteArguments arguments}) {
    return RouteLink._(
      route: NamedRoute.root(),
      tabIndex: tabIndex,
      arguments: arguments,
      type: NavigationType.tabSwitch,
    );
  }

  factory RouteLink.alertDialog({required AlertDialogData data, bool shouldHideIosTabBar = true}) {
    return RouteLink._(
      route: NamedRoute.alertDialog(),
      arguments: RouteArguments({"alertDialogData": data}),
      shouldHideIosTabBar: shouldHideIosTabBar,
    );
  }

  factory RouteLink.fromLink(String link) {
    final List<String> elements = link.split("?");
    if (elements.isEmpty) {
      return RouteLink.pageNotFound();
    }
    final NamedRoute route = NamedRoute.parse("/${elements.first}");

    final Map<String, dynamic> map = {};
    if (elements.length > 1) {
      final List<String> queryStringElements = elements[1].split("&");
      for (final String element in queryStringElements) {
        final List<String> parts = element.split("=");
        if (parts.length != 2) {
          continue;
        }
        final String value = Uri.decodeFull(parts[1]);
        final bool isJson = value.startsWith("{") && value.endsWith("}");
        final List<String> checkIsList = value.split(",");
        if (checkIsList.length == 1 || isJson) {
          map[parts.first] = Uri.decodeFull(parts[1]);
        } else {
          map[parts.first] = checkIsList;
        }
      }
    }

    if (elements.length == 1) {
      return RouteLink._(route: route);
    }

    return RouteLink._(route: route, arguments: RouteArguments(map));
  }

  static NavigationType _parseType(String input) {
    switch (input) {
      case "reset":
        return NavigationType.reset;

      case "tabSwitch":
        return NavigationType.tabSwitch;

      default:
        return NavigationType.route;
    }
  }
}

enum NavigationType {
  pop,
  replace,
  pushAndPopTo,
  reset,
  route,
  tabSwitch,
  invalid,
}
