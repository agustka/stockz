import 'package:flutter/material.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

class StCard extends StatelessWidget {
  final Widget child;
  final BorderRadius? customBorderRadius;
  final Color? backgroundColor;
  final Color? shadowColor;
  final double elevation;

  const StCard({
    super.key,
    required this.child,
    this.customBorderRadius,
    this.backgroundColor,
    this.shadowColor,
    this.elevation = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: customBorderRadius ?? BorderRadius.circular(8),
      ),
      elevation: elevation,
      shadowColor: shadowColor ?? StTheme.of(context).colors.grey100.withAlpha(20),
      color: backgroundColor ?? StTheme.of(context).colors.grey0,
      child: child,
    );
  }
}
