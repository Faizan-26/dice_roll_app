import 'dart:math';
import 'package:flutter/material.dart';

final random = Random();

class ImageButton extends StatefulWidget {
  const ImageButton({super.key});
  @override
  State<ImageButton> createState() {
    return _ImageButtonState();
  }
}

class _ImageButtonState extends State<ImageButton> {
  void rollDice() {
    setState(() {
      diceRollImage = "dice-${random.nextInt(6) + 1}";
    });
  }

  String diceRollImage = "dice-1";
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/$diceRollImage.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              backgroundColor: Colors.yellow,
            ),
            child: const Text("Roll Dice"))
      ],
    );
  }
}
