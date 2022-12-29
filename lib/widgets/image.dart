import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AppNetImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final double? radius;

  const AppNetImage({super.key, required this.imageUrl, this.height, this.width, this.radius});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height ?? 55,
      width: width ?? 55,
      imageUrl: imageUrl,
      placeholder: (context, url) => const Center(
        child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator(strokeWidth: 2.5),
        ),
      ),
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 30),
          image: DecorationImage(image: imageProvider, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
