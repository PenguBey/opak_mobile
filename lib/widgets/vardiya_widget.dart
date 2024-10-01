import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/icon_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class VardiyaWidget extends StatelessWidget {
  const VardiyaWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorCon.renkliGolgeSag(ColorCon.vardiya),
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeCon.miniBaslik,
            child: Text(
              "Vardiya",
              style: TextStyleCon.renkliMiniTitle(ColorCon.vardiya),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                IconCon.soru,
                width: 50,
              ),
              const Expanded(
                child: Column(
                  children: [
                    Text(
                      "N0818.Vardiya",
                    ),
                    Text("08:00 - 18:00"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
