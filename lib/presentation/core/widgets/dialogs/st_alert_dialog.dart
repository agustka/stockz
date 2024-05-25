import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stockz/application/core/navigation/navigation_cubit.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/navigation/named_route.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';
import 'package:stockz/domain/core/navigation/route_link.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

class StAlertDialog {
  static void info({
    required String title,
    required String content,
    bool popSelf = true,
    bool shouldOpenOverOtherDialogs = false,
    Widget? overrideContent,
    String? overrideImageLink,
    double? overrideIconWidth,
    double? overrideIconHeight,
    String? primaryActionText,
    String? secondaryActionText,
    String? overrideFallbackImagePath,
    DialogType? overrideDialogType,
    String? imageSemantics,
    Function()? onPrimaryAction,
    Function()? onSecondaryAction,
    Function()? onCloseAction,
  }) {
    if (_checkExitEarlyDialogAlreadyShowing(dismissExistingDialogs: shouldOpenOverOtherDialogs)) {
      return;
    }

    getIt<NavigationCubit>().navigate(
      routeLink: RouteLink.alertDialog(
        data: AlertDialogData(
          type: DialogType.info,
          title: title,
          content: content,
          popSelf: popSelf,
          overrideIcon: overrideImageLink,
          overrideIconWidth: overrideIconWidth,
          overrideIconHeight: overrideIconHeight,
          overrideContent: overrideContent,
          primaryActionText: primaryActionText,
          secondaryActionText: secondaryActionText,
          onPrimaryAction: onPrimaryAction,
          onSecondaryAction: onSecondaryAction,
          onCloseAction: onCloseAction,
          overrideDialogType: overrideDialogType,
          imageSemantics: imageSemantics,
        ),
      ),
    );
  }

  static void warn({
    required String title,
    required String content,
    NamedRoute? originator,
    bool popSelf = true,
    bool shouldHideIosTabBar = true,
    bool shouldPadIosTabBar = false,
    bool shouldOpenOverOtherDialogs = false,
    Widget? overrideContent,
    String? overrideIcon,
    double? overrideIconWidth,
    double? overrideIconHeight,
    String? primaryActionText,
    String? secondaryActionText,
    String? overrideFallbackImagePath,
    DialogType? overrideDialogType,
    String? imageSemantics,
    Function()? onPrimaryAction,
    Function()? onSecondaryAction,
    Function()? onCloseAction,
  }) {
    if (_checkExitEarlyDialogAlreadyShowing(dismissExistingDialogs: shouldOpenOverOtherDialogs)) {
      return;
    }
    if (!_canOriginate(originator)) {
      return;
    }

    getIt<NavigationCubit>().navigate(
      routeLink: RouteLink.alertDialog(
        shouldHideIosTabBar: shouldHideIosTabBar,
        data: AlertDialogData(
          type: DialogType.warn,
          title: title,
          content: content,
          popSelf: popSelf,
          overrideContent: overrideContent,
          overrideIcon: overrideIcon,
          overrideIconWidth: overrideIconWidth,
          overrideIconHeight: overrideIconHeight,
          primaryActionText: primaryActionText,
          secondaryActionText: secondaryActionText,
          onPrimaryAction: onPrimaryAction,
          onSecondaryAction: onSecondaryAction,
          onCloseAction: onCloseAction,
          overrideDialogType: overrideDialogType,
          imageSemantics: imageSemantics,
        ),
      ),
    );
  }

