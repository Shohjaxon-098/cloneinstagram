import 'package:cloneinstagram/pages/chat_search_page.dart';
import 'package:flutter/material.dart';
import 'package:cloneinstagram/pages/window_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("otabekov_shohjakhon_"),
        actions: [
          Icon(Icons.video_camera_front_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.add),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatSearchPage(),
                    ));
              },
              child: Container(
                width: double.infinity,
                height: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 47, 47, 47),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white60,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Qidiruv",
                      style: TextStyle(fontSize: 15, color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
