import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/icon_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class KidemGunuWidget extends StatelessWidget {
  const KidemGunuWidget({
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
                "Kıdem Gününüz",
                style: TextStyleCon.miniTitle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "1", style: TextStyleCon.miniTitle),
                          TextSpan(text: " yıl")
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "11", style: TextStyleCon.miniTitle),
                          TextSpan(text: " ay")
                        ],
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "16", style: TextStyleCon.miniTitle),
                          TextSpan(text: " gün")
                        ],
                      ),
                    ),
                  ],
                ),
                SvgPicture.asset(
                  IconCon.takvim,
                  height: 50,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
