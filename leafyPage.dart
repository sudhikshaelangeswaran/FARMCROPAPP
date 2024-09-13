import 'package:flutter/material.dart';

class leafyPage extends StatefulWidget {
  const leafyPage({super.key});

  @override
  State<leafyPage> createState() => _leafyPageState();
}

class _leafyPageState extends State<leafyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Root'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        padding: const EdgeInsets.all(9.0),
        children: [


          buildListItem(context, 'Mache', 100, 87, 'images/mache.jpg'),
          buildListItem(context, 'Kale', 79, 45, 'images/kale.jpeg'),
          buildListItem(context, 'Spinach', 50, 15, 'images/spi.jpeg'),
          buildListItem(context, 'Tat soi', 50, 15, 'images/tat.jpeg'),
          buildListItem(context, 'Cabbage', 79, 45, 'images/cab.jpeg'),
          buildListItem(context, 'parsley', 79, 45, 'images/par.jpeg'),
          buildListItem(context, 'Leek', 79, 45, 'images/lee.jpeg'),
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
