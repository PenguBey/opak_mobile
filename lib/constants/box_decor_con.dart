import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';

class BoxDecorCon {
  static const siyahGolge = BoxDecoration(
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: ColorCon.blackshadow,
        spreadRadius: 1,
        blurRadius: 7,
        offset: Offset(0, 5),
      ),
    ],
  );
  static renkliGolgeSag(Color color) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: -7,
          blurRadius: 0,
          offset: const Offset(10, 10),
        ),
      ],
    );
  }

  static renkliGolgeSol(Color color) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: -7,
          blurRadius: 0,
          offset: const Offset(-10, 10),
        ),
      ],
    );
  }

  static renkliGolgeOrta(Color color) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: -7,
          blurRadius: 0,
          offset: const Offset(0, 10),
        ),
      ],
    );
  }
}
