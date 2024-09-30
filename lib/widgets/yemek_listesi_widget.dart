import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class YemekListesiWidget extends StatelessWidget {
  final Map<String, String> menuler;
  const YemekListesiWidget({
    super.key,
    required this.menuler,
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
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    color: ColorCon.yemek,
                  ),
                  Text(
                    "Yemek Listesi",
                    style: TextStyle(color: Color.fromARGB(255, 209, 143, 45), fontSize: 16),
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
                  return Card(
                    color: ColorCon.backGround,
                    child: Container(
                      width: 120,
                      padding: EdgeCon.card,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(menuler.keys.elementAt(index)),
                          SvgPicture.asset(
                            menuler.values.elementAt(index),
                            height: 40,
                          ),
                        ],
                      ),
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
