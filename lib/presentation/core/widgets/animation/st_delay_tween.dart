import 'dart:math' as math show pi, sin;
import 'package:flutter/widgets.dart';

class StDelayTween extends Tween<double> {
  final double delay;

  StDelayTween({super.begin, super.end, required this.delay});

  @override
  double lerp(double t) => super.lerp((math.sin((t - delay) * 2 * math.pi) + 1) / 2);

  @override
  double evaluate(Animation<double> animation) => lerp(animation.value);
}
