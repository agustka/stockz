import 'package:flutter/material.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

class StBack extends StatelessWidget {
  final VoidCallback onTap;
  final Color? color;
  final String? overrideBackIcon;

  const StBack({super.key, required this.onTap, this.color, this.overrideBackIcon});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: S.of(context).back,
      child: StTapVisual(
        onTap: onTap,
        useDebounce: false,
        borderRadius: const BorderRadius.all(Radius.circular(32)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _icon(context),
        ),
      ),
    );
  }

  Widget _icon(BuildContext context) {
    if (overrideBackIcon != null) {
      return Transform.scale(
        scale: 1.5,
        child: StSvg(
          overrideBackIcon ?? AppAssets.icons.icTransparent,
          width: 16,
          height: 16,
          color: StTheme.of(context).scheme.primary,
        ),
      );
    }
    return Padding(
      padding: const EdgeInsets.all(4),
      child: StSvg(
        AppAssets.icons.icBack,
        width: 18,
        height: 18,
        color: color ?? StTheme.of(context).scheme.primary,
      ),
    );
  }
}
