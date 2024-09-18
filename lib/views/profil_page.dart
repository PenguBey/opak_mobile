import 'package:flutter/material.dart';

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
                _buildItem('Özlük Bilgileri', Icons.person, Colors.indigo),
                _buildItem('Görev Tanımı', Icons.work, Colors.green),
                _buildItem('Hakkında', Icons.info, Colors.blue),
                _buildItem('Ayarlar', Icons.settings, Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItem(String title, IconData icon, Color color) {
    return Card(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(title),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon, size: 48.0, color: color),
            ),
          ),
        ],
      ),
    );
  }
}
