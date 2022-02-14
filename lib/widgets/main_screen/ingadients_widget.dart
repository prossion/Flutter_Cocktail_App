import 'package:flutter/material.dart';

class IngadientsWidget extends StatelessWidget {
  IngadientsWidget({Key? key, required this.ingradient, required this.measure})
      : super(key: key);
  String ingradient;
  String measure;

  // const pictureApi =
//     'https://www.thecocktaildb.com/images/ingredients/gin-Small.png';

  @override
  Widget build(BuildContext context) {
    return ingradient == null
        ? const Divider()
        : Container(
            height: 260,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: Column(
              children: [
                Image.network(
                  'https://www.thecocktaildb.com/images/ingredients/${ingradient}.png' ==
                          null
                      ? 'https://www.freeiconspng.com/thumbs/error-icon/error-icon-32.png'
                      : 'https://www.thecocktaildb.com/images/ingredients/${ingradient}.png',
                  height: 200.0,
                  width: 250.0,
                ),
                Text(ingradient == null ? '' : ingradient),
                Text(measure == null ? '' : measure),
              ],
            ),
          );
  }
}
