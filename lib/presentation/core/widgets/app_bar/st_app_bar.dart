import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stockz/application/core/navigation/navigation_cubit.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

class StAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBack;
  final Color? backgroundColor;
  final Color? backColor;
  final Color? closeColor;
  final String? title;
  final Widget? titleWidget;
  final VoidCallback? onBack;
  final VoidCallback? onClose;
  final bool centerTitle;
  final Widget? action;
  final String? overrideBackIcon;

  const StAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.onBack,
    this.onClose,
    this.showBack = true,
    this.centerTitle = true,
    this.backgroundColor,
    this.backColor,
    this.closeColor,
    this.action,
    this.overrideBackIcon,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      leading: _getBackIcon(context),
      backgroundColor: backgroundColor ?? StTheme.of(context).scheme.onSurfaceVariant,
      actions: _getActions(context),
      centerTitle: centerTitle,
      title: _getLabelWidget(context),
      automaticallyImplyLeading: false,
    );
  }

  List<Widget> _getActions(BuildContext context) {
    final List<Widget?> nulls = [action, _getCloseIcon(context)].where((Widget? element) => element != null).toList();
    return nulls.where((Widget? element) => element != null).map((Widget? e) => e!).toList();
  }

  Widget? _getCloseIcon(BuildContext context) {
    if (onClose != null) {
      return Semantics(
        value: S.of(context).close,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(34),
          child: StTapVisual(
            onTap: onClose,
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: StSvg(
                AppAssets.icons.icX,
                width: 24,
                height: 24,
                color: StTheme.of(context).scheme.onSurfaceVariant,
              ),
            ),
          ),
        ),
      );
    }
    return null;
  }

  Widget? _getBackIcon(BuildContext context) {
    if (showBack) {
      final dynamic Function() backAction = onBack ?? () => context.read<NavigationCubit>().pop();

      return StBack(
        color: backColor ?? StTheme.of(context).scheme.primary,
        onTap: backAction,
        overrideBackIcon: overrideBackIcon,
      );
    }
    return null;
  }

  Widget _getLabelWidget(BuildContext context) {
    if (titleWidget != null) {
      return titleWidget!;
    }
    return StText(title ?? "", style: StTheme.of(context).fonts.body13.light);
  }
}
