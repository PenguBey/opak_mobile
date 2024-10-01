import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

import '../constants/color_con.dart';

class SureWidget extends StatelessWidget {
  const SureWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorCon.siyahGolge(),
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Giriş: 07:45",
              textAlign: TextAlign.start,
              style: TextStyleCon.miniTitle,
            ),
          ),
          Expanded(
            child: Text(
              "Çıkış: 18:06",
              textAlign: TextAlign.center,
              style: TextStyleCon.miniTitle,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              "Toplam: 10 Sa. 21 Dk.",
              textAlign: TextAlign.end,
              style: TextStyleCon.renkliMiniTitle(ColorCon.dikkat),
            ),
          )
        ],
      ),
    );
  }
}
