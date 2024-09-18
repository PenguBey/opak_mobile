import 'package:flutter/material.dart';

class MaasView extends StatelessWidget {
  const MaasView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Maaş"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1.5),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Expanded(
                        child: Text(
                      "Dönemsel Maaş Bilgileri",
                      textAlign: TextAlign.right,
                    )),
                  ],
                ),
                Icon(
                  Icons.directions_walk_sharp,
                  size: 100,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
