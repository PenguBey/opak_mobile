import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/constants/pageroute_con.dart';
import 'package:google_fonts/google_fonts.dart';

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
          scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
          useMaterial3: true,
          textTheme: GoogleFonts.notoSansGujaratiTextTheme()),
      initialRoute: '/giris',
      getPages: PagerouteCon.getPage,
      unknownRoute: PagerouteCon.unknownRoute,
    );
  }
}
