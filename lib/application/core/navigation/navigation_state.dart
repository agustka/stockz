part of 'navigation_cubit.dart';

enum NavigationStatus {
  gotoTab,
  loaded,
  navigateToPage,
  popToRoot,
  reset,
}

@immutable
class NavigationState extends Equatable {
  final NavigationStatus status;
  final String uniqueId;
  final List<NamedRoute> routeStack;
  final RouteLink link;
  final bool ignoreNativePop;
  final int tabIndex;
  final bool isShowingNoAccessDialog;

  const NavigationState({
    required this.status,
    required this.uniqueId,
    required this.routeStack,
    required this.link,
    required this.ignoreNativePop,
    required this.tabIndex,
    required this.isShowingNoAccessDialog,
  });

  factory NavigationState.initial({NavigationStatus status = NavigationStatus.loaded}) {
    final List<NamedRoute> modifiable = [];
    return NavigationState(
      status: status,
      uniqueId: "-",
      routeStack: modifiable,
      link: RouteLink.none(),
      ignoreNativePop: false,
      tabIndex: 0,
      isShowingNoAccessDialog: false,
    );
  }

  bool isTopOfStack(NamedRoute route) {
    if (routeStack.isEmpty) {
      return false;
    }
    if (routeStack.last == route) {
      return true;
    }
    return false;
  }

  NavigationState copyWith({
    NavigationStatus? status,
    String? uniqueId,
    NamedRoute? route,
    List<NamedRoute>? routeStack,
    RouteLink? link,
    bool? ignoreNativePop,
    int? tabIndex,
    bool? isShowingNoAccessDialog,
  }) {
    return NavigationState(
      status: status ?? this.status,
      uniqueId: uniqueId ?? this.uniqueId,
      routeStack: routeStack ?? this.routeStack,
      link: link ?? this.link,
      ignoreNativePop: ignoreNativePop ?? this.ignoreNativePop,
      tabIndex: tabIndex ?? this.tabIndex,
      isShowingNoAccessDialog: isShowingNoAccessDialog ?? false,
    );
  }

  @override
  List<Object?> get props => [
    status,
    uniqueId,
    routeStack,
    link,
    ignoreNativePop,
    tabIndex,
    isShowingNoAccessDialog,
  ];
}
