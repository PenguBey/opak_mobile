import 'package:flutter/material.dart';
import 'package:opak_mobile/widgets/bottomnavigation_bar_widget.dart';
import 'package:opak_mobile/widgets/user_tile_widget.dart';

import '../constants/icon_con.dart';
import '../widgets/basit_bilgialan_wiget.dart';

class ProfilView extends StatelessWidget {
  ProfilView({super.key});
  var test = {
    'Ayarlar': IconCon.chat,
    'Durum': IconCon.chat,
    'Denetim': IconCon.onlineDiscussion,
    'Control': IconCon.onlineCalendar,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const UserTileWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: test.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.5),
              itemBuilder: (context, index) {
                return BasitBilgialanWiget(
                    string: test.keys.elementAt(index),
                    iconData: test.values.elementAt(index));
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
