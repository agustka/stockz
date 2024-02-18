import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';
import 'package:stockz/infrastructure/core/error_handling/error_handler.dart';
import 'package:stockz/presentation/core/root_page.dart';
import 'package:stockz/presentation/core/widgets/dialogs/st_alert_dialog.dart';
import 'package:stockz/presentation/core/widgets/page_not_found/page_not_found_page.dart';

class PageName {
  static const String root = "/";
  static const String alertDialog = "/alert-dialog";
  static const String pageNotFound = "/page-not-found";
}

@immutable
class NamedRoute extends Equatable {
  final Widget Function(RouteArguments arguments) creator;
  final String name;
  final PageAnimation animation;
  final bool hasTransparentBackground;

  const NamedRoute._({
    required this.creator,
    required this.name,
    required this.animation,
    this.hasTransparentBackground = false,
  });

  @override
  List<Object> get props => [name];

  factory NamedRoute.none() => NamedRoute._(
    creator: (_) => const SizedBox(),
    name: "",
    animation: PageAnimation.none,
  );

  factory NamedRoute.root() => const NamedRoute._(
    creator: RootPage.creator,
    name: PageName.root,
    animation: PageAnimation.adaptive,
  );

  factory NamedRoute.alertDialog() => const NamedRoute._(
    creator: AlertDialogPage.creator,
    name: PageName.alertDialog,
    animation: PageAnimation.dialog,
    hasTransparentBackground: true,
  );

  factory NamedRoute.pageNotFound() => const NamedRoute._(
    creator: PageNotFoundPage.creator,
    name: PageName.pageNotFound,
    animation: PageAnimation.adaptive,
  );

  factory NamedRoute.parse(String path) {
    switch (path) {
      case PageName.root:
        return NamedRoute.root();

      case PageName.pageNotFound:
        return NamedRoute.pageNotFound();

      case PageName.alertDialog:
        return NamedRoute.alertDialog();

      default:
        err("Could not find flutter page $path. Showing 404 page instead");
        return NamedRoute.pageNotFound();
    }
  }

  @override
  String toString() {
    return name;
  }
}

enum PageAnimation {
  adaptive,
  bottomDrawer,
  dialog,
  none,
  noneImmediate,
}
