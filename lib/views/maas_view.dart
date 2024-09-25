import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/icon_con.dart';
import 'package:opak_mobile/widgets/basit_bilgialan_wiget.dart';

class MaasView extends StatelessWidget {
  MaasView({super.key});
  var test = {
    'deneme': IconCon.chat,
    'test': IconCon.chat,
    'test test': IconCon.onlineDiscussion,
    'test12as': IconCon.onlineCalendar,
    'gkairslj asdfh': IconCon.mobileMarketing,
    'sdiajlk adjieakr': IconCon.questions,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Maaş"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5),
        itemCount: test.length,
        itemBuilder: (context, index) {
          return BasitBilgialanWiget(
            string: test.keys.elementAt(index),
            iconData: test.values.elementAt(index),
          );
        },
      ),
    );
  }
}
