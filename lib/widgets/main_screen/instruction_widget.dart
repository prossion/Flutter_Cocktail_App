import 'package:flutter/material.dart';

class InstructionWidget extends StatelessWidget {
  const InstructionWidget({Key? key, required this.instructions})
      : super(key: key);
  final String instructions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Instruction',
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          instructions,
          style: const TextStyle(
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}
