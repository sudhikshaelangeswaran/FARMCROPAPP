import 'package:assg_2/servicePage.dart';
import 'package:flutter/material.dart';

import 'Homepage.dart';
import 'ProfilePage.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, String>> _messages = [];

  void _sendMessage() {
    if (_controller.text.isEmpty) return;

    setState(() {
      _messages.add({"message": _controller.text, "sender": "user"});
      _controller.clear();
      _generateBotResponse();
    });
  }

  void _generateBotResponse() {
    String botResponse = "You said: ${_messages.last['message']}";

    setState(() {
      _messages.add({"message": botResponse, "sender": "bot"});
    });
  }

  Widget _buildMessage(String message, bool isUserMessage) {
    return Align(
      alignment: isUserMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: isUserMessage ? Colors.blueAccent : Colors.grey[300],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          message,
          style: TextStyle(
            color: isUserMessage ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green, Colors.lightGreen],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(185),
                    bottomRight: Radius.circular(185),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: Icon(Icons.menu, color: Colors.white),
              ),
              Positioned(
                top: 70,
                left: MediaQuery.of(context).size.width / 2.1 - 50,
                child: CircleAvatar(
                  radius: 65,
                  backgroundImage: AssetImage('images/pr.jpg'), // Replace with your profile image
                ),
              ),
              Positioned(
                top: 200,  // Adjust this value to move the username lower
                left: MediaQuery.of(context).size.width / 2.5- 100,
                child: Column(
                  children: [
                    Text(

                          ' HOW CAN I HELP YOU ?',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[_messages.length - 1 - index];
                final isUserMessage = message["sender"] == "user";
                return _buildMessage(message["message"]!, isUserMessage);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Type a message/Make a order',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                IconButton(
                  icon: const Icon(Icons.send),
                  color: Colors.lightGreen,
                  onPressed: _sendMessage,
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
                    context, MaterialPageRoute(builder: (context) => HomePage()));
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ServicePage()));
              },
              icon: Icon(Icons.category_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ChatPage()));
              },
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
