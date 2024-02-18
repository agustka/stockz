import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StCupertinoTappable extends StatefulWidget {
  final Function()? onTap;
  final Function()? onLongPress;
  final Widget child;
  final bool excludeFromSemantics;

  const StCupertinoTappable({
    super.key,
    this.onTap,
    this.onLongPress,
    required this.child,
    this.excludeFromSemantics = false,
  });

  @override
  State<StatefulWidget> createState() {
    return _StCupertinoTappableState();
  }
}

class _StCupertinoTappableState extends State<StCupertinoTappable> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.onTap == null,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onCancelTap,
        onLongPressUp: widget.onLongPress,
        excludeFromSemantics: widget.excludeFromSemantics,
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 80),
          opacity: tapped ? 0.4 : 1,
          child: widget.child,
        ),
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    setState(() {
      tapped = true;
    });
  }

  void _onCancelTap() {
    setState(() {
      tapped = false;
    });
  }

  Future _onTapUp(TapUpDetails details) async {
    setState(() {
      tapped = false;
    });
    await Future.delayed(const Duration(milliseconds: 100));
    widget.onTap?.call();
  }
}
