import 'package:flutter/material.dart';

class BasitBilgiWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  const BasitBilgiWidget({
    required this.title,
    required this.color,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon, size: 48.0, color: color),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, textAlign: TextAlign.right),
            ),
          ),
        ],
      ),
    );
  }
}
