import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/presentation/core/accessibility/accessibility.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/presentation/core/widgets/tappable/buttons/bottom_buttons/bottom_buttons_definition.dart';

class StBottomButtonsV2 extends StatefulWidget {
  static const String bottomButtonsMoreButtonKey = "bottomButtonsMoreButtonKey";

  final BottomButtonsDefinition buttons;

  static double get bottomButtonsHeight {
    return StButton.buttonHeight + StTheme.bottomPadding * 2;
  }

  const StBottomButtonsV2({
    super.key,
    required this.buttons,
  });

  @override
  State<StatefulWidget> createState() {
    return _IsbBottomButtonsState();
  }
}

class _IsbBottomButtonsState extends State<StBottomButtonsV2> with WidgetsBindingObserver, TickerProviderStateMixin {
  late AnimationController _drawerController;
  late AnimationController _buttonsController;
  late Animation<Offset> _drawerAnimation;

  BottomButtonsDefinition get _buttons => widget.buttons;

  double _drawerOpacity = 0;
  bool _drawerVisible = false;

  @override
  void initState() {
    super.initState();

    _drawerController = AnimationController(duration: const Duration(milliseconds: 350), vsync: this);
    _buttonsController = AnimationController(duration: const Duration(milliseconds: 350), vsync: this);
    if (Platform.isIOS) {
      _buttonsController.value = 1;
      Future.delayed(const Duration(milliseconds: 250)).then((value) {
        _buttonsController.reverse(from: 1);
      });
    } else {
      _buttonsController.reverse(from: 1);
    }
    _drawerAnimation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
        .animate(CurvedAnimation(parent: _drawerController, curve: Curves.easeOutQuint));
  }

