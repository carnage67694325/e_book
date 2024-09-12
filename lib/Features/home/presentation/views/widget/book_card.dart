import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.urlImage});
  final String urlImage;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: urlImage,
              placeholder: (context, url) => const Icon(Icons.error),
            )),
      ),
    );
  }
}
