import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/controllers/menu_1controller.dart';
import 'package:opak_mobile/widgets/basit_bilgialan_wiget.dart';
import '../widgets/bottomnavigation_bar_widget.dart';

class MenuView extends GetView<Menu1Controller> {
  const MenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: controller.test.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return BasitBilgialanWiget(
              string: controller.test.keys.elementAt(index),
              iconData: controller.test.values.elementAt(index));
        },
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
