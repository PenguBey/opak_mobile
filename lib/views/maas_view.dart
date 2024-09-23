import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

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
          return const Card(
            color: ColorCon.foreGround,
            child: Padding(
              padding: EdgeCon.card,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.directions_walk_sharp,
                        size: 60,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Text(
                      "Dönemsel Maaş Bilgileri",
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
