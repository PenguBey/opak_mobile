import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; // Başlangıçta Menü sekmesini seçili göster

  final List<Widget> _pages = [
    MenuPage(),
    HomePage(),
    ProfilePage(), // Profil sayfası
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none, // Widget taşmaları için gerekli
        children: [
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menü',
              ),
              BottomNavigationBarItem(
                icon: SizedBox
                    .shrink(), // Ortadaki buton için boş bir alan bıraktık
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
          ),
          Positioned(
            left:
                (MediaQuery.of(context).size.width - 56) / 2, // Ortalamak için
            bottom: 6, // Biraz yukarı almak için
            child: GestureDetector(
              onTap: () {
                // Ortadaki butona tıklama işlemi
                // Buraya bir eylem ekleyebilirsiniz
              },
              child: Container(
                width: 56.0,
                height: 56.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 28.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Ana Sayfa'));
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png?20150327203541'),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ZEKERİYA ÇAKIR',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'BİLGİSAYAR MÜHENDİSİ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                        overflow: TextOverflow.ellipsis, // Uzun metinleri kes
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.wb_sunny,
                      size: 40,
                      color: Colors.orange,
                    ),
                    SizedBox(height: 8),
                    Text(
                      '32.3°C', // Statik hava durumu verisi
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(8.0),
              crossAxisCount: 2,
              children: <Widget>[
                _buildItem('Özlük Bilgileri', Icons.person),
                _buildItem('Görev Tanımı', Icons.work),
                _buildItem('Hakkında', Icons.info),
                _buildItem('Ayarlar', Icons.settings),
              ],
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
            alignment: Alignment.topRight,
            child: Text(title),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Icon(icon, size: 48.0),
          ),
        ],
      ),
    );
  }
}
