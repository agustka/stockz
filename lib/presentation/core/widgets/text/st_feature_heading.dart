import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:stockz/application/core/navigation/navigation_cubit.dart';
import 'package:stockz/domain/core/navigation/named_route.dart';
import 'package:stockz/presentation/core/accessibility/accessibility.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

enum StFeatureHeadingSize {
  huge,
  large,
  medium,
  small,
}

extension _StFeatureHeadingSizeX on StFeatureHeadingSize {
  TextStyle _getTitleFontStyle(StThemeFonts fonts) => switch (this) {
    StFeatureHeadingSize.huge => fonts.body30.bold.primary,
    StFeatureHeadingSize.large => fonts.body24.bold.primary,
    StFeatureHeadingSize.medium => fonts.body22.bold.primary,
    StFeatureHeadingSize.small => fonts.body20.bold.primary,
  };

  double _getTrailingIconSize(TextScaler scaler, StThemeFonts fonts) => switch (this) {
    StFeatureHeadingSize.huge => scaler.scale(fonts.body30.bold.fontSize!),
    StFeatureHeadingSize.large => scaler.scale(fonts.body24.bold.fontSize!),
    StFeatureHeadingSize.medium => scaler.scale(fonts.body22.bold.fontSize!),
    StFeatureHeadingSize.small => scaler.scale(fonts.body20.bold.fontSize!),
  };

  TextStyle _getSubTitleFontStyle(StThemeFonts fonts) => fonts.body16;

  double _getTopPadding() => switch (this) {
    StFeatureHeadingSize.huge => 24,
    StFeatureHeadingSize.large => 12,
    StFeatureHeadingSize.medium => 8,
    StFeatureHeadingSize.small => 4,
  };

  double _getBottomPadding() => switch (this) {
    StFeatureHeadingSize.huge => 12,
    StFeatureHeadingSize.large => 8,
    StFeatureHeadingSize.medium => 4,
    StFeatureHeadingSize.small => 4,
  };
}

class StFeatureHeading extends StatefulWidget {
  final String text;
  final String subText;
  final VoidCallback? onSubTextPressed;
  final bool loading;
  final String? iconPath;
  final String? iconSemanticsLabel;
  final Key? iconKey;
  final VoidCallback? onIconPressed;
  final StFeatureHeadingSize? overrideSize;

  StFeatureHeading({
    super.key,
    required this.text,
    this.loading = false,
    this.subText = "",
    this.onSubTextPressed,
    this.iconPath,
    this.iconSemanticsLabel,
    this.iconKey,
    this.onIconPressed,
    this.overrideSize,
  })  : assert(
  iconPath == null || iconPath.endsWith(".svg"),
  "iconPath must point to .svg picture",
  ),
        assert(
        iconPath == null || iconSemanticsLabel != null,
        "iconSemanticsLabel must be provided so screen readers can read it",
        ),
        assert(
        onIconPressed == null || iconPath != null,
        "iconPath must be provided to show icon which can be pressed",
        );

  @override
  State<StatefulWidget> createState() {
    return _IsbFeatureHeadingState();
  }
}

class _IsbFeatureHeadingState extends State<StFeatureHeading> {
  StFeatureHeadingSize? _size;

  @override
  void initState() {
    super.initState();
    final List<NamedRoute> routes = getIt<NavigationCubit>().state.routeStack;
    switch (routes.length) {
      case 0:
      case 1:
        _size = StFeatureHeadingSize.huge;
      case 2:
        _size = StFeatureHeadingSize.large;
      case 3:
        _size = StFeatureHeadingSize.medium;
      default:
        _size = StFeatureHeadingSize.small;
    }
  }

  @override
  Widget build(BuildContext context) {
    final StFeatureHeadingSize size = _getSize();

    final bool inAccessibilityMode = Accessibility.of(context).isInAccessibilityMode;
    final TextStyle titleFontStyle = size._getTitleFontStyle(StTheme.of(context).fonts);
    final TextStyle subtitleFontStyle = size._getSubTitleFontStyle(StTheme.of(context).fonts);
    final double iconSize = size._getTrailingIconSize(MediaQuery.textScalerOf(context), StTheme.of(context).fonts);
    final double topPadding = size._getTopPadding();
    final double bottomPadding = size._getBottomPadding();
    return Padding(
      padding: EdgeInsets.only(top: topPadding, bottom: bottomPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StFeatureHeadingTitleAndTrailingIcon.fromAccessibilityMode(
            inAccessibilityMode: inAccessibilityMode,
            loading: widget.loading,
            text: widget.text,
            fontStyle: titleFontStyle,
            iconSize: iconSize,
            iconPath: widget.iconPath,
            iconKey: widget.iconKey,
            iconSemanticsLabel: widget.iconSemanticsLabel,
            onIconPressed: widget.onIconPressed,
          ),
          _IsbFeatureHeadingSubtitle.fromAccessibilityMode(
            inAccessibilityMode: inAccessibilityMode,
            subtitle: widget.subText,
            onSubtitlePressed: widget.onSubTextPressed,
            fontStyle: subtitleFontStyle,
            loading: widget.loading,
          ),
        ],
      ),
    );
  }

  StFeatureHeadingSize _getSize() {
    return widget.overrideSize ?? _size ?? StFeatureHeadingSize.medium;
  }
}

