import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/icon_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class VardiyaWidget extends StatelessWidget {
  const VardiyaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeCon.miniBaslik,
              child: Text(
                "Vardiya",
                style: TextStyleCon.miniTitle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  IconCon.soru,
                  width: 50,
                ),
                const Column(
                  children: [
                    Text(
                      "N0818.Vardiya",
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
