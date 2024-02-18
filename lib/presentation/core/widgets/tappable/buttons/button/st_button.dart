import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stockz/presentation/core/accessibility/accessibility.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

enum StButtonStyle {
  primary,
  secondary,
  tertiary,
}

class StButton extends StatelessWidget {
  static const double buttonHeight = 53;

  final VoidCallback onTap;
  final String? text;
  final String? icon;
  final Widget? child;
  final bool enabled;
  final bool busy;
  final VoidCallback? onDisabledTap;
  final StButtonStyle buttonStyle;
  final int? maxLines;
  final String? semanticLabel;

  const StButton({
    super.key,
    required this.onTap,
    this.text,
    this.icon,
    this.enabled = true,
    this.busy = false,
    this.onDisabledTap,
    this.child,
    this.buttonStyle = StButtonStyle.primary,
    this.maxLines,
    this.semanticLabel,
  });

  bool get isIOS => Platform.isIOS;
  bool get isAndroid => Platform.isAndroid;

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Semantics(
        label: semanticLabel ?? text,
        enabled: enabled,
        button: true,
        child: ExcludeSemantics(
          child: _getButton(context),
        ),
      ),
    );
  }

  VoidCallback? get _onButtonTap => enabled ? onTap : onDisabledTap;

  Widget _getButton(BuildContext context) {
    final StTheme theme = StTheme.of(context);
    final TextStyle textStyle = theme.fonts.body18.copyWith(color: _getTextColor(theme));

    return Material(
      color: _getBackgroundColor(theme),
      textStyle: textStyle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side:
        buttonStyle == StButtonStyle.secondary ? BorderSide(color: _getButtonBorderColor(theme)) : BorderSide.none,
      ),
      child: StTapVisual(
        splashColor: _getSplashColor(theme),
        highlightColor: Colors.transparent,
        onTap: busy ? () {} : (_onButtonTap ?? () {}),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: double.infinity,
            minHeight: buttonHeight,
          ),
          child: Align(
            heightFactor: 1,
            child: _getInnerButtonContent(context, theme: theme),
          ),
        ),
      ),
    );
  }

  Color _getButtonBorderColor(StTheme theme) {
    switch (buttonStyle) {
      case StButtonStyle.primary:
        return enabled ? theme.colors.red700 : theme.colors.red400;
      case StButtonStyle.secondary:
        return enabled ? theme.colors.grey400 : theme.colors.grey400;
      case StButtonStyle.tertiary:
        return theme.colors.grey0.withOpacity(0.4);
    }
  }

  Widget _getInnerButtonContent(BuildContext context, {required StTheme theme}) {
    if (busy) {
      Color busyColor = theme.colors.grey0;
      if (buttonStyle == StButtonStyle.secondary) {
        busyColor = theme.colors.grey600;
      }
      return StDotLoader(
        color: busyColor,
        size: 21,
      );
    }

    if (child != null) {
      return child!;
    }

    final Color textColor = _getTextColor(theme);
    final double iconHeight = 24.0 * Accessibility.of(context).uiScale;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            SvgPicture.asset(icon!, height: iconHeight, colorFilter: textColor.svg),
            const SizedBox(width: 13.0),
          ],
          Flexible(
            child: Text(
              text ?? "",
              maxLines: maxLines,
              overflow: maxLines != null ? TextOverflow.ellipsis : null,
              textAlign: TextAlign.center,
              style: theme.fonts.body16.copyWith(color: _getTextColor(theme)),
            ),
          ),
        ],
      ),
    );
  }

  Color _getBackgroundColor(StTheme theme) {
    switch (buttonStyle) {
      case StButtonStyle.primary:
        return enabled ? theme.colors.red600 : theme.colors.red400;
      case StButtonStyle.secondary:
        return enabled ? theme.colors.grey200 : theme.colors.grey200;
      case StButtonStyle.tertiary:
        return theme.colors.grey0;
    }
  }

  Color _getTextColor(StTheme theme) {
    switch (buttonStyle) {
      case StButtonStyle.primary:
        return theme.colors.grey0;
      case StButtonStyle.secondary:
        return enabled ? theme.colors.grey800 : theme.colors.grey500;
      case StButtonStyle.tertiary:
        return theme.colors.red600;
    }
  }

  Color _getSplashColor(StTheme theme) {
    if (isIOS) {
      return Colors.transparent;
    } else {
      if (buttonStyle == StButtonStyle.primary) {
        if (!enabled && onDisabledTap != null) {
          return theme.colors.red300;
        }
        return theme.colors.red700;
      } else {
        return theme.colors.grey300;
      }
    }
  }
}
