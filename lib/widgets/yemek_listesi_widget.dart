import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class YemekListesiWidget extends StatelessWidget {
  const YemekListesiWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorCon.foreGround,
      child: Padding(
        padding: EdgeCon.card,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeCon.miniBaslik,
              child: Text(
                "Yemek Listesi",
                style: TextStyleCon.miniTitle,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.food_bank_outlined,
                  size: 50,
                ),
                Expanded(
                  child: SizedBox(
                    height: 85,
                    child: ListView.builder(
                      itemCount: 15,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const SizedBox(
                          width: 150,
                          child: Card(
                            color: ColorCon.backGround,
                            child: Padding(
                              padding: EdgeCon.card,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.dining_outlined),
                                  Text("Ezogelin Çorbası")
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
