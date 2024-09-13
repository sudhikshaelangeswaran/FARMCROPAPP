import 'package:flutter/material.dart';

class MarrowPage extends StatelessWidget {
  const MarrowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marrow'),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        padding: const EdgeInsets.all(9.0),
        children: [


          buildListItem(context, 'Zuchini', 100, 87, 'images/zu.jpeg'),
          buildListItem(context, 'Mushroom', 79, 45, 'images/mush.jpeg'),
          buildListItem(context, 'Cucumber', 50, 15, 'images/cu.png'),
          buildListItem(context, 'Pumpkin', 50, 15, 'images/pum.jpg'),
          buildListItem(context, 'Egg plant', 79, 45, 'images/bri.jpg'),
          buildListItem(context, 'Yellow Marrow', 79, 45, 'images/ye.jpeg'),
          buildListItem(context, 'Broccoli', 79, 45, 'images/bro.jpeg'),
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
