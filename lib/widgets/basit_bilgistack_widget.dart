import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class BasitBilgistackWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  const BasitBilgistackWidget({
    required this.icon,
    super.key,
    required this.color,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeCon.card,
              child: Icon(icon, size: 48.0, color: color),
              /*SvgPicture.asset(
                IconCon.takvim,
                height: 75,
              ),*/
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeCon.card,
              child: Text(title, textAlign: TextAlign.right),
            ),
          ),
        ],
      ),
    );
  }
}
