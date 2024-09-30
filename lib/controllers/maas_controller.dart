import 'package:get/get.dart';

import '../constants/icon_con.dart';

class MaasController extends GetxController {
  List<List<dynamic>> menuler = [
    ['Dönemsel Bilgiler', IconCon.mobileMarketing, '/maas_bilgileri', false],
    ['Maaş Bilgileri', IconCon.mola, '/maasbilgileri_donemsel', false],
  ];
}
