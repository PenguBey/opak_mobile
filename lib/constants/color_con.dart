import 'package:flutter/material.dart';

class ColorCon {
  static const backGround = Color.fromRGBO(224, 243, 245, 1);

  static const dikkat = Color.fromRGBO(244, 67, 54, 1);
  static const takvim = Color.fromRGBO(0, 53, 122, 1);
  static const yemek = Color.fromRGBO(122, 120, 0, 1);
  static const vardiya = Color.fromRGBO(0, 118, 122, 1);
  static const kidem = Color.fromRGBO(0, 122, 10, 1);
  static const blackshadow = Color.fromRGBO(87, 87, 87, 1);
  static const chart = LinearGradient(colors: [
    Color.fromRGBO(33, 149, 243, 0.2),
    Color.fromRGBO(33, 149, 243, 0.5),
    Color.fromRGBO(33, 149, 243, 0.2)
  ]);

  static const backGradient = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.blue,
        Colors.lightBlue,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );

  static var primary;
}
