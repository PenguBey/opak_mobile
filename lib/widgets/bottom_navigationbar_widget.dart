import 'package:flutter/material.dart';

class BottomNavigationbarWidget extends StatelessWidget {
  const BottomNavigationbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined), label: 'profile')
      ],
    );
  }
}
