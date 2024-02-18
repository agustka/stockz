import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stockz/application/core/analytics/analytics_cubit.dart';
import 'package:stockz/application/core/caching/caching_cubit.dart';
import 'package:stockz/application/core/initialization/initialization_cubit.dart';
import 'package:stockz/application/core/language/language_cubit.dart';
import 'package:stockz/application/core/navigation/navigation_cubit.dart';
import 'package:stockz/domain/core/localization/user_locale.dart';
import 'package:stockz/domain/core/navigation/named_route.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';
import 'package:stockz/presentation/core/global_navigator_key.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/route_observer_provider.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

class App extends StatefulWidget {
  static UserLocale userLocale = FlavorConfig.instance.variables.defaultLocale;

  const App();

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          lazy: false,
          create: (BuildContext context) => getIt<InitializationCubit>()..init(),
        ),
        BlocProvider(
          lazy: false,
          create: (BuildContext context) => getIt<NavigationCubit>()..initialize(),
        ),
        BlocProvider(
          lazy: false,
          create: (BuildContext context) => getIt<CachingCubit>()..init(),
        ),
        BlocProvider(
          lazy: false,
          create: (BuildContext context) => getIt<AnalyticsCubit>()..init(),
        ),
        BlocProvider(
          lazy: false,
          create: (BuildContext context) => getIt<LanguageCubit>()..subscribeToLocaleChangeEvents(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<LanguageCubit, LanguageState>(
            listener: (BuildContext context, state) => setState(() {
              App.userLocale = state.locale;
            }),
          ),
          BlocListener<NavigationCubit, NavigationState>(
            listener: (BuildContext innerContext, NavigationState state) {
              switch (state.status) {
                case NavigationStatus.loaded:
                  break;
                case NavigationStatus.navigateToPage:
                  _gotoPage(state, innerContext);

                case NavigationStatus.popToRoot:
                case NavigationStatus.gotoTab:
                case NavigationStatus.reset:
                  _clearNavStack();
              }
            },
          ),
        ],
        child: StThemeProvider(
          builder: (StTheme theme) {
            return MaterialApp(
              onGenerateTitle: (BuildContext context) => S.of(context).application_name,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: theme.theme,
              locale: App.userLocale.locale,
              navigatorKey: getIt<GlobalNavigatorKey>().key,
              navigatorObservers: [getIt<RouteObserverProvider>().get()],
              initialRoute: PageName.root,
              onGenerateRoute: _generateRoute,
            );
          },
        ),
      ),
    );
  }

  Route<dynamic> _generateRoute(RouteSettings settings) {
    final NamedRoute route = NamedRoute.parse(settings.name ?? "");

    // ignore: prefer_function_declarations_over_variables
    final WidgetBuilder build = (context) {
      final RouteArguments? args = settings.arguments as RouteArguments?;
      return route.creator(args ?? const RouteArguments.empty());
    };

    switch (route.animation) {
      case PageAnimation.adaptive:
        if (Platform.isIOS) {
          return CupertinoPageRoute(builder: build, settings: settings);
        } else {
          return MaterialPageRoute(builder: build, settings: settings);
        }

      case PageAnimation.none:
        return PageRouteBuilder(
          opaque: !route.hasTransparentBackground,
          pageBuilder: (context, __, ___) => build(context),
          settings: settings,
          transitionDuration: Duration.zero,
          transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
          reverseTransitionDuration: const Duration(milliseconds: 500),
        );

      case PageAnimation.noneImmediate:
        return PageRouteBuilder(
          opaque: !route.hasTransparentBackground,
          pageBuilder: (context, __, ___) => build(context),
          settings: settings,
          transitionDuration: Duration.zero,
          transitionsBuilder: (context, animation, secondaryAnimation, child) => child,
          reverseTransitionDuration: Duration.zero,
        );

      case PageAnimation.bottomDrawer:
        return ModalBottomSheetRoute(
          builder: build,
          settings: settings,
          isScrollControlled: true,
          enableDrag: false,
          isDismissible: false,
          backgroundColor: !route.hasTransparentBackground ? null : Colors.transparent,
        );

      case PageAnimation.dialog:
        return ModalBottomSheetRoute(
          builder: build,
          settings: settings,
          isScrollControlled: true,
          enableDrag: false,
          isDismissible: false,
        );

      default:
        return PageRouteBuilder(
          opaque: !route.hasTransparentBackground,
          pageBuilder: (context, __, ___) => build(context),
          settings: settings,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const Offset begin = Offset(0.0, 1.0);
            final Tween<Offset> tween = Tween(begin: begin, end: Offset.zero);
            final CurvedAnimation curvedAnimation = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
              reverseCurve: Curves.easeIn,
            );
            return SlideTransition(position: tween.animate(curvedAnimation), child: child);
          },
        );
    }
  }

  void _gotoPage(NavigationState state, BuildContext innerContext) {
    final BuildContext? context = getIt<GlobalNavigatorKey>().context;

    if (state.link.isPop) {
      if (state.link.route == NamedRoute.none()) {
        return Navigator.of(context!).pop();
      }

      return Navigator.of(context!).popUntil(
            (route) {
          return route.settings.name == state.link.route.name || route.settings.name == NamedRoute.root().name;
        },
      );
    }

    if (state.link.isReplace) {
      Navigator.of(context!).pushReplacementNamed(
        state.link.route.name,
        arguments: state.link.arguments,
      );

      return;
    }

    if (state.link.isPushAndPopTo) {
      Navigator.of(context!).pushNamedAndRemoveUntil(
        state.link.route.name,
            (route) {
          final popTo = state.link.arguments.arguments["popTo"] as NamedRoute? ?? NamedRoute.root();

          return route.settings.name == popTo.name;
        },
        arguments: state.link.arguments,
      );

      return;
    }

    if (context != null) {
      Navigator.of(context).pushNamed(
        state.link.route.name,
        arguments: state.link.arguments,
      );

      return;
    }

    Navigator.of(innerContext).pushNamed(
      state.link.route.name,
      arguments: state.link.arguments,
    );
  }

  void _clearNavStack() {
    final BuildContext? context = getIt<GlobalNavigatorKey>().context;
    if (context != null) {
      Navigator.of(context).popUntil(
            (route) {
          return route.settings.name == NamedRoute.root().name;
        },
      );
    }
  }
}
