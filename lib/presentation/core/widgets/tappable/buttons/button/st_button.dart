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
        return enabled ? theme.scheme.primary : theme.scheme.primaryFixedDim;
      case StButtonStyle.secondary:
        return enabled ? theme.scheme.onSurface : theme.scheme.onSurfaceVariant;
      case StButtonStyle.tertiary:
        return theme.scheme.surface.withOpacity(0.4);
    }
  }

  Widget _getInnerButtonContent(BuildContext context, {required StTheme theme}) {
    if (busy) {
      Color busyColor = theme.scheme.surface;
      if (buttonStyle == StButtonStyle.secondary) {
        busyColor = theme.scheme.onSurface;
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
        return enabled ? theme.scheme.primary : theme.scheme.primaryFixedDim;
      case StButtonStyle.secondary:
        return enabled ? theme.scheme.secondaryFixedDim : theme.scheme.secondaryFixedDim;
      case StButtonStyle.tertiary:
        return theme.scheme.onSurfaceVariant;
    }
  }

  Color _getTextColor(StTheme theme) {
    switch (buttonStyle) {
      case StButtonStyle.primary:
        return theme.scheme.onPrimary;
      case StButtonStyle.secondary:
        return enabled ? theme.scheme.onSurface : theme.scheme.onSurfaceVariant;
      case StButtonStyle.tertiary:
        return theme.scheme.onTertiary;
    }
  }

  Color _getSplashColor(StTheme theme) {
    if (isIOS) {
      return Colors.transparent;
    } else {
      if (buttonStyle == StButtonStyle.primary) {
        if (!enabled && onDisabledTap != null) {
          return theme.scheme.secondary;
        }
        return theme.scheme.tertiary;
      } else {
        return theme.scheme.onSurfaceVariant;
      }
    }
  }
}
