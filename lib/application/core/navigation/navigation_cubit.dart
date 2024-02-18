import 'dart:async';
import 'dart:convert';
import 'dart:math' as math;

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stockz/application/core/analytics/analytics_helper.dart';
import 'package:stockz/domain/core/analytics/event.dart';
import 'package:stockz/domain/core/navigation/named_route.dart';
import 'package:stockz/domain/core/navigation/route_link.dart';
import 'package:stockz/domain/core/value_objects/route_link_value_object.dart';
import 'package:stockz/infrastructure/core/analytics/repository/i_analytics_repository.dart';
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

part 'navigation_state.dart';

@Singleton()
class NavigationCubit extends Cubit<NavigationState> with AnalyticsHelper {
  final IAnalyticsRepository _analyticsRepo;
  final IPollAndDebounce _delay;
  final math.Random rnd = math.Random(10);

  bool suppressWarnings = false;

  Completer<void> _navigationQueue = Completer<void>();
  bool _navigating = false;

  bool ignoreNativeNavigation = false;

  NavigationCubit(
    this._analyticsRepo,
    this._delay,
  ) : super(NavigationState.initial());

  void initialize() {}

  Future<void> launchWebUrl({required Uri? url}) async {
    if (await _canLaunchUrl(url)) {
      _launchUrl(url);
    }
  }

  void handleExternalRoute(String payload) {
    final RouteLinkValueObject routeLink = RouteLinkValueObject(payload);
    bool needsPopToRoot = false;
    Map<String, dynamic> data;
    try {
      data = json.decode(payload) as Map<String, dynamic>;
    } catch (_) {
      data = {"route": payload};
    }
    try {
      final String routeString = data["route"] as String;
      if (routeString.startsWith("//")) {
        needsPopToRoot = true;
      }
    } catch (_) {}
    navigateList(routeLinks: routeLink.get, popToRootFirst: needsPopToRoot);
  }

  Future<void> navigateList({required List<RouteLink> routeLinks, bool popToRootFirst = false}) async {
    if (popToRootFirst) {
      popToRoot();
    }
    for (final RouteLink link in routeLinks) {
      navigate(routeLink: link);
      await Future.delayed(const Duration(milliseconds: 300));
    }
  }

  String getCallerFunctionName() {
    final StackTrace stackTrace = StackTrace.current;
    final List<String> frames = stackTrace.toString().split('\n');

    // The first frame is the current function, the second is the caller.
    // You might need to adjust the index based on your specific use case.
    if (frames.length > 4) {
      return frames.sublist(0, 4).join("\n");
    }
    return 'Unknown';
  }

  Future<void> navigate({required RouteLink routeLink}) async {
    try {
      await _enterConcurrentNavigation();

      if (!isClosed) {
        emit(_followRoute(route: routeLink));
      }
    } finally {
      _exitConcurrentNavigation();
    }
  }

  Future<void> navigateAndPopTo({required RouteLink routeLink, required NamedRoute popTo}) async {
    try {
      await _enterConcurrentNavigation();

      _analyticsRepo.logEvent(Event.openRoute(routeLink));

      final List<NamedRoute> stack = state.routeStack;
      final int index = stack.indexWhere((NamedRoute route) => route == popTo);

      final List<NamedRoute> sublist = stack.sublist(0, index + 1);
      final List<NamedRoute> newStack = [...sublist, routeLink.route];

      emit(
        state.copyWith(
          status: NavigationStatus.navigateToPage,
          uniqueId: rnd.nextInt(10000).toString(),
          route: routeLink.route,
          routeStack: newStack,
          link: RouteLink.pushAndPopTo(
            route: routeLink.route,
            popTo: sublist.isEmpty ? NamedRoute.root() : popTo,
            arguments: routeLink.arguments,
          ),
        ),
      );
    } finally {
      _exitConcurrentNavigation();
    }
  }

  Future<void> pop({NamedRoute? popTo, NamedRoute? popToAfter}) async {
    try {
      await _enterConcurrentNavigation();

      assert(!(popTo != null && popToAfter != null), "popTo and popToAfter can't both be set at the same time.");
      if (!isClosed) {
        emit(_followRoute(route: RouteLink.pop(popTo: popTo, popToAfter: popToAfter)));
      }
    } finally {
      _exitConcurrentNavigation();
    }
  }

  void popToRoot() {
    emit(state.copyWith(status: NavigationStatus.popToRoot, routeStack: []));
  }

  void reset() {
    state.routeStack.clear();
    emit(NavigationState.initial(status: NavigationStatus.reset));
  }

  void ignoreNativePop({required bool ignore}) {
    emit(state.copyWith(status: NavigationStatus.loaded, ignoreNativePop: ignore));
  }

  NavigationState _followRoute({required RouteLink route}) {
    RouteLink link = route.copyWith();

    final List<NamedRoute> routeStack = state.routeStack;
    if (link.type == NavigationType.reset) {
      routeStack.clear();
      return NavigationState.initial(status: NavigationStatus.reset);
    } else if (link.type == NavigationType.tabSwitch) {
      popToRoot();
      return state.copyWith(status: NavigationStatus.gotoTab, tabIndex: link.tabIndex, link: link);
    }

    if (link.isPop && link.route != NamedRoute.none()) {
      if (state.routeStack.where((NamedRoute e) => link.route.name == e.name).isEmpty && state.routeStack.isNotEmpty) {
        // The route is not in stack, turn into single pop
        routeStack.removeLast();
      } else {
        NamedRoute? top = routeStack.lastOrNull;
        final bool includePopTarget = link.arguments.containsKey("popToAfter");
        while (top != null && top.name != link.route.name) {
          routeStack.removeLast();
          top = routeStack.lastOrNull;
        }
        if (includePopTarget && state.routeStack.isNotEmpty) {
          routeStack.removeLast();
          top = routeStack.lastOrNull;
          if (top == null) {
            link = link.copyWith(route: NamedRoute.root());
          } else {
            link = link.copyWith(route: top);
          }
        }
      }
    } else if (link.isPop && routeStack.isNotEmpty) {
      routeStack.removeLast();
    }

    if (link.isReplace && link.route != NamedRoute.none() && routeStack.isNotEmpty) {
      routeStack.removeLast();
    }

    if (link.route != NamedRoute.root() && link.route != NamedRoute.none() && !link.isPop) {
      routeStack.add(link.route);
    }

    return state.copyWith(
      status: NavigationStatus.navigateToPage,
      uniqueId: rnd.nextInt(10000).toString(),
      route: link.route,
      routeStack: routeStack,
      link: link,
    );
  }

  Future<bool> _canLaunchUrl(Uri? url) async {
    if (url == null) {
      return false;
    }
    return url_launcher.canLaunchUrl(url);
  }

  Future<bool> _launchUrl(Uri? url) async {
    if (url == null) {
      return false;
    }
    return url_launcher.launchUrl(url, mode: url_launcher.LaunchMode.externalApplication);
  }

  Future<void> _enterConcurrentNavigation() async {
    try {
      if (_navigating) {
        await _navigationQueue.future;
      }
      _navigating = true;
    } catch (_) {}
  }

  Future<void> _exitConcurrentNavigation() async {
    _delay.delayCall(
      delay: const Duration(milliseconds: 200),
      action: () {
        _navigationQueue.complete();

        _navigating = false;
        _navigationQueue = Completer<void>();
      },
    );
  }

  @override
  @mustCallSuper
  Future<void> close() async {
    super.close();
  }
}
