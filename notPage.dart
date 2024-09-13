import 'package:flutter/material.dart';

class notPage extends StatefulWidget {
  const notPage({super.key});

  @override
  State<notPage> createState() => _notPageState();
}

class _notPageState extends State<notPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          _buildChatItem('Seeds store', 'FLAT 30% WEEKEND OFF!!!', '5:00', true),
          _buildChatItem('Daily shop', 'Check out our new fresh stocks', '9:00', true),
          _buildChatItem('VEGIE', 'Hello, its been a while since you had a look', '9:00', true),
          _buildChatItem('Nuwara kade', 'The store is closed for the next two days!', '9:00', false),
          _buildChatItem('Frutiees', 'CRAVING FOR SOMETHING SWEET? BUT STILL HEALTHY?', '9:00', true),
        ],
      ),
    );
  }

  Widget _buildChatItem(String name, String message, String time, bool isOnline) {
    return ListTile(
      title: Text(name),
      subtitle: Text(message),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(time, style: TextStyle(fontSize: 12.0)),
          if (isOnline)
            Icon(Icons.circle, color: Colors.green, size: 10.0),
        ],
      ),
    );
  }
}
