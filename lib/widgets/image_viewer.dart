import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pet_adoption/utils/extensions.dart';

class ImageViewer extends StatelessWidget {
  static MaterialPageRoute getRoute(
    String path,
  ) {
    return MaterialPageRoute(
      builder: (_) => ImageViewer(
        path: path,
        heroTag: path,
      ),
    );
  }

  const ImageViewer({super.key, this.path, this.heroTag});
  final String? path;
  final String? heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            size: 20,
            color: context.colorScheme.primary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: Picture(
              heroTag: heroTag,
              imageUrl: path!,
            ),
          )
        ],
      ),
    );
  }
}

class Picture extends StatelessWidget {
  final String imageUrl;
  final String? heroTag;
  const Picture({super.key, required this.imageUrl, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Hero(
        tag: heroTag ?? "",
        child: InteractiveViewer(
          minScale: .3,
          maxScale: 5,
          child: CachedNetworkImage(
            fit: BoxFit.fitWidth,
            imageUrl: imageUrl,
            placeholder: (context, url) => Container(
              color: Theme.of(context).cardColor,
            ),
            maxWidthDiskCache: 800,
            cacheKey: imageUrl,
            errorWidget: (context, url, dym) {
              return Container(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.width,
                  maxWidth: MediaQuery.of(context).size.width,
                ),
                color: Theme.of(context).cardColor,
              );
            },
          ),
        ),
      ),
    );
  }
}
