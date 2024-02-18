import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/presentation/core/localization/l10n.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';

class StFeatureError extends StatefulWidget {
  final String? title;
  final String message;
  final Function() onRetry;
  final Function() onCancel;
  final bool isRetrying;
  final bool retryEnabled;
  final bool iosBottomPadding;
  final double iosBottomPaddingAmount;
  final bool overrideShowClose;
  final Color? backgroundColor;
  final String? overrideRetryText;
  final String? overrideCancelText;

  const StFeatureError({
    super.key,
    required this.message,
    required this.onRetry,
    required this.onCancel,
    this.overrideRetryText,
    this.overrideCancelText,
    this.title,
    this.isRetrying = false,
    this.retryEnabled = true,
    this.iosBottomPadding = false,
    this.iosBottomPaddingAmount = 90,
    this.overrideShowClose = false,
    this.backgroundColor,
  });

  @override
  State<StatefulWidget> createState() {
    return _StFeatureErrorState();
  }
}

class _StFeatureErrorState extends State<StFeatureError> {
  final Random rnd = Random(DateTime.now().millisecondsSinceEpoch);
  bool isRetrying = false;
  bool disposed = false;

  @override
  Widget build(BuildContext context) {
    final int flex = widget.iosBottomPadding ? 2 : 1;

    return ColoredBox(
      color: widget.backgroundColor ?? StTheme.of(context).colors.grey0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 10),
          Expanded(
            flex: flex,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.asset(AppAssets.images.imgError.path),
            ),
          ),
          Expanded(
            flex: flex,
            child: Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraint) => SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(minHeight: constraint.maxHeight),
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(height: 15),
                          Text(
                            _limitTitleLength(widget.title ?? S.of(context).error_loading_feature_heading),
                            style: StTheme.of(context).fonts.body32.bold.red,
                          ),
                          const SizedBox(height: 24),
                          Expanded(
                            child: Text(widget.message, style: StTheme.of(context).fonts.body20.light),
                          ),
                          if (widget.retryEnabled)
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: StButton(
                                text: widget.overrideRetryText ?? S.of(context).retry,
                                onTap: () {
                                  widget.onRetry();
                                  setState(() {
                                    isRetrying = true;
                                    Future.delayed(Duration(seconds: rnd.nextInt(6) + 1)).then((value) {
                                      if (disposed) {
                                        return;
                                      }
                                      setState(() {
                                        isRetrying = false;
                                      });
                                    });
                                  });
                                },
                                busy: isRetrying,
                              ),
                            )
                          else
                            Container(),
                          _getCloseButton(context),
                          _getBottomSpacing(context),
                          const SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getBottomSpacing(BuildContext context) {
    return const SizedBox(height: 8);
  }

  Widget _getCloseButton(BuildContext context) {
    if (Platform.isIOS && !widget.overrideShowClose) {
      return Container();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: StButton(
        buttonStyle: widget.retryEnabled ? StButtonStyle.secondary : StButtonStyle.primary,
        text: widget.overrideCancelText ?? S.of(context).close,
        onTap: widget.onCancel,
      ),
    );
  }

  String _limitTitleLength(String title) {
    if (title.length <= 50) {
      return title;
    }
    return title.substring(0, 50);
  }

  @override
  void dispose() {
    disposed = true;
    super.dispose();
  }
}
