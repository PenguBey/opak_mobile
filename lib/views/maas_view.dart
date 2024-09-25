import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:opak_mobile/controllers/maas_controller.dart';
import 'package:opak_mobile/widgets/basit_bilgialan_wiget.dart';

class MaasView extends GetView<MaasController> {
  const MaasView({super.key});
  

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
        itemCount: controller.test.length,
        itemBuilder: (context, index) {
          return BasitBilgialanWiget(
            string: controller.test.keys.elementAt(index),
            iconData: controller.test.values.elementAt(index),
          );
        },
      ),
    );
  }
}
