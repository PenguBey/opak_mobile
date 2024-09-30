import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class BildirimListesiWidget extends StatelessWidget {
  final List<String> bildirimler;
  const BildirimListesiWidget({
    super.key,
    required this.bildirimler,
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
                    Icons.notifications,
                    color: ColorCon.takvim,
                  ),
                  Text(
                    "Bildirimler",
                    style: TextStyle(color: ColorCon.takvim, fontSize: 16),
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
      ),
    );
  }
}
