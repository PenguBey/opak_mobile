import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class VardiyaWidget extends StatelessWidget {
  const VardiyaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeCon.miniBaslik,
              child: Text(
                "Vardiya",
                style: TextStyleCon.miniTitle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.directions_walk_sharp,
                  size: 50,
                ),
                Column(
                  children: [
                    Text(
                      "N0818.Vardiya",
                      style: TextStyleCon.miniTitle,
                    ),
                    Text("08:00 - 18:00"),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
