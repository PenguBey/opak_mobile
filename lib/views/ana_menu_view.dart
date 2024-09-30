import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/controllers/ana_menu_controller.dart';
import '../widgets/bildirim_listesi_widget.dart';
import '../widgets/bottomnavigation_bar_widget.dart';
import '../widgets/kidem_gunu_widget.dart';
import '../widgets/sure_widget.dart';
import '../widgets/user_tile_widget.dart';
import '../widgets/vardiya_widget.dart';
import '../widgets/yemek_listesi_widget.dart';

class AnaMenuView extends GetView<AnaMenuController> {
  const AnaMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
      ),
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
          YemekListesiWidget(
            menuler: controller.menuler,
          ),
          Flexible(
              child: BildirimListesiWidget(bildirimler: controller.bildirimler))
        ],
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
