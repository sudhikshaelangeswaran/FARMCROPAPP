import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy and Security', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.lightGreen,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Privacy and Security',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'This section allows users to manage their privacy settings and secure their account. '
                  'They can control data sharing preferences, manage permissions, enable two-factor authentication, '
                  'and review recent account activity to ensure security. Users can also adjust settings related to how '
                  'their personal information is used or stored.',
              style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
            ),

          ],
        ),
      ),
    );
  }
}
