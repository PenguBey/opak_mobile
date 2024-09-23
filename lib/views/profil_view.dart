import 'package:flutter/material.dart';
import 'package:opak_mobile/widgets/basit_bilgistack_widget.dart';
import 'package:opak_mobile/widgets/bottomnavigation_bar_widget.dart';
import 'package:opak_mobile/widgets/user_tile_widget.dart';

class ProfilView extends StatelessWidget {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const UserTileWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(8.0),
              crossAxisCount: 2,
              children: const <Widget>[
                BasitBilgistackWidget(
                    icon: Icons.person,
                    color: Colors.indigo,
                    title: 'Özlük Bilgileri'),
                BasitBilgistackWidget(
                    icon: Icons.work,
                    color: Colors.green,
                    title: 'Görev Tanımı'),
                BasitBilgistackWidget(
                    icon: Icons.info, color: Colors.blue, title: 'Hakkında'),
                BasitBilgistackWidget(
                    icon: Icons.settings, color: Colors.grey, title: 'Ayarlar'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
