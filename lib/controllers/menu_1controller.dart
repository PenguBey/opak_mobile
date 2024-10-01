import 'package:get/get.dart';
import 'package:opak_mobile/constants/color_con.dart';

import '../constants/icon_con.dart';

class Menu1Controller extends GetxController {
  List<List<dynamic>> menuler = [
    ['Menü Sayfası', IconCon.chat, '/main_menu', true, ColorCon.takvim],
    ['Maaş Sayfası', IconCon.onlineMessage, '/maas', false, ColorCon.vardiya]
  ];
}