class _StFeatureHeadingTitleAndTrailingIcon extends StatelessWidget {
  final String text;
  final TextStyle fontStyle;
  final int maxLinesText;
  final String? iconPath;
  final Key? iconKey;
  final String? iconSemanticsLabel;
  final double? iconSize;
  final VoidCallback? onIconPressed;
  final bool loading;

  const _StFeatureHeadingTitleAndTrailingIcon({
    super.key,
    required this.text,
    required this.fontStyle,
    required this.maxLinesText,
    required this.iconPath,
    required this.iconKey,
    required this.iconSemanticsLabel,
    required this.iconSize,
    required this.onIconPressed,
    required this.loading,
  });

  factory _StFeatureHeadingTitleAndTrailingIcon.fromAccessibilityMode({
    Key? key,
    required bool inAccessibilityMode,
    required String text,
    required TextStyle fontStyle,
    required Key? iconKey,
    required String? iconPath,
    required String? iconSemanticsLabel,
    required double? iconSize,
    required VoidCallback? onIconPressed,
    required bool loading,
  }) {
    return _StFeatureHeadingTitleAndTrailingIcon(
      key: key,
      text: text,
      fontStyle: fontStyle,
      maxLinesText: inAccessibilityMode ? 3 : 2,
      iconKey: iconKey,
      iconPath: iconPath,
      iconSemanticsLabel: iconSemanticsLabel,
      iconSize: iconSize,
      onIconPressed: onIconPressed,
      loading: loading,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: StTheme.sidePadding),
            child: _IsbFeatureHeadingLoading(
              loading: loading,
              child: StText(
                text,
                style: fontStyle,
                maxLines: maxLinesText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        _IsbFeatureHeadingTrailingIcon(
          iconKey: iconKey,
          loading: loading,
          size: iconSize,
          iconPath: iconPath,
          semanticsLabel: iconSemanticsLabel,
          onIconPressed: onIconPressed,
        ),
      ],
    );
  }
}

class _IsbFeatureHeadingTrailingIcon extends StatelessWidget {
  final String? iconPath;
  final Key? iconKey;
  final String? semanticsLabel;
  final VoidCallback? onIconPressed;
  final double? size;
  final bool loading;

  const _IsbFeatureHeadingTrailingIcon({
    super.key,
    required this.iconKey,
    required this.iconPath,
    required this.semanticsLabel,
    required this.onIconPressed,
    required this.size,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    if (iconPath == null) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Semantics(
        label: semanticsLabel,
        button: true,
        container: true,
        enabled: !loading,
        child: StTapVisual(
          key: iconKey,
          onTap: onIconPressed,
          excludeFromSemantics: true,
          borderRadius: BorderRadius.circular(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: _IsbFeatureHeadingLoading(
              loading: loading,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: (size ?? 8) - 8.0, maxWidth: (size ?? 8) - 8.0),
                child: StSvg(
                  iconPath!,
                  width: (size ?? 8) - 8.0,
                  height: (size ?? 8) - 8.0,
                  color: StTheme.of(context).scheme.primary,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _IsbFeatureHeadingSubtitle extends StatelessWidget {
  final String subtitle;
  final TextStyle fontStyle;
  final int maxLines;
  final VoidCallback? onSubtitlePressed;
  final bool loading;

  const _IsbFeatureHeadingSubtitle({
    super.key,
    required this.subtitle,
    required this.fontStyle,
    required this.maxLines,
    required this.onSubtitlePressed,
    required this.loading,
  });

  factory _IsbFeatureHeadingSubtitle.fromAccessibilityMode({
    Key? key,
    required bool inAccessibilityMode,
    required String subtitle,
    required TextStyle fontStyle,
    required VoidCallback? onSubtitlePressed,
    required bool loading,
  }) {
    return _IsbFeatureHeadingSubtitle(
      key: key,
      subtitle: subtitle,
      fontStyle: fontStyle,
      maxLines: inAccessibilityMode ? 2 : 1,
      onSubtitlePressed: onSubtitlePressed,
      loading: loading,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (subtitle.isEmpty) {
      return const SizedBox.shrink();
    }
    final bool isSubTextTappable = onSubtitlePressed != null;
    final double subTextTopPadding = isSubTextTappable ? 4 : 2;
    final double subTextBottomPadding = isSubTextTappable ? 4 : 0;

    return StTapVisual(
      enabled: isSubTextTappable,
      onTap: onSubtitlePressed,
      borderRadius: BorderRadius.circular(8.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: StTheme.sidePadding),
        child: Padding(
          padding: EdgeInsets.only(top: subTextTopPadding, bottom: subTextBottomPadding),
          child: _IsbFeatureHeadingLoading(
            loading: loading,
            child: StText(
              subtitle,
              style: fontStyle,
              maxLines: maxLines,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}

class _IsbFeatureHeadingLoading extends StatelessWidget {
  final bool loading;
  final Widget child;

  const _IsbFeatureHeadingLoading({
    super.key,
    required this.loading,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Widget child = this.child;
    if (loading) {
      child = StLoadingBox(child: child);
    }
    return child;
  }
}
