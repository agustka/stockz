import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stockz/presentation/core/accessibility/accessibility.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

class StSvg extends StatelessWidget {
  final String asset;
  final double width;
  final double height;
  final Color? color;
  final bool accessibilityScaling;

  const StSvg(
      this.asset, {
        super.key,
        required this.width,
        required this.height,
        this.color,
        this.accessibilityScaling = true,
      });

  @override
  Widget build(BuildContext context) {
    final Widget svg;
    final double scale = max(1, Accessibility.of(context).uiScale);
    double imageWidth = width;
    double imageHeight = height;

    if (accessibilityScaling) {
      imageWidth = width * scale;
      imageHeight = height * scale;
    }

    if (asset.startsWith("http")) {
      svg = SvgPicture.network(asset, width: imageWidth, height: imageHeight, colorFilter: color?.svg);
    } else {
      svg = SvgPicture.asset(asset, width: imageWidth, height: imageHeight, colorFilter: color?.svg);
    }
    return ConstrainedBox(constraints: BoxConstraints(maxWidth: imageWidth, maxHeight: imageHeight), child: svg);
  }
}
