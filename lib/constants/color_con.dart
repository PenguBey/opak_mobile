import 'package:flutter/material.dart';

class ColorCon {
  static const backGround = Color.fromARGB(255, 224, 243, 245);
  static const foreGround = Color(0xFFd4f1f4);
  static const takvim = Color.fromRGBO(37, 119, 187, 1);

  static const yemek = Color.fromRGBO(190, 130, 40, 1);
  static const blackshadow = Color.fromRGBO(158, 158, 158, 0.3);
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
