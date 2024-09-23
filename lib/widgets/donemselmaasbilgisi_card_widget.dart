import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class DonemselmaasbilgisiCardWidget extends StatelessWidget {
  const DonemselmaasbilgisiCardWidget({
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
          children: [
            const Padding(
              padding: EdgeCon.miniBaslik,
              child: Text(
                "Dönemsel Maaş Bilgisi - Haziran 3035",
                style: TextStyleCon.miniTitle,
              ),
            ),
            Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: Icon(
                      Icons.directions_walk_sharp,
                      size: 70,
                    )),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      for (int i = 0; i < 5; i++)
                        const Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Devamlılık Primi",
                                style: TextStyleCon.miniTitle,
                              ),
                            ),
                            Text(
                              "-",
                              textAlign: TextAlign.end,
                              style: TextStyleCon.miniTitle,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "783,00TL",
                                textAlign: TextAlign.end,
                              ),
                            )
                          ],
                        ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
