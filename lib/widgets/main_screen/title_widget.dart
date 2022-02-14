import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  NameWidget({Key? key, required this.name, required this.id})
      : super(key: key);
  String name;
  String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'id: ${id}',
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
