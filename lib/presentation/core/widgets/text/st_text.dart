import 'package:flutter/material.dart';

final class StText extends StatelessWidget {
  final String data;
  final TextStyle style;
  final bool container;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final double? letterSpacing;
  final String? semanticsLabel;

  const StText(
      this.data, {
        super.key,
        required this.style,
        this.container = false,
        this.color,
        this.textAlign,
        this.maxLines,
        this.overflow,
        this.fontWeight,
        this.letterSpacing,
        this.semanticsLabel,
      });

  @override
  Widget build(BuildContext context) {
    final Widget text = Text(
      data,
      style: style.copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
    );

    if (container) {
      return Semantics(
        container: true,
        label: semanticsLabel,
        child: ExcludeSemantics(child: text),
      );
    }

    return text;
  }
}

final class StFittedText extends StText {
  const StFittedText(
      super.data, {
        required super.style,
        super.color,
        super.textAlign,
        super.fontWeight,
      }) : super(maxLines: 1);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: Alignment.centerLeft,
      fit: BoxFit.scaleDown,
      child: super.build(context),
    );
  }
}
