import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

import '../constants/color_con.dart';

class UserTileWidget extends StatelessWidget {
  const UserTileWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 28,
                foregroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/124432670?v=4",
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SELMAN KOYUNCU",
                    style: TextStyleCon.title,
                  ),
                  Text("MUHASEBE FİNANS EHİL PERSONELİ")
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wb_sunny,
                  size: 50,
                  color: ColorCon.gunes,
                ),
                Text(
                  "32.3°C",
                  style: TextStyleCon.title,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
