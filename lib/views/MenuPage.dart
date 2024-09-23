import 'package:flutter/material.dart';
import 'package:opak_mobile/widgets/basit_bilgi_widget.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        children: [
          _buildItem('Maaş', Icons.attach_money, Colors.green),
          _buildItem('Giriş-Çıkış\nHareketleri', Icons.login, Colors.blue),
          _buildItem('İzin', Icons.event_available, Colors.orange),
          _buildItem('Servis', Icons.local_offer, Colors.purple),
          _buildItem('Zimmet', Icons.assignment_ind, Colors.red),
          _buildItem('Duyurular', Icons.announcement, Colors.amber),
          _buildItem('Haberler', Icons.newspaper, Colors.blueGrey),
          _buildItem('İş İlanları', Icons.work, Colors.brown),
          _buildItem('Sözleşmeler', Icons.description, Colors.teal),
          _buildItem('Talimatlar', Icons.assignment, Colors.cyan),
          _buildItem('Anketler', Icons.poll, Colors.deepPurple),
          _buildItem('Verimlilik', Icons.assessment, Colors.lightBlue),
          _buildItem('Öneri\nŞikayet', Icons.feedback, Colors.pink),
        ],
      ),
    );
  }

  Widget _buildItem(String title, IconData icon, Color color) {
    return BasitBilgiWidget(title: title, color: color, icon: icon);
  }
}
