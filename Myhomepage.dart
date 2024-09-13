import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'ProfilePage.dart';
import 'chatPage.dart';
import 'greenhouse2page.dart';
import 'servicePage.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Image.asset('images/farms.jpg'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'SEED STORES',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'open',
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text('4.1'),
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
                    'Seed stores aim to empower gardeners to grow an environmentally friendly world by offering a wide selection of seeds for all'
                        ' garden types and experience levels. They provide the best seeds and information'
                        ' to develop plants confidently, with helpful staff available to assist at every step of the gardening adventure.'
                        'SEED STORES DONE BY CHARINDHU EDMAND',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Address - 300m ,churuch rd , Hunupitiya, Anuradhapura,sri lanka',
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
                        _buildRelatedProduct('images/plant.jpg'),
                        _buildRelatedProduct('images/download.jpeg'),
                        _buildRelatedProduct('images/pepper.jpg'),

                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 40),
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
      bottomNavigationBar: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            }, icon: Icon(Icons.home),
            ),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ServicePage()));
            }, icon: Icon(Icons.category_outlined),
            ),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
            }, icon: Icon(Icons.chat),
            ),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
            }, icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

  }Widget _buildRelatedProduct(String imagePath) {
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