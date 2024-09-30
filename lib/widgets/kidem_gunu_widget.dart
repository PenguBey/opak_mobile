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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text('1 yıl'), Text('11 ay'), Text('16 gün')],
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
