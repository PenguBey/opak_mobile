import 'package:flutter/material.dart';

import '../widgets/donemsel_maas_grafigi_widget.dart';
import '../widgets/donemselmaasbilgisi_card_widget.dart';

class MaasBilgileriView extends StatelessWidget {
  const MaasBilgileriView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dönemsel Maaş Bilgileri"),
      ),
      body: const Column(
        children: [
          DonemselmaasbilgisiCardWidget(),
          Expanded(child: DonemselMaasGrafigiWidget())
        ],
      ),
    );
  }
}
