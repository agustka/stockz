import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

typedef IsbThemeBuilder = Widget Function(StTheme theme);

class StThemeProvider extends StatelessWidget {
  /// Provides [StTheme] down the tree for access via [StTheme.of].
  const StThemeProvider({super.key, required this.builder});

  final IsbThemeBuilder builder;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StTheme(),
      child: Builder(
        builder: (BuildContext context) {
          return builder(StTheme.of(context));
        },
      ),
    );
  }
}
