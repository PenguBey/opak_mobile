import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class BildirimListesiWidget extends StatelessWidget {
  const BildirimListesiWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Column(
          children: [
            const Padding(
              padding: EdgeCon.miniBaslik,
              child: Row(
                children: [
                  Icon(
                    Icons.notifications_none,
                    size: 50,
                  ),
                  Text(
                    "Bildirimler",
                    style: TextStyleCon.miniTitle,
                  )
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: Icon(
                        Icons.notifications,
                        size: 30,
                      ),
                      title: Text("30 Ağustps Bilfilendirmesi HK."),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
