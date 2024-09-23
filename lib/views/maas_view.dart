import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/widgets/basit_bilgialan_wiget.dart';

class MaasView extends StatelessWidget {
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
        itemCount: 5,
        itemBuilder: (context, index) {
          return const BasitBilgialanWiget();
        },
      ),
    );
  }
}
