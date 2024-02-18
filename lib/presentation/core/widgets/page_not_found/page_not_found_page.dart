import 'package:flutter/material.dart';
import 'package:stockz/application/core/navigation/navigation_cubit.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

class PageNotFoundPage extends StatelessWidget {
  static Widget creator(RouteArguments args) {
    return PageNotFoundPage(isHidden: args.getBool("isHidden") ?? false);
  }

  final bool isHidden;

  const PageNotFoundPage({super.key, required this.isHidden});

  @override
  Widget build(BuildContext context) {
    return StScaffold(
      appBar: const StAppBar(),
      child: Column(
        children: [
          Expanded(
            child: StFeatureError(
              message: "${S.of(context).page_not_found_message} ${isHidden ? " 🙈" : ""}",
              retryEnabled: false,
              onCancel: () {
                getIt<NavigationCubit>().pop();
              },
              onRetry: () {
                getIt<NavigationCubit>().pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
