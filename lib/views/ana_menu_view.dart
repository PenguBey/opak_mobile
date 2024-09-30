import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/constants/color_con.dart';
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
        toolbarHeight: 0,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        decoration: ColorCon.backGradient,
        child: Column(
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
                child: SizedBox(
                    height: 200,
                    child: BildirimListesiWidget(
                        bildirimler: controller.bildirimler)))
          ],
        ),
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
