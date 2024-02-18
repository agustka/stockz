import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stockz/presentation/core/route_observer_provider.dart';
import 'package:stockz/presentation/core/utils/st_system_chrome.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/presentation/core/widgets/tappable/buttons/bottom_buttons/bottom_buttons_definition.dart';
import 'package:stockz/setup.dart';

class StScaffold extends StatefulWidget {
  final Widget child;
  final Drawer? drawer;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final bool useSafeArea;
  final SystemUiOverlayStyle? systemChrome;
  final bool ignoreKeyboardResizing;
  final Widget? bottomSheet;
  final Widget? bottomContainer;
  final BottomButtonsDefinition? bottomButtonsV2;
  final void Function()? onResumed;
  final void Function()? onPaused;
  final void Function()? onInactive;

  const StScaffold({
    super.key,
    required this.child,
    this.appBar,
    this.drawer,
    this.backgroundColor,
    this.systemChrome,
    this.bottomSheet,
    this.bottomButtonsV2,
    this.ignoreKeyboardResizing = false,
    this.useSafeArea = true,
    this.bottomContainer,
    this.onResumed,
    this.onPaused,
    this.onInactive,
  }) : assert(child is! Scaffold, "Don't put a scaffold inside IsbScaffold - it is unnecessary.");

  @override
  State<StatefulWidget> createState() {
    return _StScaffoldState();
  }
}

class _StScaffoldState extends State<StScaffold> with RouteAware, WidgetsBindingObserver {
  static SystemUiOverlayStyle? _currentChrome;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final ModalRoute? route = ModalRoute.of(context);
    if (route != null) {
      getIt<RouteObserverProvider>().get().subscribe(this, route);
    }

    if (widget.systemChrome != null) {
      StSystemChrome.setSystemUIOverlayStyle(widget.systemChrome!);
      _currentChrome = widget.systemChrome;
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        widget.onResumed?.call();

      case AppLifecycleState.inactive:
        widget.onInactive?.call();

      case AppLifecycleState.paused:
        widget.onPaused?.call();
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  void didPopNext() {
    final StTheme theme = StTheme.of(context, listen: false);
    final SystemUiOverlayStyle chrome = widget.systemChrome ?? theme.chrome.normal;
    if (_currentChrome?.statusBarColor != chrome.statusBarColor) {
      _currentChrome = chrome;
      StSystemChrome.setSystemUIOverlayStyle(chrome);
    }
    widget.onResumed?.call();
  }

  @override
  void didPop() {
  }

  @override
  void didPushNext() {
  }

  @override
  void didPush() {
  }

  @override
  Widget build(BuildContext context) {
    _currentChrome ??= StTheme.of(context).chrome.normal;

    final Color backgroundColor = widget.backgroundColor ?? StTheme.of(context).colors.grey100;

    final Widget scaffold = Scaffold(
      bottomSheet: widget.bottomSheet,
      appBar: widget.appBar,
      backgroundColor: backgroundColor,
      endDrawer: widget.drawer,
      resizeToAvoidBottomInset: !widget.ignoreKeyboardResizing,
      bottomNavigationBar: widget.bottomContainer,
      body: _safeArea(
        child: Material(
          color: backgroundColor,
          child: Builder(
            builder: (BuildContext context) {
              if (widget.bottomButtonsV2 != null) {
                return Stack(
                  children: [
                    widget.child,
                    StBottomButtonsV2(buttons: widget.bottomButtonsV2!),
                  ],
                );
              }
              return widget.child;
            },
          ),
        ),
      ),
    );
    if (Platform.isIOS) {
      return PopScope(
        canPop: false,
        child: scaffold,
      );
    } else {
      return scaffold;
    }
  }

  Widget _safeArea({required Widget child}) {
    return widget.useSafeArea ? SafeArea(child: child) : child;
  }
}
