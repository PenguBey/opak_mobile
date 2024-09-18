import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menü',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Maaş'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Giriş-Çıkış Hareketleri'),
              onTap: () {},
            ),
            ListTile(
              title: Text('İzin'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Servis'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Zimmet'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Duyurular'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Haberler'),
              onTap: () {},
            ),
            ListTile(
              title: Text('İş İlanları'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Sözleşmeler'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Talimatlar'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Anketler'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Verimlilik'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Öneri Şikayet'),
              onTap: () {},
            ),
          ],
        ),
      ),
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
