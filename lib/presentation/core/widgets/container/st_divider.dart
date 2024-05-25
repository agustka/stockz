import 'package:flutter/material.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

class StDivider extends StatelessWidget {
  final Color? color;
  final double? thickness;
  final double? height;

  const StDivider({super.key, this.color, this.thickness = 1, this.height = 1});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? StTheme.of(context).scheme.onSurfaceVariant,
      thickness: thickness,
      height: height,
    );
  }
}
