import 'package:assg_2/Homepage.dart';
import 'package:assg_2/servicePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ProductListPage.dart';
import 'greenhouse2page.dart';
import 'main.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: []

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => servicePage()));
            }, icon: Icon(Icons.category_outlined),
            ),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            }, icon: Icon(Icons.chat),
            ),
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
            }, icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }

  servicePage() {}
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  const CategoryCard({
    required this.title,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(icon, size: 40, color: Colors.white),
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}