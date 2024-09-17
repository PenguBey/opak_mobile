import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: GridView.count(
        childAspectRatio: 1.5,
        crossAxisCount: 2,
        children: [
          _buildItem('Maaş', Icons.attach_money),
          _buildItem('Giriş-Çıkış\nHareketleri', Icons.login),
          _buildItem('İzin', Icons.event_available),
          _buildItem('Servis', Icons.local_offer),
          _buildItem('Zimmet', Icons.assignment_ind),
          _buildItem('Duyurular', Icons.announcement),
          _buildItem('Haberler', Icons.newspaper),
          _buildItem('İş İlanları', Icons.work),
          _buildItem('Sözleşmeler', Icons.description),
          _buildItem('Talimatlar', Icons.assignment),
          _buildItem('Anketler', Icons.poll),
          _buildItem('Verimlilik', Icons.assessment),
          _buildItem('Öneri\nŞikayet', Icons.feedback),
          _buildItem('', Icons.question_mark),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String title, IconData icon) {
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0),
            SizedBox(height: 8.0),
            Text(title, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
