import 'package:flutter/material.dart';

import 'cartPage.dart';

class fruitPage extends StatefulWidget {
  const fruitPage({super.key});

  @override
  _FruitPageState createState() => _FruitPageState();
}

class _FruitPageState extends State<fruitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruit'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        padding: const EdgeInsets.all(9.0),
        children: [
          buildListItem(context, 'Strawberries', 100, 87, 'images/sta.jpg'),
          buildListItem(context, 'Mango', 79, 45, 'images/mango.png'),
          buildListItem(context, 'Banana', 50, 15, 'images/bann.jpeg'),
          buildListItem(context, 'Pineapple', 50, 15, 'images/pin.jpg'),
          buildListItem(context, 'Narang', 79, 45, 'images/or.jpg'),
          buildListItem(context, 'Neli', 79, 45, 'images/neli.jpg'),
          buildListItem(context, 'Mangus', 79, 45, 'images/mangu.jpg'),
        ],
      ),
    );
  }

  Widget buildListItem(BuildContext context, String title, int originalPrice, int discountedPrice, String imagePath) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () {},
                      ),
                      Text('1', style: TextStyle(fontSize: 16)),
                      IconButton(
                        icon: Icon(Icons.add),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\LKR$originalPrice',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  '\LKR$discountedPrice',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightGreen,
                  ),
                ),
                SizedBox(height: 10), // Space between price and button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => cartPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen, // Button color
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
