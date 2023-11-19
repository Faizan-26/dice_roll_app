import 'package:dice_roll_app/background.dart';
import 'package:flutter/material.dart';

void main() {
  const List<Color> listOfBgCols = [
    Color.fromARGB(255, 165, 214, 167),
    Color.fromARGB(255, 102, 187, 106),
    Color.fromARGB(255, 67, 160, 71),
  ];
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: BackgroundGradient(listOfBgCols),
    ),
  ));
}
