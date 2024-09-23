import 'package:flutter/material.dart';
import 'package:opak_mobile/views/maas_bilgileri_view.dart';
import 'package:opak_mobile/views/maas_view.dart';
import 'package:opak_mobile/views/main_menu_view.dart';
import 'package:opak_mobile/views/mainpage_state.dart';

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
              child: const Text("AnaMenü"),
            ),
            NewWidget(),
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
              child: const Text("Maaş Bilgileri"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MainPage();
                    },
                  ),
                );
              },
              child: const Text("Efe Baba Pro"),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: const Text("Maas"),
    );
  }
}
