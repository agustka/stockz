import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stockz/presentation/core/extensions/spaced_widgets.dart';
import 'package:stockz/presentation/core/utils/random_getter.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

class StListTile extends StatelessWidget {
  static TextStyle getLeadingDefaultStyle(StTheme theme) => theme.fonts.body16;
  static TextStyle getSubLeadingDefaultStyle(StTheme theme) => theme.fonts.body14.light;
  static TextStyle getTrailingDefaultStyle(StTheme theme) => theme.fonts.body16;
  static TextStyle getSubTrailingDefaultStyle(StTheme theme) => theme.fonts.body14.light;

  final EdgeInsets contentPadding;
  final Widget? leading;
  final Widget? trailing;
  final String? leadingText;
  final TextStyle? leadingTextStyle;
  final bool leadingLoading;
  final String? trailingText;
  final TextStyle? trailingTextStyle;
  final bool trailingLoading;
  final double overflowFlexBalance;
  final String? subLeadingText;
  final bool subLeadingLoading;
  final TextStyle? subLeadingTextStyle;
  final String? subTrailingText;
  final TextStyle? subTrailingTextStyle;
  final bool subTrailingLoading;
  final double subOverflowFlexBalance;
  final VoidCallback? onTap;
  final bool enabled;
  final bool loading;
  final bool accessibility;

  TextStyle _getLeadingStyle(StTheme theme) => leadingTextStyle ?? getLeadingDefaultStyle(theme);
  TextStyle _getTrailingStyle(StTheme theme) => trailingTextStyle ?? getTrailingDefaultStyle(theme);
  TextStyle _getSubLeadingStyle(StTheme theme) => subLeadingTextStyle ?? getSubLeadingDefaultStyle(theme);
  TextStyle _getSubTrailingStyle(StTheme theme) => subTrailingTextStyle ?? getSubTrailingDefaultStyle(theme);

  const StListTile({
    super.key,
    this.contentPadding = const EdgeInsets.all(StTheme.sidePadding),
    this.leading,
    this.trailing,
    this.leadingText,
    this.leadingTextStyle,
    this.leadingLoading = false,
    this.trailingText,
    this.trailingTextStyle,
    this.trailingLoading = false,
    this.overflowFlexBalance = 0.5,
    this.subLeadingText,
    this.subLeadingTextStyle,
    this.subLeadingLoading = false,
    this.subTrailingText,
    this.subTrailingTextStyle,
    this.subTrailingLoading = false,
    this.subOverflowFlexBalance = 0.5,
    this.onTap,
    this.enabled = true,
    this.loading = false,
    this.accessibility = false,
  })  : assert(overflowFlexBalance >= .1 && overflowFlexBalance <= .9),
        assert(subOverflowFlexBalance >= .1 && subOverflowFlexBalance <= .9);

  @override
  Widget build(BuildContext context) {
    final StTheme theme = StTheme.of(context);
    final Widget? leadingText = this.leadingText != null || leadingLoading
        ? _IsbListTileText.fromAccessibility(
            accessibility: accessibility,
            loading: leadingLoading,
            loadingWidth: RandomGetter().getRange(min: 150, max: 200),
            style: _getLeadingStyle(theme),
            text: this.leadingText,
          )
        : null;
    final Widget? trailingText = this.trailingText != null || trailingLoading
        ? _IsbListTileText.fromAccessibility(
            accessibility: accessibility,
            loading: trailingLoading,
            loadingWidth: RandomGetter().getRange(min: 150, max: 200),
            style: _getTrailingStyle(theme),
            text: this.trailingText,
          )
        : null;
    final Widget? subLeadingText = this.subLeadingText != null || subLeadingLoading
        ? _IsbListTileText.fromAccessibility(
            accessibility: accessibility,
            loading: subLeadingLoading,
            loadingWidth: RandomGetter().getRange(min: 100, max: 130),
            style: _getSubLeadingStyle(theme),
            text: this.subLeadingText,
          )
        : null;
    final Widget? subTrailingText = this.subTrailingText != null || subTrailingLoading
        ? _IsbListTileText.fromAccessibility(
            accessibility: accessibility,
            loading: subTrailingLoading,
            loadingWidth: RandomGetter().getRange(min: 100, max: 130),
            style: _getSubTrailingStyle(theme),
            text: this.subTrailingText,
            normalModeTextAlign: TextAlign.end,
          )
        : null;

    Widget child = MergeSemantics(
      child: StTapVisual(
        enabled: enabled,
        onTap: onTap,
        child: Padding(
          padding: contentPadding,
          child: _IsbListTileLeadingTrailing(
            leading: leading,
            trailing: trailing,
            child: _IsbListTileGridCell.fromAccessibility(
              accessibility: accessibility,
              overflowFlexBalance: overflowFlexBalance,
              subOverflowFlexBalance: subOverflowFlexBalance,
              leading: leadingText,
              trailing: trailingText,
              subLeading: subLeadingText,
              subTrailing: subTrailingText,
            ),
          ),
        ),
      ),
    );
    if (loading) {
      child = StLoadingBox(child: child);
    }
    return child;
  }
}

