import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({
    super.key,
    required this.path,
    this.fit = BoxFit.contain,
    this.errorWidget,
    this.placeholder,
    this.onTap,
  });
  final String path;
  final BoxFit fit;
  final Widget? errorWidget;
  final Widget? placeholder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    if (path.isEmpty) {
      return Container(
        constraints: const BoxConstraints.tightForFinite(),
        color: Theme.of(context).cardColor,
      );
    }
    return GestureDetector(
      onTap: onTap,
      child: CachedNetworkImage(
        imageUrl: path,
        fit: fit,
        maxWidthDiskCache: 200,
        cacheKey: path,
        placeholder: (context, url) =>
            placeholder ??
            Container(
              constraints: const BoxConstraints.tightForFinite(),
              color: Theme.of(context).cardColor,
            ),
        errorWidget: (context, url, dym) {
          return errorWidget ??
              Container(
                constraints: const BoxConstraints.tightForFinite(),
                color: Theme.of(context).cardColor,
              );
        },
      ),
    );
  }
}