  static void error({
    required String title,
    required String content,
    NamedRoute? originator,
    bool popSelf = true,
    bool shouldHideIosTabBar = true,
    bool shouldPadIosTabBar = false,
    Widget? overrideContent,
    String? overrideImageLink,
    double? overrideIconWidth,
    double? overrideIconHeight,
    String? primaryActionText,
    String? secondaryActionText,
    String? overrideFallbackImagePath,
    bool shouldOpenOverOtherDialogs = false,
    String? imageSemantics,
    Function()? onPrimaryAction,
    Function()? onSecondaryAction,
    Function()? onCloseAction,
  }) {
    if (_checkExitEarlyDialogAlreadyShowing(dismissExistingDialogs: shouldOpenOverOtherDialogs)) {
      return;
    }
    if (!_canOriginate(originator)) {
      return;
    }

    getIt<NavigationCubit>().navigate(
      routeLink: RouteLink.alertDialog(
        shouldHideIosTabBar: shouldHideIosTabBar,
        data: AlertDialogData(
          type: DialogType.error,
          title: title,
          content: content,
          popSelf: popSelf,
          overrideIcon: overrideImageLink,
          overrideIconWidth: overrideIconWidth,
          overrideIconHeight: overrideIconHeight,
          overrideContent: overrideContent,
          primaryActionText: primaryActionText,
          secondaryActionText: secondaryActionText,
          onPrimaryAction: onPrimaryAction,
          onSecondaryAction: onSecondaryAction,
          onCloseAction: onCloseAction,
          imageSemantics: imageSemantics,
        ),
      ),
    );
  }

  static bool _checkExitEarlyDialogAlreadyShowing({required bool dismissExistingDialogs}) {
    if (!dismissExistingDialogs) {
      final List<NamedRoute> routeStack = getIt<NavigationCubit>().state.routeStack;
      if (routeStack.isNotEmpty && routeStack.last.name == NamedRoute.alertDialog().name) {
        return true;
      }
    }
    return false;
  }

  static bool _canOriginate(NamedRoute? originator) {
    if (originator != null) {
      final List<NamedRoute> stack = getIt<NavigationCubit>().state.routeStack;
      if (stack.isEmpty || !stack.contains(originator)) {
        return false;
      }
      if (stack.last.name != originator.name) {
        return false;
      }
    }
    return true;
  }
}

@immutable
class AlertDialogData {
  final DialogType type;
  final String title;
  final String content;
  final bool popSelf;
  final String? primaryActionText;
  final String? secondaryActionText;
  final Widget? overrideContent;
  final String? overrideIcon;
  final double? overrideIconWidth;
  final double? overrideIconHeight;
  final DialogType? overrideDialogType;
  final String? imageSemantics;
  final Function()? onPrimaryAction;
  final Function()? onSecondaryAction;
  final Function()? onCloseAction;

  const AlertDialogData({
    required this.type,
    required this.title,
    required this.content,
    required this.popSelf,
    this.overrideContent,
    this.overrideIcon,
    this.overrideIconWidth,
    this.overrideIconHeight,
    this.primaryActionText,
    this.secondaryActionText,
    this.overrideDialogType,
    this.onPrimaryAction,
    this.onSecondaryAction,
    this.onCloseAction,
    this.imageSemantics,
  });

  const factory AlertDialogData.invalid() = _$InvalidAlertDialogData;
}

class _$InvalidAlertDialogData extends AlertDialogData {
  const _$InvalidAlertDialogData()
      : super(
    type: DialogType.info,
    title: "",
    content: "",
    popSelf: true,
  );
}

enum DialogType {
  error,
  info,
  success,
  warn,
}

class AlertDialogPage extends StatefulWidget {
  static Widget creator(RouteArguments args) {
    return AlertDialogPage(data: args.getDynamic("alertDialogData") as AlertDialogData);
  }

  static const String alertDialogPagePrimaryButtonKey = "alertDialogPagePrimaryButtonKey";
  static const String alertDialogPageSecondaryButtonKey = "alertDialogPageSecondaryButtonKey";

  final AlertDialogData data;

  const AlertDialogPage({super.key, required this.data});

  @override
  State<StatefulWidget> createState() {
    return _AlertDialogPageState();
  }
}

class _AlertDialogPageState extends State<AlertDialogPage> with TickerProviderStateMixin {
  bool _exiting = false;
  bool _showImage = false;
  bool _closed = false;

  @override
  void initState() {
    super.initState();

    FocusManager.instance.primaryFocus?.unfocus();

    Future.delayed(const Duration(milliseconds: 400)).then((value) {
      if (!_closed) {
        setState(() {
          _showImage = true;
        });
      }
    });
  }

