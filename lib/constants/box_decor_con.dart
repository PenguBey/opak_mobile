import 'package:flutter/material.dart';

class BoxDecorCon {
  static BoxDecoration siyahGolge([Color? color]) {
    return BoxDecoration(
      color: color ?? Colors.white,
      borderRadius: BorderRadius.circular(8),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 0,
          blurRadius: 5,
        ),
      ],
    );
  }

  static BoxDecoration renkliCard([Color? background]) {
    return BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: background ?? Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.4),
          spreadRadius: 0,
          blurRadius: 5,
        ),
      ],
    );
  }
}
