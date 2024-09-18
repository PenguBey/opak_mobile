import 'package:flutter/material.dart';

import '../constants/color_con.dart';

class UserTileWidget extends StatelessWidget {
  const UserTileWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
      child: Card(
        child: Container(
          //padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // margin: const EdgeInsets.fromLTRB(8, 0, 16, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: ColorCon.cicleAvatar),
                padding: const EdgeInsets.all(3.0),
                child: const CircleAvatar(
                  radius: 28,
                  foregroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/124432670?v=4"),
                ),
              ),
              const Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hayırlı Günler  \uD83C\uDF24",
                    ),
                    Text(
                      "SELMAN KOYUNCU",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    Text("MUHASEBE FİNANS EHİL PERSONELİ")
                  ],
                ),
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.wb_sunny_outlined,
                    size: 45,
                  ),
                  Text(
                    "32.3°C",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
