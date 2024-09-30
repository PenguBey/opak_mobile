import 'package:flutter/material.dart';

class ColorCon {
  static const backGround = Color(0xFFF0F0F0);
  static const foreGround = Color(0xFFFFFFFF);
  static const takvim = Color.fromRGBO(37, 119, 187, 1);

  static const yemek = Color.fromRGBO(190, 130, 40, 1);
  static const blackshadow = Color.fromRGBO(158, 158, 158, 0.3);
  static const chart = LinearGradient(colors: [
    Color.fromRGBO(33, 149, 243, 0.2),
    Color.fromRGBO(33, 149, 243, 0.5),
    Color.fromRGBO(33, 149, 243, 0.2)
  ]);

  static var backGradient = const BoxDecoration(
      gradient: LinearGradient(
    colors: [
      Colors.blue,
      Colors.lightBlue,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ));
}
