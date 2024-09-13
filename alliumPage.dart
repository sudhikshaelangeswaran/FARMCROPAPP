import 'package:flutter/material.dart';

class alliumPage extends StatefulWidget {
  const alliumPage({super.key});

  @override
  _alliumPageState createState() => _alliumPageState();
}

class _alliumPageState extends State<alliumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ALLIUM'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        padding: const EdgeInsets.all(9.0),
        children: [
          buildListItem(context, 'Onion', 100, 87, 'images/ons.jpg'),
          buildListItem(context, 'Garlic', 79, 45, 'images/gar.jpeg'),
          buildListItem(context, 'Rampe', 50, 15, 'images/ram.jpeg'),
          buildListItem(context, 'Spring Onion', 50, 15, 'images/spr.jpeg'),
          buildListItem(context, 'Chives', 79, 45, 'images/chiv.jpeg'),
          buildListItem(context, 'Scallions', 79, 45, 'images/sca.jpeg'),
          buildListItem(context, 'White Onion', 79, 45, 'images/wh.jpeg'),
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
                    // Add to Cart functionality here
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
