import 'package:flutter/material.dart';

class ColorCon {
  static const backGround = Color.fromRGBO(224, 243, 245, 1);
  static const foreGround = Color.fromARGB(255, 255, 255, 255);

  static const dikkat = Color.fromRGBO(244, 67, 54, 1);
  static const takvim = Color.fromRGBO(37, 119, 187, 1);
  static const yemek = Color.fromRGBO(187, 177, 37, 1);
  static const vardiya = Color.fromRGBO(37, 187, 45, 1);
  static const kidem = Color.fromRGBO(187, 37, 179, 1);
  static const blackshadow = Color.fromRGBO(158, 158, 158, 1);
  static const chart = LinearGradient(colors: [
    Color.fromRGBO(33, 149, 243, 0.2),
    Color.fromRGBO(33, 149, 243, 0.5),
    Color.fromRGBO(33, 149, 243, 0.2)
  ]);

  static const backGradient = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.white,
        Colors.white,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}
