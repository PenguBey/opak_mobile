import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
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
