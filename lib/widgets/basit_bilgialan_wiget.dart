import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/icon_con.dart';

import '../constants/color_con.dart';
import '../constants/edge_con.dart';

class BasitBilgialanWiget extends StatelessWidget {
  const BasitBilgialanWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Expanded(child:  SizedBox()),
                SvgPicture.asset(
                  IconCon.takvim,
                  height: 50,
                )
              ],
            ),
            const Expanded(
              child: Text(
                "Dönemsel Maaş Bilgileri",
                textAlign: TextAlign.right,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
