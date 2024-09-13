import 'package:assg_2/servicePage.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'greenhouse2page.dart';

class greenhouse3Page extends StatefulWidget {
  @override
  _greenhouse3PageState createState() => _greenhouse3PageState();
}

class _greenhouse3PageState extends State<greenhouse3Page> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Handle back button press
          },
        ),
        title: Text('Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.bookmark),
            onPressed: () {
              // Handle bookmark button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset('images/nuw.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'NUWARA KADE ',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'open',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text('4.7'),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  SizedBox(height: 16.0),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Fresh Eats offers a wide selection of premium fruits, ensuring taste and health benefits. '
                        'They maintain relationships with dependable growers to ensure every fruit piece meets strict quality and freshness requirements. '
                        'Their extensive selection includes citrus, apples, berries, and tropical fruits, catering to various fruit needs.'
                        'NUWARA KADE DONE BY SINNATHAMBI ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Address - 12/06 B,haweli,Nuwara eliya,sri lanka',
                    style: TextStyle(
                      fontSize: 18.0,

                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Products you may like',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildRelatedProduct('images/ca.jpg'),
                        _buildRelatedProduct('images/sta.jpg'),
                        _buildRelatedProduct('images/lee.jpeg'),

                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      textStyle: const TextStyle(fontSize: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ServicePage()),
                      );
                    },
                    child: const Text(
                      'view more',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRelatedProduct(String imagePath) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      width: 100.0,
      child: Column(
        children: <Widget>[
          Image.asset(imagePath),
          SizedBox(height: 4.0),
          Text(
            'Product ',
            style: TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}