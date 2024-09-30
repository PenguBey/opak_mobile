import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/widgets/tanitim_card_widget.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  const NavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          padding: const EdgeInsets.all(16),
          children: [
            TanitimCardWidget(
                context: context,
                route: '/main_menu',
                title: "Ana menü  ",
                icon: Icons.home),
            TanitimCardWidget(
                context: context,
                route: '/maas',
                title: "Maaş",
                icon: Icons.attach_money),
            TanitimCardWidget(
                context: context,
                route: '/maas_bilgileri',
                title: "Maaş Bilgileri",
                icon: Icons.info),
            TanitimCardWidget(
                context: context,
                route: '/menu',
                title: "Menü",
                icon: Icons.menu),
            TanitimCardWidget(
                context: context,
                route: '/profil',
                title: "Dönemsel Maaş",
                icon: Icons.person),
            TanitimCardWidget(
                context: context,
                route: '/maasbilgileri_donemsel',
                title: "Maaş Bilgileri",
                icon: Icons.history),
          ],
        ),
      ),
    );
  }
}
