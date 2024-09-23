import 'package:flutter/material.dart';

class MaasBilgileriWidget extends StatelessWidget {
  IconData icon;
  String title;
  String amount;
  Color amountColor;
  MaasBilgileriWidget(
      {super.key,
      required this.icon,
      required this.title,
      required this.amount,
      required this.amountColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Text(
            amount,
            style: TextStyle(fontSize: 16, color: amountColor),
          ),
        ],
      ),
    );
  }
}
