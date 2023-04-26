import 'dart:ui';

import 'package:cloneinstagram/main.dart';
import 'package:cloneinstagram/pages/chat_page.dart';
import 'package:cloneinstagram/pages/search_page.dart';
import 'package:cloneinstagram/pages/window_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:particles_flutter/particles_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _controller = PageController();
  int hozirgiindex = 0;
  @override
  Widget build(BuildContext context) {
    return PageView(
      
      children: [
        Scaffold(
          backgroundColor: Colors.transparent,
          body: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              MyWidget(),
              SearchPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.white,
            selectedIconTheme: IconThemeData(color: Colors.white),
            currentIndex: hozirgiindex,
            onTap: (value) {
              setState(() {
                hozirgiindex = value;
              });

              _controller.animateToPage(hozirgiindex,
                  duration: Duration(milliseconds: 200), curve: Curves.linear);
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/home.png"),
                    size: 20,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/search.png"),
                    size: 20,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/add.png"),
                    size: 20,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage("assets/video.png"),
                    size: 20,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: ""),
            ],
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
          ),
        ),ChatPage(),
      ],
    );
  }
}