  @override
  void dispose() {
    _closed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double imgSize = MediaQuery.of(context).size.width * 0.7;

    return StScaffold(
      bottomContainer: _getActionButtons(context),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: StTheme.sidePadding),
          child: Column(
            children: [
              const SizedBox(height: 120),
              Text(
                widget.data.title,
                style: StTheme.of(context).fonts.body32.bold.primary,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 23),
              Text(widget.data.content, style: StTheme.of(context).fonts.body18.light, textAlign: TextAlign.center),
              const SizedBox(height: 30),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.7,
                  child: AnimatedCrossFade(
                    crossFadeState: _showImage ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                    duration: const Duration(milliseconds: 200),
                    firstCurve: Curves.easeInOut,
                    firstChild: SizedBox(
                      width: widget.data.overrideIconWidth ?? imgSize,
                      height: widget.data.overrideIconHeight ?? imgSize,
                    ),
                    secondChild: Semantics(
                      label: widget.data.imageSemantics ?? "${widget.data.title} - ${widget.data.content}",
                      child: ExcludeSemantics(
                        child: StImage(
                          width: imgSize,
                          height: imgSize,
                          imageLink: _getImageLink(widget.data.overrideDialogType ?? widget.data.type),
                          fallback: SvgPicture.asset(
                            _getFallbackImageAsset(),
                            width: widget.data.overrideIconWidth ?? imgSize,
                            height: widget.data.overrideIconHeight ?? imgSize,
                          ),
                          frameBuilder: (context, child, frame, sync) {
                            return SizedBox(
                              width: imgSize,
                              height: imgSize,
                              child: child,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getActionButtons(BuildContext context) {
    Widget secondaryButton;
    if (widget.data.secondaryActionText != null && widget.data.onSecondaryAction != null) {
      secondaryButton = Padding(
        padding: const EdgeInsets.only(top: 16),
        child: StButton(
          key: const ValueKey(AlertDialogPage.alertDialogPageSecondaryButtonKey),
          buttonStyle: StButtonStyle.secondary,
          onTap: () {
            widget.data.onSecondaryAction?.call();
            _exit();
          },
          text: widget.data.secondaryActionText,
        ),
      );
    } else {
      secondaryButton = const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.only(
        left: StTheme.sidePadding,
        right: StTheme.sidePadding,
        top: StTheme.bottomPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StButton(
            key: const ValueKey(AlertDialogPage.alertDialogPagePrimaryButtonKey),
            text: widget.data.primaryActionText ?? S.of(context).close,
            onTap: () {
              widget.data.onPrimaryAction?.call();
              _exit();
            },
          ),
          secondaryButton,
          const SizedBox(height: StTheme.bottomPadding),
        ],
      ),
    );
  }

  String _getImageLink(DialogType type) {
    if (widget.data.overrideIcon != null) {
      return widget.data.overrideIcon!;
    }
    switch (type) {
      case DialogType.info:
        return "https://cdn.islandsbanki.is/image/upload/v1678726562/oneapp/illustration/Info.svg";
      case DialogType.warn:
        return "https://cdn.islandsbanki.is/image/upload/v1678726562/oneapp/illustration/Warning.svg";
      case DialogType.error:
        return "https://cdn.islandsbanki.is/image/upload/v1678726562/oneapp/illustration/Failure.svg";
      case DialogType.success:
        return "https://cdn.islandsbanki.is/image/upload/v1678726564/oneapp/illustration/Success.svg";
    }
  }

  String _getFallbackImageAsset() {
    switch (widget.data.type) {
      case DialogType.info:
        return AppAssets.images.imgAlert.path;
      case DialogType.warn:
        return AppAssets.images.imgAlert.path;
      case DialogType.error:
        return AppAssets.images.imgAlert.path;
      case DialogType.success:
        return AppAssets.images.imgAlert.path;
      default:
        return AppAssets.images.imgAlert.path;
    }
  }

  void _exit() {
    if (_exiting) {
      return;
    }
    _exiting = true;
    widget.data.onCloseAction?.call();
    if (widget.data.popSelf) {
      getIt<NavigationCubit>().pop();
    }
  }
}
