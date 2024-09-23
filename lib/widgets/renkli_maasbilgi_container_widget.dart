import 'package:flutter/material.dart';

class RenkliMaasbilgiContainerWidget extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String amount;
  const RenkliMaasbilgiContainerWidget({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24, color: Colors.white),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Text(
            amount,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
