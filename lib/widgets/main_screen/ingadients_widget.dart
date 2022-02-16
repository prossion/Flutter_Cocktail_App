import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class IngadientsWidget extends StatelessWidget {
  const IngadientsWidget(
      {Key? key, required this.ingradient, required this.measure})
      : super(key: key);
  final String ingradient;
  final String measure;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black12,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: 250,
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.thecocktaildb.com/images/ingredients/$ingradient.png',
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
            ),
          ),
          Text(ingradient == null ? '' : ingradient),
          Text(measure == null ? '' : measure),
        ],
      ),
    );
  }
}
