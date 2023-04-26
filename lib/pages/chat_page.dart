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
          Icon(Icons.more_horiz_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.airline_stops_outlined),
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
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 47, 47, 47),
                        borderRadius: BorderRadius.circular(8),
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
                            "Поиск",
                            style:
                                TextStyle(fontSize: 15, color: Colors.white60),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Фильтровать",
                    style: TextStyle(color: Colors.blue.shade500, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 47, 47, 47),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Основны",
                      style: TextStyle(fontSize: 15, color: Colors.white60),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 47, 47, 47),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Основны",
                      style: TextStyle(fontSize: 15, color: Colors.white60),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 35,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 47, 47, 47),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Основны",
                      style: TextStyle(fontSize: 15, color: Colors.white60),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
