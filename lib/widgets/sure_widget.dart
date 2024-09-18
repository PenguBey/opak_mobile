import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/edge_con.dart';

import '../constants/color_con.dart';

class SureWidget extends StatelessWidget {
  const SureWidget({
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
            Padding(
              padding: EdgeCon.miniBaslik,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        WidgetSpan(
                          child: Icon(
                            Icons.calendar_month_outlined,
                            color: ColorCon.takvim,
                          ),
                        ),
                        TextSpan(
                          text: "  22.08.2024 - Perşembe",
                          style: TextStyle(
                            color: ColorCon.takvim,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "10 Sa. 21 Dk.",
                    style: TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
            const IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          width: 1000,
                          child: Card(
                            color: ColorCon.backGround,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Giriş: 07:45"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 1000,
                          child: Card(
                            color: ColorCon.backGround,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Çıkış: 18:06"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Card(
                      color: ColorCon.backGround,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Net Süre"),
                          Text("9 Sa."),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
