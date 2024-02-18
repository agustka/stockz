import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      return Transform.scale(scale: 1.5, child: SvgPicture.asset(overrideBackIcon!));
    }
    return Padding(
      padding: const EdgeInsets.all(4),
      child: SvgPicture.asset(
        AppAssets.images.icBack,
        width: 18,
        height: 18,
        colorFilter: color?.svg,
      ),
    );
  }
}
