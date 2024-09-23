import 'package:flutter/material.dart';
import 'package:opak_mobile/widgets/maas_bilgileri_widget.dart';

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maaş Bilgileri'),
        leading: Icon(Icons.arrow_back),
        actions: [
          Icon(Icons.info_outline),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dönem',
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              'Temmuz - 24',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            _buildBilgiRow(Icons.account_balance_wallet,
                'Ücret (P.Gün: 30 / T.Gün: 31)', '28.407,36 TL', Colors.black),
            _buildBilgiRow(Icons.access_time, 'Saat Ücreti (-2.00)',
                '-244,36 TL', Colors.red),
            _buildBilgiRow(
                Icons.card_giftcard, 'Prim Vefa', '200,00 TL', Colors.green),
            _buildBilgiRow(
                Icons.star, 'Prim Yetkinlik', '1.943,00 TL', Colors.green),
            _buildBilgiRow(Icons.check_circle, 'Prim Devamlılık', '750,00 TL',
                Colors.green),
            SizedBox(height: 16),
            _buildColoredContainer(
                Icons.money, 'Avans', '10.000,00 TL', Colors.orange),
            _buildColoredContainer(Icons.attach_money, 'Ödeme Tutarı',
                '21.055,97 TL', Colors.blue),
            _buildColoredContainer(
                Icons.monetization_on, 'Toplam', '31.056,00 TL', Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildBilgiRow(
      IconData icon, String title, String amount, Color amountColor) {
    return MaasBilgileriWidget(
        icon: icon, title: title, amount: amount, amountColor: amountColor);
  }

  Widget _buildColoredContainer(
      IconData icon, String title, String amount, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 24, color: Colors.white),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Text(
            amount,
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
