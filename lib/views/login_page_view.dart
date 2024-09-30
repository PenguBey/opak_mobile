import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/widgets/giris_yapma_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
