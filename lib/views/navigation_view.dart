import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/main_menu');
              },
              child: const Text("Ömer AnaMenü"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/maas');
              },
              child: const Text("Ömer Maas"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/maas_bilgileri');
              },
              child: const Text("Ömer Maaş Bilgileri"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/menu_1');
              },
              child: const Text("Efe Menu"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/profil');
              },
              child: const Text("Efe Donemsel Maas"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/maasbilgileri_donemsel');
              },
              child: const Text("Efe Maas Bilgileri"),
            ),
          ],
        ),
      ),
    );
  }
}