class _IsbListTileText extends StatelessWidget {
  final bool loading;
  final String? text;
  final TextStyle style;
  final TextAlign textAlign;
  final double loadingWidth;

  const _IsbListTileText({
    super.key,
    required this.text,
    required this.loading,
    required this.style,
    this.textAlign = TextAlign.start,
    required this.loadingWidth,
  });

  factory _IsbListTileText.fromAccessibility({
    Key? key,
    required bool accessibility,
    required bool loading,
    required String? text,
    required TextStyle style,
    required double loadingWidth,
    TextAlign normalModeTextAlign = TextAlign.start,
  }) {
    final TextAlign textAlign = accessibility ? TextAlign.center : normalModeTextAlign;
    return _IsbListTileText(
      key: key,
      loading: loading,
      text: text,
      style: style,
      loadingWidth: loadingWidth,
      textAlign: textAlign,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return StLoadingBox(
        child: Padding(
          padding: EdgeInsets.only(right: loadingWidth),
          child: StText(
            "A",
            style: style,
          ),
        ),
      );
    }
    return StText(
      text ?? "",
      style: style,
      textAlign: textAlign,
    );
  }
}

class _IsbListTileLeadingTrailing extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final Widget child;

  const _IsbListTileLeadingTrailing({
    super.key,
    required this.child,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];
    if (leading != null) {
      children.add(leading!);
    }
    children.add(Expanded(child: child));
    if (trailing != null) {
      children.add(trailing!);
    }
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children.spaced(16),
    );
  }
}

abstract class _IsbListTileGridCell extends StatelessWidget {
  final double overflowFlexBalance;
  final double subOverflowFlexBalance;
  final Widget? leading;
  final Widget? trailing;
  final Widget? subLeading;
  final Widget? subTrailing;

  const _IsbListTileGridCell({
    super.key,
    this.overflowFlexBalance = 0.5,
    this.subOverflowFlexBalance = 0.5,
    this.leading,
    this.trailing,
    this.subLeading,
    this.subTrailing,
  });

  factory _IsbListTileGridCell.fromAccessibility({
    Key? key,
    required bool accessibility,
    required double overflowFlexBalance,
    required double subOverflowFlexBalance,
    Widget? leading,
    Widget? trailing,
    Widget? subLeading,
    Widget? subTrailing,
  }) {
    if (accessibility) {
      return _IsbListTileGridCellAccessibility(
        key: key,
        leading: leading,
        trailing: trailing,
        subLeading: subLeading,
        subTrailing: subTrailing,
      );
    }
    return _IsbListTileGridCellNormal(
      key: key,
      overflowFlexBalance: overflowFlexBalance,
      subOverflowFlexBalance: subOverflowFlexBalance,
      leading: leading,
      trailing: trailing,
      subLeading: subLeading,
      subTrailing: subTrailing,
    );
  }
}

class _IsbListTileGridCellNormal extends _IsbListTileGridCell {
  const _IsbListTileGridCellNormal({
    super.key,
    required super.overflowFlexBalance,
    required super.subOverflowFlexBalance,
    super.leading,
    super.trailing,
    super.subLeading,
    super.subTrailing,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];
    if (leading != null || trailing != null) {
      children.add(
        _IsbListTileRow(
          leading: leading,
          trailing: trailing,
          overflowFlexBalance: overflowFlexBalance,
        ),
      );
    }
    if (subLeading != null || subTrailing != null) {
      children.add(
        _IsbListTileRow(
          leading: subLeading,
          trailing: subTrailing,
          overflowFlexBalance: subOverflowFlexBalance,
        ),
      );
    }

    return Semantics(
      container: true,
      child: Column(
        children: children.spaced(8),
      ),
    );
  }
}

class _IsbListTileGridCellAccessibility extends _IsbListTileGridCell {
  const _IsbListTileGridCellAccessibility({
    super.key,
    super.leading,
    super.trailing,
    super.subLeading,
    super.subTrailing,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> leadingChildren = [];
    if (leading != null) {
      leadingChildren.add(leading!);
    }
    if (subLeading != null) {
      leadingChildren.add(subLeading!);
    }
    final List<Widget> trailingChildren = [];
    if (trailing != null) {
      trailingChildren.add(trailing!);
    }
    if (subTrailing != null) {
      trailingChildren.add(subTrailing!);
    }
    final List<List<Widget>> children = [
      leadingChildren,
      trailingChildren,
    ];

    final Widget child = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: children
          .map(
            (e) => Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: e.spaced(8),
            ),
          )
          .spaced(16)
          .toList(),
    );

    return Semantics(
      container: true,
      child: child,
    );
  }
}

