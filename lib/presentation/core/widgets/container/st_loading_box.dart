import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

part 'st_shimmer.dart';

class StLoadingBox extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;
  final double borderRadius;
  final BorderRadius? customBorderRadius;
  final Color? baseColor;

  const StLoadingBox({
    super.key,
    this.width,
    this.height,
    this.child,
    this.baseColor,
    this.customBorderRadius,
    this.borderRadius = 8,
  }) : assert(!(height == null && child == null), "Supply either height or child. Both are null.");

  @override
  Widget build(BuildContext context) {
    return _Shimmer.fromColors(
      highlightColor: StTheme.of(context).scheme.secondary.withAlpha(100),
      baseColor: baseColor ?? StTheme.of(context).scheme.primary,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: customBorderRadius ?? BorderRadius.circular(borderRadius),
          color: StTheme.of(context).scheme.surface,
        ),
        child: _getBody(context),
      ),
    );
  }

  Widget _getBody(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: child,
    );
  }
}
