import 'package:flutter/material.dart';

import '../constants/color_con.dart';
import '../widgets/kidem_gunu_widget.dart';
import '../widgets/sure_widget.dart';
import '../widgets/user_tile_widget.dart';
import '../widgets/vardiya_widget.dart';
import '../widgets/yemek_listesi_widget.dart';

class MainMenuView extends StatelessWidget {
  const MainMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const UserTileWidget(),
          const IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: KidemGunuWidget(),
                ),
                Expanded(
                  child: VardiyaWidget(),
                ),
              ],
            ),
          ),
          const SureWidget(),
          const YemekListesiWidget(),
          Card(
            child: Column(
              children: [
                const Row(
                  children: [
                    Icon(
                      Icons.notifications_none,
                      size: 50,
                    ),
                    Text("Bildirimler")
                  ],
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: Icon(
                          Icons.notifications,
                          size: 30,
                        ),
                        title: Text("30 Ağustps Bilfilendirmesi HK."),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
