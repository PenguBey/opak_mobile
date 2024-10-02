import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';

class BoxDecorCon {
  static BoxDecoration siyahGolge([Color? color]) {
    return BoxDecoration(
        color: color ?? Colors.white,
        boxShadow: const [
          BoxShadow(
            color: ColorCon.blackshadow,
            spreadRadius: -8,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(10)));
  }

  static BoxDecoration renkliGolgeSag(Color color) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: -7,
          blurRadius: 3,
          offset: const Offset(10, 10),
        ),
      ],
    );
  }

  static BoxDecoration renkliGolgeSol(Color color) {
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