class _IsbListTileRow extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final double overflowFlexBalance;

  const _IsbListTileRow({
    super.key,
    required this.overflowFlexBalance,
    this.leading,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    if (this.leading != null && this.trailing != null) {
      return _IsbListTileSelfBalancingRow(
        leftChild: this.leading!,
        rightChild: this.trailing!,
        breakOverflowPoint: overflowFlexBalance,
      );
    }

    final Widget leading = this.leading != null ? Flexible(child: this.leading!) : const SizedBox.shrink();
    const Widget spacer = SizedBox.shrink();
    final Widget trailing = this.trailing != null ? Flexible(child: this.trailing!) : const SizedBox.shrink();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading,
        spacer,
        trailing,
      ],
    );
  }
}

class _IsbListTileSelfBalancingRow extends MultiChildRenderObjectWidget {
  final Widget leftChild;
  final Widget rightChild;
  final double spacing;
  final double breakOverflowPoint;

  _IsbListTileSelfBalancingRow({
    super.key,
    required this.leftChild,
    required this.rightChild,
    this.spacing = 8,
    this.breakOverflowPoint = 0.5,
  }) : super(children: [leftChild, rightChild]);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _IsbSelfBalancingRowRenderObject(
      spacing: spacing,
      breakOverflowPoint: breakOverflowPoint,
    );
  }
}

class _IsbSelfBalancingRowParentData extends ContainerBoxParentData<RenderBox> {}

class _IsbSelfBalancingRowRenderObject extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, _IsbSelfBalancingRowParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, _IsbSelfBalancingRowParentData> {
  final double spacing;
  final double breakOverflowPoint;

  _IsbSelfBalancingRowRenderObject({
    required this.spacing,
    required this.breakOverflowPoint,
  });

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! _IsbSelfBalancingRowParentData) {
      child.parentData = _IsbSelfBalancingRowParentData();
    }
  }

  @override
  void performLayout() {
    final RenderBox leftChild = firstChild!;
    final RenderBox rightChild = lastChild!;
    final _IsbSelfBalancingRowParentData leftChildParentData = leftChild.parentData! as _IsbSelfBalancingRowParentData;
    final _IsbSelfBalancingRowParentData rightChildParentData =
        rightChild.parentData! as _IsbSelfBalancingRowParentData;

    leftChild.layout(
      BoxConstraints(
        maxWidth: constraints.maxWidth,
        maxHeight: constraints.maxHeight,
      ),
      parentUsesSize: true,
    );
    rightChild.layout(
      BoxConstraints(
        maxWidth: constraints.maxWidth,
        maxHeight: constraints.maxHeight,
      ),
      parentUsesSize: true,
    );

    final double leftChildWidth = leftChild.size.width;
    final double rightChildWidth = rightChild.size.width;
    final double childrenWidth = leftChildWidth + rightChildWidth + spacing;
    leftChildParentData.offset = Offset.zero;
    size = Size(constraints.maxWidth, max(leftChild.size.height, rightChild.size.height));

    if (childrenWidth <= constraints.maxWidth) {
      rightChildParentData.offset = Offset(constraints.maxWidth - rightChildWidth, 0);
      return;
    }

    final double leftChildMaxWidth = constraints.maxWidth * breakOverflowPoint - spacing / 2;
    final double rightChildMaxWidth = constraints.maxWidth * (1 - breakOverflowPoint) - spacing / 2;

    double leftChildAdjustedWidth;
    double rightChildAdjustedWidth;

    if (leftChildWidth >= leftChildMaxWidth && rightChildWidth >= rightChildMaxWidth) {
      leftChildAdjustedWidth = leftChildMaxWidth;
      rightChildAdjustedWidth = rightChildMaxWidth;
    } else if (leftChildWidth >= leftChildMaxWidth) {
      rightChildAdjustedWidth = rightChildWidth;
      leftChildAdjustedWidth = constraints.maxWidth - spacing - rightChildWidth;
    } else if (rightChildWidth >= rightChildMaxWidth) {
      leftChildAdjustedWidth = leftChildWidth;
      rightChildAdjustedWidth = constraints.maxWidth - spacing - leftChildAdjustedWidth;
    } else {
      leftChildAdjustedWidth = leftChildWidth - spacing / 2;
      rightChildAdjustedWidth = rightChildWidth - spacing / 2;
    }

    leftChild.layout(
      BoxConstraints(
        maxWidth: leftChildAdjustedWidth,
        maxHeight: constraints.maxHeight,
      ),
      parentUsesSize: true,
    );
    rightChild.layout(
      BoxConstraints(
        maxWidth: rightChildAdjustedWidth,
        maxHeight: constraints.maxHeight,
      ),
      parentUsesSize: true,
    );
    rightChildParentData.offset = Offset(constraints.maxWidth - rightChildAdjustedWidth, 0);
    size = Size(constraints.maxWidth, max(leftChild.size.height, rightChild.size.height));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }

  @override
  bool hitTestSelf(Offset position) {
    return true;
  }
}
