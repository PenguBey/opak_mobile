import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/color_con.dart';
import 'package:opak_mobile/constants/edge_con.dart';
import 'package:opak_mobile/constants/text_style_con.dart';

class Usertitle2Widget extends StatelessWidget {
  const Usertitle2Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeCon.middle,
      margin: EdgeCon.middle,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: EdgeCon.raius,
        boxShadow: const [
          BoxShadow(
            color: ColorCon.blackshadow,
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: const Row(
        children: <Widget>[
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541'),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'ZEKERİYA ÇAKIR',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'BİLGİSAYAR MÜHENDİSİ',
                  style: TextStyleCon.title,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.wb_sunny,
                size: 40,
                color: ColorCon.gunes,
              ),
              SizedBox(height: 8),
              Text(
                '32.3°C',
                style: TextStyleCon.title,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
