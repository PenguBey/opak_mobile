import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/box_decor_con.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class BildirimListesiWidget extends StatelessWidget {
  final List<String> bildirimler;
  const BildirimListesiWidget({
    super.key,
    required this.bildirimler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorCon.renkliGolgeSag(ColorCon.takvim),
      padding: EdgeCon.card,
      margin: EdgeCon.card,
      child: Column(
        children: [
          Padding(
            padding: EdgeCon.miniBaslik,
            child: Row(
              children: [
                const Icon(
                  Icons.notifications,
                  color: ColorCon.takvim,
                ),
                Text(
                  "Bildirimler",
                  style: TextStyleCon.renkliMiniTitle(ColorCon.takvim),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: bildirimler.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.notifications,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        bildirimler[index],
                        style: const TextStyle(fontSize: 15),
                      ),
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