  @override
  void dispose() {
    _buttonsController.dispose();
    _drawerController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_buttons.buttons.isEmpty) {
      return const SizedBox.shrink();
    }

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Semantics(
          sortKey: const OrdinalSortKey(1),
          child: _getMainButtons(),
        ),
        Semantics(
          sortKey: const OrdinalSortKey(3),
          child: _getOverlay(),
        ),
        Semantics(
          sortKey: const OrdinalSortKey(2),
          child: _getDrawer(),
        ),
      ],
    );
  }

  Widget _getMainButtons() {
    return Column(
      children: [
        const Expanded(child: SizedBox.shrink()),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 40,
          child: IgnorePointer(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    StTheme.of(context).scheme.onSurfaceVariant.withAlpha(0),
                    StTheme.of(context).scheme.onSurfaceVariant.withAlpha(100),
                    StTheme.of(context).scheme.onSurfaceVariant.withAlpha(210),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              height: 72,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                StTheme.of(context).scheme.onSurfaceVariant.withAlpha(210),
                StTheme.of(context).scheme.onSurfaceVariant,
              ],
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              left: StTheme.sidePadding,
              right: StTheme.sidePadding,
              bottom: StTheme.bottomPadding + (Platform.isIOS ? 12 : 0),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: _getMainButtonEntries(context),
              ),
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
      ],
    );
  }

  Widget _getOverlay() {
    return _excludeMainSemantics(
      excludeChildren: true,
      label: S.of(context).semantics_tap_to_dismiss,
      onTap: () {
        _dismissDrawer();
      },
      child: GestureDetector(
        behavior: HitTestBehavior.deferToChild,
        onTap: () {
          _dismissDrawer();
        },
        child: AnimatedOpacity(
          opacity: _drawerOpacity,
          duration: const Duration(milliseconds: 400),
          child: _getIgnorePointer(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 1.3, sigmaY: 1.3),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height -
                    (Platform.isIOS ? 0 : MediaQuery.of(context).padding.bottom) -
                    (Platform.isIOS ? 0 : MediaQuery.of(context).padding.top),
                child: Material(
                  color: StTheme.of(context).scheme.scrim,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getDrawer() {
    final Size size = MediaQuery.sizeOf(context);
    if (size.width <= 0) {
      return const SizedBox.shrink();
    }

    return _excludeMainSemantics(
      excludeChildren: false,
      child: SlideTransition(
        position: _drawerAnimation,
        child: GestureDetector(
          onVerticalDragEnd: (DragEndDetails details) {
            _dismissDrawer();
          },
          child: Semantics(
            label: S.of(context).semantics_drag_down_to_dismiss_drawer,
            slider: true,
            child: StCard(
              backgroundColor: StTheme.of(context).scheme.surfaceContainerHighest,
              customBorderRadius: const BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Semantics(
                    container: true,
                    sortKey: const OrdinalSortKey(4),
                    child: SizedBox(
                      width: size.width - StTheme.sidePadding * 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: StTheme.sidePadding),
                        child: StText(
                          _buttons.drawerHeading,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: _getHeadingTextStyle(context: context).primary,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Semantics(
                    container: true,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: _getDrawerButtonEntries(),
                      ),
                    ),
                  ),
                  const SizedBox(height: StTheme.bottomPadding),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getMainButtonEntries(BuildContext context) {
    int flex = 50;
    int overflowFlex = 18;
    if (_buttons.buttons.length > 2) {
      flex = 41;
    }

    if (Accessibility.of(context).isInAccessibilityMode) {
      overflowFlex = 20;
      flex = 100;
      if (_buttons.buttons.length > 1) {
        flex = 80;
      }
    }

    final List<Widget> entries = [];
    int cnt = 0;
    for (final BottomButtonDefinition button in _buttons.buttons) {
      if (Accessibility.of(context).isInAccessibilityMode && cnt > 0) {
        break;
      }
      if (cnt > 1) {
        break;
      }
      if (cnt > 0) {
        entries.add(const SizedBox(width: 10));
      }
      cnt++;
      entries.add(
        Flexible(
          flex: flex,
          child: _loadingIndicator(
            child: StButton(
              key: button.key,
              buttonStyle: cnt == 1 ? StButtonStyle.primary : StButtonStyle.secondary,
              text: button.buttonText,
              icon: button.icon,
              maxLines: 2,
              onTap: button.onTap,
              enabled: button.enabled,
              busy: button.isBusy,
              onDisabledTap: button.onDisabledTap,
            ),
          ),
        ),
      );
    }
    final bool shouldDisplayMoreButton = _buttons.shouldAlwaysShowMoreButton ||
        _buttons.buttons.length > 2 ||
        (Accessibility.of(context).isInAccessibilityMode && _buttons.buttons.length > 1);
    if (shouldDisplayMoreButton) {
      entries.add(const SizedBox(width: 10));
      entries.add(
        Flexible(
          flex: overflowFlex,
          child: _loadingIndicator(
            child: Semantics(
              container: true,
              button: true,
              label: S.of(context).more,
              child: ExcludeSemantics(
                child: StButton(
                  key: const ValueKey(StBottomButtonsV2.bottomButtonsMoreButtonKey),
                  onTap: _buttons.onMorePressed ?? _showDrawer,
                  buttonStyle: StButtonStyle.secondary,
                  child: StSvg(
                    AppAssets.icons.icThreeDots,
                    width: 24,
                    height: 24,
                    color: StTheme.of(context).scheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }

    return entries;
  }

  Widget _loadingIndicator({required Widget child}) {
    if (widget.buttons.showLoading) {
      return IgnorePointer(
        child: StLoadingBox(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: child,
          ),
        ),
      );
    }
    return child;
  }

  List<Widget> _getDrawerButtonEntries() {
    final int start = Accessibility.of(context).isInAccessibilityMode ? 1 : 2;
    if (_buttons.buttons.length <= start) {
      return [const SizedBox.shrink()];
    }
    final List<Widget> entries = [];
    for (int i = start; i < _buttons.buttons.length; i++) {
      final BottomButtonDefinition button = _buttons.buttons[i];
      entries.add(
        Semantics(
          container: true,
          button: true,
          child: StTapVisual(
            onTap: () {
              _dismissDrawer();
              Future.delayed(const Duration(milliseconds: 400)).then((value) {
                button.enabled ? button.onTap() : button.onDisabledTap?.call();
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(
                top: StTheme.sidePadding,
                bottom: StTheme.sidePadding,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(width: StTheme.sidePadding),
                  if (button.drawerIcon != null) ...[
                    StSvg(
                      button.drawerIcon ?? AppAssets.icons.icTransparent,
                      width: 24,
                      height: 24,
                      color: button.enabled
                          ? StTheme.of(context).scheme.primary
                          : StTheme.of(context).scheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 16),
                  ],
                  Expanded(
                    child: StText(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      button.drawerText ?? button.buttonText,
                      style: _getButtonTextStyle(context: context).copyWith(
                        color: button.enabled ? StTheme.of(context).scheme.onSurface : StTheme.of(context).scheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
      if (i < _buttons.buttons.length - 1) {
        entries.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: StTheme.sidePadding),
            child: StDivider(
              color: StTheme.of(context).scheme.onSurfaceVariant,
            ),
          ),
        );
      }
    }
    return entries;
  }

  void _showDrawer() {
    _drawerController.forward();
    _buttonsController.forward();
    setState(() {
      _drawerOpacity = 1;
      _drawerVisible = true;
    });
  }

  void _dismissDrawer() {
    if (_drawerVisible) {
      _drawerController.reverse(from: 1);
      _buttonsController.reverse(from: 1);
      Future.delayed(const Duration(milliseconds: 400)).then((value) {
        setState(() {
          _drawerVisible = false;
          _drawerOpacity = 0;
        });
      });
    }
  }

  Widget _getIgnorePointer({required Widget child}) {
    if (_drawerVisible) {
      return child;
    }
    return IgnorePointer(child: child);
  }

  TextStyle _getButtonTextStyle({required BuildContext context}) {
    final TextStyle regular = StTheme.of(context).fonts.body16.bold;
    final Accessibility accessibility = Accessibility.of(context);
    switch (accessibility.size) {
      case AccessibilitySize.small:
      case AccessibilitySize.normal:
      case AccessibilitySize.large:
        return regular;
      case AccessibilitySize.huge:
        return StTheme.of(context).fonts.body12;
    }
  }

  TextStyle _getHeadingTextStyle({required BuildContext context}) {
    final TextStyle regular = StTheme.of(context).fonts.body20.bold;
    final Accessibility accessibility = Accessibility.of(context);
    switch (accessibility.size) {
      case AccessibilitySize.small:
      case AccessibilitySize.normal:
      case AccessibilitySize.large:
        return regular;
      case AccessibilitySize.huge:
        return StTheme.of(context).fonts.body16;
    }
  }

  Widget _excludeMainSemantics({
    required Widget child,
    required bool excludeChildren,
    String? label,
    void Function()? onTap,
  }) {
    if (!MediaQuery.of(context).accessibleNavigation) {
      return child;
    }
    if (!_drawerVisible) {
      return ExcludeSemantics(child: child);
    }
    final Widget subChild = excludeChildren ? ExcludeSemantics(child: child) : child;
    return Semantics(
      label: label,
      container: true,
      onTap: onTap,
      child: subChild,
    );
  }
}
