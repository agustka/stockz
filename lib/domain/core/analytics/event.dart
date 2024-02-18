import 'package:flutter/foundation.dart';
import 'package:stockz/domain/core/navigation/route_link.dart';

@immutable
class Event {
  final String action;
  final String event;
  final String argument;
  final String argumentName;
  final dynamic error;
  final StackTrace? stacktrace;
  final bool irritatesUser;
  final double irritationEscalation;
  final bool sendToAdobe;

  @override
  String toString() {
    return "$action. IrritatesUser: $irritatesUser. IrritationEscalation: $irritationEscalation";
  }

  String get eventInSnakeCaseNotation {
    return event.toLowerCase().replaceAll("-", "_");
  }

  const Event.create({
    required this.action,
    required this.event,
    required this.irritatesUser,
    this.irritationEscalation = 1,
    this.argument = "",
    this.argumentName = "",
    this.error,
    this.stacktrace,
    this.sendToAdobe = false,
  });

  String toJsonString() {
    String eventUse = event;
    if (eventUse.length > 40) {
      eventUse = event.substring(0, 40);
    }
    return '{"event":"$action","action":"$eventUse","argument":"${argument.replaceAll('"', '')}","argumentName":"${argumentName.replaceAll('"', '')}"}';
  }

  factory Event.error({required dynamic error, required StackTrace? stacktrace}) {
    String errorClean;
    if (error is FlutterErrorDetails) {
      errorClean = error.exception.toString();
    } else {
      errorClean = error?.toString().replaceAll('"', "'").replaceAll("{", "").replaceAll("}", "") ?? "[Error is null]";
    }
    return Event.create(
      action: "Generic error: $errorClean",
      event: "FL-FLUTTER_GENERIC_ERROR",
      error: error,
      stacktrace: stacktrace,
      irritatesUser: true,
    );
  }

  factory Event.openRoute(RouteLink route) {
    return Event.create(
      action: "Opening route: $route",
      event: "FL-OPEN-ROUTE",
      argument: route.toString(),
      argumentName: "route",
      irritatesUser: false,
    );
  }

  factory Event.databaseRecreated() {
    return const Event.create(
      action: "Database error occurred and it had to be recreated",
      event: "DB-DATABASE-RECREATED",
      irritatesUser: false,
    );
  }
}
