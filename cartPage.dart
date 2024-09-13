import 'package:assg_2/payPage.dart';
import 'package:flutter/material.dart';

import 'ordersPage.dart';

class cartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  buildCartItem('100g of Mango', 'Color: Red', '\LKR300', 'images/mango.png'),
                  buildCartItem('200g of Banana', 'Color: Black', '\LKR240', 'images/bann.jpeg'),
                  buildCartItem('550g of carrot', 'Color: Blue', '\LKR150', 'images/ca.jpg'),
                  buildCartItem('210g of casava', 'Color: Brown', '\LKR180', 'images/casa.jpeg'),
                ],
              ),
            ),
            const SizedBox(height: 9),
            buildTotalSection(context),
          ],
        ),
      ),
    );
  }

  Widget buildCartItem(String title, String color, String price, String imagePath) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 60, height: 60),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(color, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                const SizedBox(height: 4),
                Text(price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              ],
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove, color: Colors.lightGreen),
                onPressed: () {},
              ),
              const Text('1', style: TextStyle(fontSize: 16)),
              IconButton(
                icon: const Icon(Icons.add, color: Colors.lightGreen),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildTotalSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(thickness: 1),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Total', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('\LKR 850', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => payPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightGreen,
              padding: const EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            child: const Text('Order Now', style: TextStyle(fontSize: 18, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
