import 'package:flutter/material.dart';

class ordersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildOrderCard('Processing', '01 Sep 2023', 'DAILY STORES-F2456', '09 Sep 2023', Icons.autorenew, Colors.blue),
          _buildOrderCard('Shipment on the way', '02 Oct 2023', 'SEEDS-F8756', '06 Oct 2023', Icons.local_shipping, Colors.orange),
          _buildOrderCard('Delivered', '03 Nov 2023', 'NUWARA KADE-F6987', '08 Nov 2023', Icons.check_circle, Colors.green),
          _buildOrderCard('Delivered', '20 Dec 2023', 'FRUITS-F5673', '25 Dec 2023', Icons.check_circle, Colors.green),
          _buildOrderCard('Delivered', '25 Dec 2023', 'DELMONRA-F5474', '01 Jan 2024', Icons.check_circle, Colors.green),
        ],
      ),
    );
  }

  Widget _buildOrderCard(String status, String orderDate, String orderId, String shippingDate, IconData icon, Color color) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: color),
                SizedBox(width: 8.0),
                Text(
                  status,
                  style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 8.0),
            Text(orderDate, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Order', style: TextStyle(color: Colors.grey)),
                    Text(orderId, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('Shipping Date', style: TextStyle(color: Colors.grey)),
                    Text(shippingDate, style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
