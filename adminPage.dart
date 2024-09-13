import 'package:assg_2/pannelPage.dart';
import 'package:flutter/material.dart';

import 'ProfilePage.dart';
import 'chatPage.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Message',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.lightGreen, // Start color
                Colors.green, // End color
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Colors.lightGreen,
                contentPadding: EdgeInsets.symmetric(vertical: 8),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // Chat List
          Expanded(
            child: ListView(
              children: [
                ChatTile(
                  name: 'Sudhiksha',
                  message: 'Can I know whether I will be able to get the order within the next 10 hours?',
                  time: '5 min',
                  isOnline: true,
                  imageUrl: 'images/gai.jpg',
                  backgroundimage: 'images/gai.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                ),
                ChatTile(
                  name: 'Gayathri Elangeshwaran',
                  message: 'The delivery person is not picking up the call',
                  time: '15 min',
                  isOnline: false,
                  hasUnreadMessage: true,
                  imageUrl: 'images/gai.jpg',
                  backgroundimage: 'images/gai.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                ),
                ChatTile(
                  name: 'Ashwina',
                  message: 'I didn’t get the late delivery fee',
                  time: '1 hour',
                  isOnline: true,
                  imageUrl: 'images/gai.jpg',
                  backgroundimage: 'images/gai.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                ),
                ChatTile(
                  name: 'Praveena',
                  message: 'Anything new at the seeds stores?',
                  time: '5 min',
                  isOnline: false,
                  imageUrl: 'images/gai.jpg',
                  backgroundimage: 'images/gai.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                ),
                ChatTile(
                  name: 'Chandra',
                  message: 'I don’t know how to search for new payment options',
                  time: '5 min',
                  isOnline: false,
                  imageUrl: 'images/gai.jpg',
                  backgroundimage: 'images/gai.jpg',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChatPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.lightGreen,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AdminPage()),
                );
              },
              icon: const Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pannelPage()),
                );
              },
              icon: const Icon(Icons.dashboard_customize),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String imageUrl;
  final bool isOnline;
  final bool hasUnreadMessage;
  final String? backgroundimage;
  final VoidCallback? onTap;

  const ChatTile({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.imageUrl,
    this.isOnline = false,
    this.hasUnreadMessage = false,
    this.backgroundimage,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Stack(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 25,
          ),
          if (isOnline)
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
            ),
        ],
      ),
      title: Text(
        name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        message,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          if (hasUnreadMessage)
            Container(
              margin: EdgeInsets.only(top: 5),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.lightGreen,
              ),
            ),
        ],
      ),
    );
  }
}




