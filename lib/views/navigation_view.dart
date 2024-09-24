import 'package:flutter/material.dart';
import 'package:opak_mobile/views/maas_bilgileri_view.dart';
import 'package:opak_mobile/views/maas_view.dart';
import 'package:opak_mobile/views/maasbilgileri_donemsel_view.dart';
import 'package:opak_mobile/views/main_menu_view.dart';
import 'package:opak_mobile/views/menu_view.dart';
import 'package:opak_mobile/views/profil_view.dart';

class NavigationView extends StatelessWidget {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MainMenuView();
                    },
                  ),
                );
              },
              child: const Text("Ömer AnaMenü"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MaasView();
                    },
                  ),
                );
              },
              child: const Text("Ömer Maas"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MaasBilgileriView();
                    },
                  ),
                );
              },
              child: const Text("Ömer Maaş Bilgileri"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MenuView();
                    },
                  ),
                );
              },
              child: const Text("Efe Menu"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ProfilView();
                    },
                  ),
                );
              },
              child: const Text("Efe Donemsel Maas"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const MaasbilgileriDonemselView();
                    },
                  ),
                );
              },
              child: const Text("Efe Maas Bilgileri"),
            ),
          ],
        ),
      ),
    );
  }
}
