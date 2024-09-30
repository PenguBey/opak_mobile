import 'package:get/get.dart';

import '../constants/icon_con.dart';

class Menu1Controller extends GetxController {
  List<List<dynamic>> menuler = [
    ['Menü Sayfası', IconCon.chat, '/main_menu', true],
    ['Maaş Sayfası', IconCon.chat, '/maas', false]
  ];
}
