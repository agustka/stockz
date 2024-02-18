import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

class StTapVisual extends StatefulWidget {
  final BorderRadius? borderRadius;
  final ShapeBorder? shape;
  final ShapeBorder? customBorder;
  final Function()? onTap;
  final Function()? onLongPress;
  final Widget child;
  final Color? splashColor;
  final Color? highlightColor;
  final Color backgroundColor;
  final BuildContext? overrideContext;
  final bool enabled;
  final bool excludeFromSemantics;
  final bool useDebounce;
  final Duration? debounceTime;
  final bool noEffects;

  const StTapVisual({
    super.key,
    required this.onTap,
    required this.child,
    this.onLongPress,
    this.borderRadius,
    this.shape,
    this.customBorder,
    this.splashColor,
    this.highlightColor,
    this.overrideContext,
    this.debounceTime,
    this.backgroundColor = Colors.transparent,
    this.enabled = true,
    this.excludeFromSemantics = false,
    this.useDebounce = true,
    this.noEffects = false,
  });

  @override
  State<StatefulWidget> createState() => _IsbTapVisualState();
}

class _IsbTapVisualState extends State<StTapVisual> {
  late final IPollAndDebounce _debouncer;

  @override
  void initState() {
    super.initState();

    _debouncer = getIt<IPollAndDebounce>();
  }

  @override
  void dispose() {
    _debouncer.cancelDelayCall();

    super.dispose();
  }

  @override
  Widget build(BuildContext defaultContext) {
    if (!widget.enabled) {
      return widget.child;
    }
    final BuildContext context = widget.overrideContext ?? defaultContext;
    if (Platform.isIOS) {
      return StCupertinoTappable(
        onTap: () {
          if (widget.useDebounce) {
            _debouncer.delayCall(
              delay: Duration(milliseconds: widget.debounceTime?.inMilliseconds ?? 100),
              action: () {
                widget.onTap?.call();
              },
            );
          } else {
            widget.onTap?.call();
          }
        },
        onLongPress: widget.onLongPress,
        excludeFromSemantics: widget.excludeFromSemantics,
        child: Material(
          color: widget.backgroundColor,
          borderRadius: widget.borderRadius,
          shape: widget.shape,
          child: widget.child,
        ),
      );
    } else {
      return Material(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
        shape: widget.shape,
        child: InkWell(
          borderRadius: widget.borderRadius,
          customBorder: widget.customBorder,
          splashColor:
          widget.noEffects ? Colors.transparent : widget.splashColor ?? StTheme.of(context).colors.grey200,
          highlightColor: widget.noEffects ? Colors.transparent : widget.highlightColor,
          onTap: () {
            if (widget.useDebounce) {
              _debouncer.delayCall(
                delay: Duration(milliseconds: widget.debounceTime?.inMilliseconds ?? 100),
                action: () {
                  widget.onTap?.call();
                },
              );
            } else {
              widget.onTap?.call();
            }
          },
          onLongPress: widget.onLongPress,
          excludeFromSemantics: widget.excludeFromSemantics,
          child: widget.child,
        ),
      );
    }
  }
}
