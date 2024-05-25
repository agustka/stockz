import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stockz/infrastructure/core/test_runner_determiner/i_test_runner_determiner.dart';
import 'package:stockz/presentation/core/widgets/imports.dart';
import 'package:stockz/setup.dart';

class StImage extends StatefulWidget {
  final String imageLink;
  final Widget? fallback;
  final BoxFit fit;
  final double? width;
  final double? height;
  final ImageFrameBuilder? frameBuilder;

  const StImage({
    super.key,
    required this.imageLink,
    this.fallback,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.frameBuilder,
  });

  @override
  State<StatefulWidget> createState() {
    return _StImageState();
  }
}

class _StImageState extends State<StImage> {
  Widget get _fallback => widget.fallback ?? const SizedBox.shrink();

  @override
  void didUpdateWidget(covariant StImage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.imageLink == widget.imageLink) {
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.imageLink.startsWith("http")) {
      return _networked(context);
    } else {
      return _asset(context);
    }
  }

  Widget _networked(BuildContext context) {
    if (getIt<ITestRunnerDeterminer>().isRunningOffline) {
      // Network and cache images not supported in widget tests
      return widget.fallback ??
          Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  StTheme.of(context).scheme.error,
                  StTheme.of(context).scheme.secondary,
                ],
              ),
            ),
          );
    }

    // TODO implement proper caching for svg images
    if (widget.imageLink.endsWith("svg")) {
      return SvgPicture.network(
        widget.imageLink,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
        placeholderBuilder: (BuildContext context) => _fallback,
      );
    }
    return CachedNetworkImage(
      imageUrl: widget.imageLink,
      width: widget.width,
      height: widget.height,
      fit: widget.fit,
      fadeInDuration: const Duration(milliseconds: 400),
      placeholder: (_, __) => _fallback,
      errorWidget: (_, __, ___) => _fallback,
    );
  }

  Widget _asset(BuildContext context) {
    if (widget.imageLink.startsWith("/")) {
      // Image in a folder on the device
      final File file = File(widget.imageLink);

      if (widget.imageLink.toLowerCase().endsWith("svg")) {
        return SvgPicture.file(
          file,
          width: widget.width,
          height: widget.height,
          fit: widget.fit,
          placeholderBuilder: (context) => _fallback,
        );
      } else {
        return Image.file(
          width: widget.width,
          height: widget.height,
          file,
          fit: widget.fit,
          frameBuilder: widget.frameBuilder,
          errorBuilder: (_, __, ___) => _fallback,
        );
      }
    } else {
      if (widget.imageLink.toLowerCase().endsWith("svg")) {
        return SvgPicture.asset(
          widget.imageLink,
          width: widget.width,
          height: widget.height,
          fit: widget.fit,
          placeholderBuilder: (context) => _fallback,
        );
      } else {
        return Image.asset(
          width: widget.width,
          height: widget.height,
          widget.imageLink,
          fit: widget.fit,
          frameBuilder: widget.frameBuilder,
          errorBuilder: (_, __, ___) => _fallback,
        );
      }
    }
  }
}
