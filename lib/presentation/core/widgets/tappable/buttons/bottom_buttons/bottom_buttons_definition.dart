import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

@immutable
class BottomButtonsDefinition extends Equatable {
  final String drawerHeading;
  final bool showLoading;
  final List<BottomButtonDefinition> buttons;
  final OverlayEntry? overlayEntry;
  final bool exit;
  final bool shouldAlwaysShowMoreButton;
  final Function()? onMorePressed;

  const BottomButtonsDefinition({
    required this.buttons,
    this.drawerHeading = "",
    this.showLoading = false,
    this.overlayEntry,
    this.exit = false,
    this.shouldAlwaysShowMoreButton = false,
    this.onMorePressed,
  });

  @override
  List<Object?> get props => [
    drawerHeading,
    showLoading,
    shouldAlwaysShowMoreButton,
    onMorePressed,
    buttons,
    overlayEntry,
    exit,
  ];
}

@immutable
class BottomButtonDefinition extends Equatable {
  final String buttonText;
  final String? drawerText;
  final String? icon;
  final String? drawerIcon;
  final bool enabled;
  final bool isBusy;
  final Key? key;
  final StButtonStyle? style;
  final void Function() onTap;
  final void Function()? onDisabledTap;

  const BottomButtonDefinition({
    required this.buttonText,
    required this.onTap,
    this.drawerText,
    this.enabled = true,
    this.isBusy = false,
    this.icon,
    this.style,
    this.drawerIcon,
    this.onDisabledTap,
    this.key,
  });

  factory BottomButtonDefinition.empty() {
    return BottomButtonDefinition(buttonText: "", onTap: () {});
  }

  @override
  List<Object?> get props => [
    buttonText,
    drawerText,
    icon,
    drawerIcon,
    enabled,
    isBusy,
    style,
    onTap,
    onDisabledTap,
    key,
    style,
  ];
}
