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
      margin: EdgeCon.card,
      color: ColorCon.kidem,
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
                style: TextStyleCon.negativeTitle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1 yıl',
                      style: TextStyleCon.negative,
                    ),
                    Text('11 ay', style: TextStyleCon.negative),
                    Text('16 gün', style: TextStyleCon.negative)
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
