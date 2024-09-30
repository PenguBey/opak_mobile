import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class DonemselmaasbilgisiCardWidget extends StatelessWidget {
  final List<List<String>> maaslar;
  const DonemselmaasbilgisiCardWidget({
    super.key,
    required this.maaslar,
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
                      for (var item in maaslar)
                        Row(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                item[0],
                                style: TextStyleCon.miniTitle,
                              ),
                            ),
                            const Text(
                              "-",
                              textAlign: TextAlign.end,
                              style: TextStyleCon.miniTitle,
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                item[1],
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
