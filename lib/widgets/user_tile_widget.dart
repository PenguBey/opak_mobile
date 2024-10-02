import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/image_con.dart';

import '../constants/box_decor_con.dart';
import '../constants/edge_con.dart';

class UserTileWidget extends StatelessWidget {
  const UserTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecorCon.siyahGolge(),
      margin: EdgeCon.card,
      padding: EdgeCon.card,
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              foregroundImage: AssetImage(ImageCon.user),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Efe Ömer",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Bilgisayar Mühendisi",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
