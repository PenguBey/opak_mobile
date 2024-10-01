import 'package:flutter/material.dart';

class KidemGunuWidget extends StatelessWidget {
  const KidemGunuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 129, 208, 248), // Koyu arka plan rengi
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Kıdem Gününüz",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
          const SizedBox(height: 8),
          const Text("1 yıl 11 ay 16 gün",
              style:
                  TextStyle(fontSize: 13, color: Color.fromARGB(255, 0, 0, 0))),
        ],
      ),
    );
  }
}
