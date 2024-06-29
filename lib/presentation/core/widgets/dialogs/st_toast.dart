import 'package:flutter/material.dart';
import 'package:stockz/core/assets/assets.gen.dart';
import 'package:stockz/infrastructure/core/service/timer/i_poll_and_debounce.dart';
import 'package:stockz/presentation/core/accessibility/accessibility.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

enum ToastType {
  busy,
  error,
  info,
  success,
  warning,
}

class StToast extends StatefulWidget {
  static const String isbSnackbarKey = "isbSnackbarKey";
  static String? lastToast;

  final String text;
  final Function()? onDismiss;
  final Duration duration;
  final ToastType type;
  final StToastController controller;
  final StToastEntryProvider entryProvider;
  final bool showLeadingIcon;
  final bool showCloseIcon;

  const StToast({
    super.key,
    required this.text,
    required this.duration,
    required this.controller,
    required this.entryProvider,
    required this.type,
    this.onDismiss,
    required this.showLeadingIcon,
    required this.showCloseIcon,
  });

  static Future<void> show({
    required BuildContext context,
    required String text,
    required ToastType type,
    void Function()? onDismiss,
    Duration standardModeDuration = const Duration(milliseconds: 3500),
    Duration accessibilityModeDuration = const Duration(milliseconds: 5000),
    bool? showLeadingIcon,
    bool? showCloseIcon,
  }) async {
    lastToast = text;

    final Duration duration =
    Accessibility.of(context).isInAccessibilityMode ? accessibilityModeDuration : standardModeDuration;
    _showOverlay(
      context: context,
      text: text,
      duration: duration,
      type: type,
      onDismiss: onDismiss,
      showLeadingIcon: showLeadingIcon ?? true,
      showCloseIcon: showCloseIcon ?? duration.inSeconds >= 4,
    );
  }

  static void _showOverlay({
    required BuildContext context,
    required String text,
    required Duration duration,
    required ToastType type,
    void Function()? onDismiss,
    required bool showLeadingIcon,
    required bool showCloseIcon,
  }) {
    final StToastController controller = StToastController(true);
    final StToastEntryProvider entryProvider = StToastEntryProvider(null);
    final OverlayState overlayState = Overlay.of(context);
    final OverlayEntry overlayEntry = OverlayEntry(
      builder: (BuildContext context) {
        return StToast(
          key: const ValueKey(StToast.isbSnackbarKey),
          text: text,
          onDismiss: onDismiss,
          duration: duration,
          type: type,
          controller: controller,
          entryProvider: entryProvider,
          showLeadingIcon: showLeadingIcon,
          showCloseIcon: showCloseIcon,
        );
      },
    );

    overlayState.insert(overlayEntry);
    getIt<IPollAndDebounce>().delayCall(
      delay: duration,
      action: () {
        entryProvider.entry = overlayEntry;
        controller.show = false;
      },
    );
  }

  @override
  State<StatefulWidget> createState() {
    return _StToastState();
  }
}

class StToastController extends ValueNotifier<bool> {
  bool get show => value;

  set show(bool status) => value = status;

  StToastController(super.initialValue);
}

class StToastEntryProvider extends ValueNotifier<OverlayEntry?> {
  OverlayEntry? get entry => value;

  set entry(OverlayEntry? entry) => value = entry;

  StToastEntryProvider(super.initialValue);
}

class _StToastState extends State<StToast> {
  final Duration _animationDuration = const Duration(milliseconds: 400);

  bool _bootingUp = true;
  bool _exiting = false;
  bool _disposed = false;
  OverlayEntry? _entry;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
      if (mounted) {
        setState(() {
          _bootingUp = false;
        });
      }
    });
    widget.controller.addListener(_statusChanged);
    widget.entryProvider.addListener(() {
      _entry = widget.entryProvider.value;
    });
  }

  void _statusChanged() {
    if (!widget.controller.value) {
      if (_disposed) {
        return;
      }
      setState(() {
        _exiting = true;
      });
      Future.delayed(_animationDuration).then((value) {
        _entry?.remove();
      });
    }
  }

  @override
  void dispose() {
    _disposed = true;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final StTheme theme = StTheme.of(context, listen: false);

    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: AnimatedCrossFade(
        sizeCurve: Curves.easeOutCubic,
        secondCurve: Curves.easeOutCubic,
        firstCurve: Curves.easeOutCubic,
        duration: _animationDuration,
        crossFadeState: _bootingUp || _exiting ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        firstChild: const SizedBox.shrink(),
        secondChild: Padding(
          padding: const EdgeInsets.only(bottom: (StButton.buttonHeight + (StTheme.bottomPadding * 2)) - 20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Material(
                    color: Colors.transparent,
                    shadowColor: Colors.black,
                    elevation: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: _getBackgroundColor(theme),
                        border: Border.all(
                          color: _getBackgroundColor(theme),
                        ),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (widget.showLeadingIcon)
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: StSvg(
                                        _getLeadingIconPath(),
                                        width: 18,
                                        height: 18,
                                        color: _getFontColor(theme),
                                      ),
                                    ),
                                  Flexible(
                                    child: StText(
                                      widget.text,
                                      style: theme.fonts.body16.copyWith(color: _getFontColor(theme)),
                                      textAlign: TextAlign.center,
                                      maxLines: !Accessibility.of(context).isInAccessibilityMode ? 2 : null,
                                      overflow: !Accessibility.of(context).isInAccessibilityMode
                                          ? TextOverflow.ellipsis
                                          : null,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (widget.showCloseIcon)
                            GestureDetector(
                              behavior: HitTestBehavior.opaque,
                              onTap: () {
                                if (!_exiting) {
                                  widget.controller.show = false;
                                }
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 12, top: 18, bottom: 18),
                                child: StSvg(
                                  AppAssets.icons.icX,
                                  width: 16,
                                  height: 16,
                                  color: _getFontColor(theme),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor(StTheme theme) {
    switch (widget.type) {
      case ToastType.success:
        return theme.scheme.tertiary;
      case ToastType.info:
        return theme.scheme.secondary;
      case ToastType.warning:
        return theme.scheme.primary;
      case ToastType.error:
        return theme.scheme.error;
      case ToastType.busy:
        return theme.scheme.scrim;
    }
  }

  Color _getFontColor(StTheme theme) {
    switch (widget.type) {
      case ToastType.success:
        return theme.scheme.onTertiary;
      case ToastType.info:
        return theme.scheme.onSecondary;
      case ToastType.warning:
        return theme.scheme.onPrimary;
      case ToastType.error:
        return theme.scheme.onError;
      case ToastType.busy:
        return theme.scheme.onSurfaceVariant;
    }
  }

  String _getLeadingIconPath() {
    switch (widget.type) {
      case ToastType.success:
        return AppAssets.icons.icCheck2Circle;
      case ToastType.info:
        return AppAssets.icons.icInfoCircle;
      case ToastType.warning:
        return AppAssets.icons.icExclamationDiamond;
      case ToastType.error:
        return AppAssets.icons.icSlashCircle;
      case ToastType.busy:
        return AppAssets.icons.icHourglassSplit;
    }
  }
}
