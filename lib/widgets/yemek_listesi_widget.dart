import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class YemekListesiWidget extends StatelessWidget {
  final Map<String, String> menuler;
  const YemekListesiWidget({
    super.key,
    required this.menuler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorCon.renkliGolgeSag(ColorCon.yemek),
      margin: EdgeCon.card,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeCon.miniBaslik,
            child: Row(
              children: [
                const Icon(
                  Icons.notifications,
                  color: ColorCon.yemek,
                ),
                Text(
                  "Yemek Listesi",
                  style: TextStyleCon.renkliMiniTitle(ColorCon.yemek),
                )
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              itemCount: menuler.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  padding: EdgeCon.card,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(menuler.keys.elementAt(index)),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
