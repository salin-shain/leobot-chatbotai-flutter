import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  List<Map<String, String>> messages = [];
  String conversationId = "12345"; // Static for now, can be dynamic

  Future<void> sendMessage(String message) async {
    if (message.isEmpty) return;

    setState(() {
      messages.add({"role": "user", "content": message});
    });

    final response = await http.post(
      Uri.parse("http://localhost:8000/chat/"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "message": message,
        "conversation_id": conversationId,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      setState(() {
        messages
            .add({"role": "assistant", "content": responseData["response"]});
      });
    } else {
      setState(() {
        messages.add(
            {"role": "assistant", "content": "Error: Unable to get response"});
      });
    }

    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(children: [
            CircleAvatar(
              backgroundImage:
                  AssetImage('assets/logo.png'), // Replace with your logo
              radius: 18, // Adjust size
            ),
            SizedBox(width: 10),
            Text("LeoBot")
          ])),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                return ListTile(
                  title: Align(
                    alignment: msg["role"] == "user"
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: msg["role"] == "user"
                            ? Colors.blue[200]
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(msg["content"]!),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(hintText: "Type a message"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send_rounded),
                  onPressed: () => sendMessage(_controller.text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
