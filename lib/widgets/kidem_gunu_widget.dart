import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
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
    return Container(
      decoration: BoxDecorCon.renkliGolgeSag(ColorCon.kidem),
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeCon.miniBaslik,
            child: Text(
              "Kıdem Gününüz",
              style: TextStyleCon.renkliMiniTitle(ColorCon.kidem),
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
    );
  }
}
