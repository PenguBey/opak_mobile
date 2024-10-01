import 'package:flutter/material.dart';

class TextStyleCon {
  static const double _minibaslikSize = 14;

  static TextStyle miniTitle = const TextStyle(fontSize: _minibaslikSize);
  static const TextStyle title =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w800);

  static const TextStyle negativeStyle = TextStyle(
    fontSize: 16,
    color: Colors.white,
  );

  static TextStyle renkliMiniTitle(Color renk) {
    return TextStyle(color: renk, fontSize: _minibaslikSize);
  }
}
