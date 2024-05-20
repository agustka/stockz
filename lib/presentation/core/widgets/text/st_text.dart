import 'package:flutter/material.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

enum TextType {
  large,
  medium,
  small,
}

class StText extends StatelessWidget {
  final String text;
  final TextType type;

  const StText(this.text, this.type, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _getStyle(context),
    );
  }

  TextStyle _getStyle(BuildContext context) {
    final StTheme theme = StTheme.of(context);
    switch (type) {
      case TextType.large:
        return theme.fonts.body25;
      case TextType.medium:
        return theme.fonts.body16;
      case TextType.small:
        return theme.fonts.body14;
    }
  }
}
