import 'package:flutter/material.dart';
import 'package:opak_mobile/widgets/basit_bilgialan_wiget.dart';

import '../constants/icon_con.dart';
import '../widgets/bottomnavigation_bar_widget.dart';

class MenuView extends StatelessWidget {
  MenuView({super.key});
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
      body: GridView.builder(
        itemCount: test.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5),
        itemBuilder: (context, index) {
          return BasitBilgialanWiget(
              string: test.keys.elementAt(index),
              iconData: test.values.elementAt(index));
        },
      ),
      bottomNavigationBar: const BottomnavigationBarWidget(),
    );
  }
}
