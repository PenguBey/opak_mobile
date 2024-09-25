import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

import '../constants/color_con.dart';
import '../constants/edge_con.dart';

class BasitBilgialanWiget extends StatelessWidget {
  final String string;
  final String iconData;
  const BasitBilgialanWiget({
    super.key,
    required this.string,
    required this.iconData,
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
                const Expanded(child: SizedBox()),
                SvgPicture.asset(
                  iconData,
                  height: 60,
                )
              ],
            ),
            Expanded(
              child: Text(
                string,
                textAlign: TextAlign.right,
                style: TextStyleCon.miniTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
