import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(
      {Key? key,
      required this.glass,
      required this.alcoholic,
      required this.category})
      : super(key: key);
  final String glass;
  final String alcoholic;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const Text(
              'Glass Type',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              glass,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          width: 13,
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.black54),
              right: BorderSide(color: Colors.black54),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Column(
              children: [
                const Text(
                  'Alcoholic',
                  style: TextStyle(color: Colors.black54),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  alcoholic,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 13,
        ),
        Column(
          children: [
            const Text(
              'Category',
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              category,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
