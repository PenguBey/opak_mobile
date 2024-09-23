import 'package:flutter/material.dart';

import '../constants/color_con.dart';
import '../constants/edge_con.dart';

class BasitBilgialanWiget extends StatelessWidget {
  const BasitBilgialanWiget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Expanded(child: SizedBox()),
                Icon(
                  Icons.directions_walk_sharp,
                  size: 60,
                ),
              ],
            ),
            Expanded(
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
