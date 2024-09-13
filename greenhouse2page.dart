import 'package:assg_2/servicePage.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'greenhouse2page.dart';
import 'greenhouse3page.dart';

class greenhouse2Page extends StatefulWidget {
  const greenhouse2Page({super.key});

  @override
  _greenhouse2PageState createState() {
    return _greenhouse2PageState();
  }
}

class _greenhouse2PageState extends State<greenhouse2Page> {
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
            Image.asset('images/fruits.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'PERERA FRUITS ',
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
                    'You can get the freshest and most colourful assortment of fruits here at **Perera Fruits**. Offering a vast selection of exotic and locally obtained fruits that are hand-picked to guarantee the best quality is something we at Perera Fruits are proud to offer. Saturated with flavour and goodness, this place has everything you need, from everyday staples to something a little more unique. As soon as you enter our store, your senses will be delighted by the sight and smell of the fresh produce. Our mission is to simplify and elevate healthy eating. Visit Perera Fruits and discover a world of flavour and freshness!'
                        'PERERA FRUITS DONE SONALI PERIRIES ',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Address - 07/M ,Rilalua,Sri lanka ',
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
                        _buildRelatedProduct('images/mangu.jpg'),
                        _buildRelatedProduct('images/sta.jpg'),
                        _buildRelatedProduct('images/bann.jpeg'),

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