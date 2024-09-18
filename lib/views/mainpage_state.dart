import 'package:flutter/material.dart';
import 'package:opak_mobile/views/MenuPage.dart';
import 'package:opak_mobile/views/newpage.dart';
import 'package:opak_mobile/views/profil_page.dart';
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPage()),
                );
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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Ana Sayfa'));
  }
}
