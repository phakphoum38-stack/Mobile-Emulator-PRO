import 'package:flutter/material.dart';

class GamePad extends StatelessWidget {

  const GamePad({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        ElevatedButton(
          onPressed: () {},
          child: const Text("A"),
        ),

        ElevatedButton(
          onPressed: () {},
          child: const Text("B"),
        ),

      ],
    );

  }
}
