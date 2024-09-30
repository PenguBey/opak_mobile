import 'package:get/get.dart';

import '../constants/icon_con.dart';

class ProfilController extends GetxController {
  List<List<dynamic>> menuler = [
    ['Ayarlar', IconCon.chat, null, false],
    ['Durum', IconCon.onlineMessage, null, false],
    ['Kontrol', IconCon.messageSent, null, false],
    ['Denetim', IconCon.payments, null, false]
  ];
}
