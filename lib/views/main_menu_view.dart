import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/controllers/main_menu_controller.dart';
import '../widgets/bildirim_listesi_widget.dart';
import '../widgets/bottomnavigation_bar_widget.dart';
import '../widgets/kidem_gunu_widget.dart';
import '../widgets/sure_widget.dart';
import '../widgets/user_tile_widget.dart';
import '../widgets/vardiya_widget.dart';
import '../widgets/yemek_listesi_widget.dart';

class MainMenuView extends GetView<MainMenuController> {
  const MainMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          UserTileWidget(),
          IntrinsicHeight(
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
          SureWidget(),
          YemekListesiWidget(),
          Expanded(child: BildirimListesiWidget())
        ],
      ),
      bottomNavigationBar: BottomnavigationBarWidget(),
    );
  }
}
