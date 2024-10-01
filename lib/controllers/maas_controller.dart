import 'package:get/get.dart';
import 'package:opak_mobile/constants/color_con.dart';

import '../constants/icon_con.dart';

class MaasController extends GetxController {
  List<List<dynamic>> menuler = [
    [
      'Dönemsel Bilgiler',
      IconCon.mobileMarketing,
      '/maas_bilgileri',
      false,
      ColorCon.yemek
    ],
    [
      'Maaş Bilgileri',
      IconCon.mola,
      '/maasbilgileri_donemsel',
      false,
      ColorCon.dikkat
    ],
  ];
}
