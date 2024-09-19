import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';

class YemekListesiWidget extends StatelessWidget {
  const YemekListesiWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorCon.foreGround,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Yemek Listesi"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Icon(
                Icons.food_bank_outlined,
                size: 50,
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const Card(
                        color: ColorCon.backGround,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.dining_outlined),
                            Text("Yemek Menüsü")
                          ],
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
    );
  }
}
