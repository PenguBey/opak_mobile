import 'package:get/get.dart';
import 'package:opak_mobile/constants/color_con.dart';

import '../constants/icon_con.dart';

class ProfilController extends GetxController {
  List<List<dynamic>> menuler = [
    ['Ayarlar', IconCon.chat, null, false, ColorCon.sGri1],
    ['Durum', IconCon.onlineMessage, null, false, ColorCon.sGri2],
    ['Kontrol', IconCon.messageSent, null, false, ColorCon.sGri2],
    ['Denetim', IconCon.payments, null, false, ColorCon.sGri1]
  ];
}
