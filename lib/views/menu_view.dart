import 'package:flutter/material.dart';
import 'package:opak_mobile/widgets/basit_bilgistack_widget.dart';

import '../widgets/bottomnavigation_bar_widget.dart';

class MenuView extends StatelessWidget {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        children: const [
          BasitBilgistackWidget(
              icon: Icons.attach_money, color: Colors.green, title: 'Maaş'),
          BasitBilgistackWidget(
              icon: Icons.attach_money,
              color: Colors.green,
              title: 'Giriş-Çıkış\nHareketleri'),
          BasitBilgistackWidget(
              icon: Icons.event_available, color: Colors.orange, title: 'İzin'),
          BasitBilgistackWidget(
              icon: Icons.local_offer, color: Colors.purple, title: 'Servis'),
          BasitBilgistackWidget(
              icon: Icons.assignment_ind, color: Colors.red, title: 'Zimmet'),
          BasitBilgistackWidget(
              icon: Icons.announcement,
              color: Colors.amber,
              title: 'Duyurular'),
          BasitBilgistackWidget(
              icon: Icons.newspaper, color: Colors.blueGrey, title: 'Haberler'),
          BasitBilgistackWidget(
              icon: Icons.work, color: Colors.brown, title: 'İş İlanları'),
          BasitBilgistackWidget(
              icon: Icons.description,
              color: Colors.teal,
              title: 'Sözleşmeler'),
          BasitBilgistackWidget(
              icon: Icons.assignment, color: Colors.cyan, title: 'Talimatlar'),
          BasitBilgistackWidget(
              icon: Icons.poll, color: Colors.deepPurple, title: 'Anketler'),
          BasitBilgistackWidget(
              icon: Icons.assessment,
              color: Colors.lightBlue,
              title: 'Verimlilik'),
          BasitBilgistackWidget(
              icon: Icons.feedback,
              color: Colors.pink,
              title: 'Öneri\nŞikayet'),
        ],
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
