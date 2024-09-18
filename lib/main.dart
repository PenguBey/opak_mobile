import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZekeriyaAbiProje',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menü',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
          ),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 28, // Merkezlenmiş
            bottom: 6, // Hafif yukarıda
            child: Container(
              width: 56.0,
              height: 56.0,
              decoration: BoxDecoration(
                color: Colors.blue, // Renk ayarı
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8.0), // Yuvarlak kenarlar
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 24.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String title, IconData icon) {
    return Card(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon, size: 48.0),
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
