import 'package:flutter/material.dart';

class PhotoWidget extends StatelessWidget {
  PhotoWidget({Key? key, required this.photo}) : super(key: key);
  String photo;

  @override
  Widget build(BuildContext context) {
    return Image.network(photo);
  }
}
