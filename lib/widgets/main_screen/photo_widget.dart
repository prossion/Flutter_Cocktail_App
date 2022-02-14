import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  const PhotoWidget({Key? key, required this.photo}) : super(key: key);
  final String photo;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: photo,
      placeholder: (context, url) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      errorWidget: (context, url, error) {
        return const Center(
          child: Text('Image not found'),
        );
      },
    );
  }
}
