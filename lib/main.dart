import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/pageroute_con.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorCon.backGround,
        useMaterial3: true,
      ),
      initialRoute: '/giris',
      getPages: PagerouteCon.getPage,
      unknownRoute: PagerouteCon.unknownRoute,
    );
  }
}
