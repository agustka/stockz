import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stockz/application/core/navigation/navigation_cubit.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/domain/core/navigation/route_arguments.dart';
import 'package:stockz/presentation/core/accessibility/accessibility.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/utils/deep_link_controller.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/presentation/overview/overview_page.dart';

class RootPage extends StatefulWidget {
  static Widget creator(_) => const RootPage();

  const RootPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _RootPageState();
  }
}

class _RootPageState extends State<RootPage> {
  PageController? _controller;
  DeepLinkController? _deepLinkController;
  int _selPage = 0;

  @override
  void initState() {
    super.initState();

    _controller = PageController();
    _deepLinkController = DeepLinkController(const RouteArguments.empty());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationCubit, NavigationState>(
      listener: (BuildContext context, NavigationState state) {
        if (state.status == NavigationStatus.gotoTab) {
          _controller?.jumpToPage(state.tabIndex);
          _deepLinkController?.arguments = state.link.arguments;
        }
      },
      builder: (BuildContext context, NavigationState state) {
        return _getBody(state);
      },
    );
  }

  Widget _getBody(NavigationState state) {
    return _getStandaloneVersion();
  }

  Widget _getStandaloneVersion() {
    final double iconSize = 20.0 * max(1, Accessibility.of(context).uiScale);
    const double iconTextSpacing = 8;

    final StTheme theme = StTheme.of(context);
    final Color selCol = theme.scheme.primary;
    final Color unSelCol = theme.scheme.onSurface;
    final Color backgroundColor = theme.scheme.surfaceContainerHighest;

    return Scaffold(
      backgroundColor: theme.scheme.surface,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: selCol,
        unselectedItemColor: unSelCol,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: iconTextSpacing, top: 5),
              child: StSvg(
                AppAssets.icons.icSpeedometer,
                width: iconSize,
                height: iconSize,
                color: _selPage == 0 ? selCol : unSelCol,
              ),
            ),
            label: S.of(context).overview,
            backgroundColor: backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: iconTextSpacing, top: 5),
              child: StSvg(
                AppAssets.icons.icNavBills,
                width: iconSize,
                height: iconSize,
                color: _selPage == 1 ? selCol : unSelCol,
              ),
            ),
            label: "2",
            backgroundColor: backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: iconTextSpacing, top: 5),
              child: StSvg(
                AppAssets.icons.icTransfer,
                width: iconSize,
                height: iconSize,
                color: _selPage == 2 ? selCol : unSelCol,
              ),
            ),
            label: "3",
            backgroundColor: backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: iconTextSpacing, top: 5),
              child: StSvg(
                AppAssets.icons.icNavFrida,
                width: iconSize,
                height: iconSize,
                color: _selPage == 3 ? selCol : unSelCol,
              ),
            ),
            label: "4",
            backgroundColor: backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: iconTextSpacing, top: 5),
              child: StSvg(
                AppAssets.icons.icNavMore,
                width: iconSize,
                height: iconSize,
                color: _selPage == 4 ? selCol : unSelCol,
              ),
            ),
            label: S.of(context).more,
            backgroundColor: backgroundColor,
          ),
        ],
        currentIndex: _selPage,
        elevation: 15,
        backgroundColor: backgroundColor,
        selectedLabelStyle: StTheme.of(context).fonts.body12.error,
        unselectedLabelStyle: StTheme.of(context).fonts.body12.onSurfaceVariant,
        onTap: (int index) {
          _controller?.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOutQuad);
          setState(() {
            _selPage = index;
          });
        },
      ),
      body: SafeArea(
        child: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _controller,
          children: [
            const OverviewPage(),
            Container(color: Colors.redAccent),
            Container(color: Colors.greenAccent),
            Container(color: Colors.blueAccent),
            Container(color: Colors.purpleAccent),
          ],
        ),
      ),
    );
  }
}
