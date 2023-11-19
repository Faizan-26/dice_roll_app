import 'package:dice_roll_app/imagebutton.dart';
import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient(this.listOfbgColors, {super.key});
  final List<Color> listOfbgColors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: listOfbgColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: const Center(
        child: ImageButton(),
      ),
    );
  }
}
