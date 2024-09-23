import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/views/navigation_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorCon.backGround,
        useMaterial3: true,
      ),
      home: const NavigationView(),
    );
  }
}
