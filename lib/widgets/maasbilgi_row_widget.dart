import 'package:flutter/material.dart';
import 'package:opak_mobile/constants/edge_con.dart';

class MaasbilgiRowWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String amount;
  final Color amountColor;

  const MaasbilgiRowWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.amount,
    required this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeCon.symlistI,
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
            ),
          ),
          Text(
            amount,
            style: TextStyle(color: amountColor),
          ),
        ],
      ),
    );
  }
}
