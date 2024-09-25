import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/widgets/bottomnavigation_bar_widget.dart';
import 'package:opak_mobile/widgets/user_tile_widget.dart';

import '../controllers/profil_controller.dart';
import '../widgets/basit_bilgialan_wiget.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const UserTileWidget(),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              itemCount: controller.test.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 1.5),
              itemBuilder: (context, index) {
                return BasitBilgialanWiget(
                    string: controller.test.keys.elementAt(index),
                    iconData: controller.test.values.elementAt(index));
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
