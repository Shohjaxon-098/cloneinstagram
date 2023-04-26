import 'dart:ui';

import 'package:cloneinstagram/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:page_transition/page_transition.dart';
import 'package:particles_flutter/particles_flutter.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(toolbarHeight: 60,
        actions: [
          GestureDetector(
            onTap: () {},
            child: const ImageIcon(
              AssetImage("assets/heart.png"),
              color: Colors.white,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 23,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: ChatPage(),
                  isIos: false,
                  duration: Duration(milliseconds: 200),
                ),
              );
            },
            child: const ImageIcon(
              AssetImage("assets/chat.png"),
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.black,
        title: const Text(
          "Instagram",
          style: TextStyle(
              fontSize: 40, fontFamily: "Billabong", color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CircularParticle(
            width: w,
            height: h,
            awayRadius: w / 5,
            numberOfParticles: 150,
            speedOfParticles: 2,
            maxParticleSize: 8,
            particleColor: Colors.white,
            awayAnimationDuration: Duration(milliseconds: 300),
            awayAnimationCurve: Curves.easeInOutBack,
            onTapAnimation: true,
            isRandSize: true,
            isRandomColor: false,
            connectDots: true,
            enableHover: true,
            hoverColor: Colors.red,
            hoverRadius: 100,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 0.5,
              sigmaY: 0.5,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                          const SizedBox(
                            width: 10,
                          ),
                          _istories(),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _postImage(),
                  _postImage(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _istories() {
  return Container(
    child: Container(
     margin: EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 3),
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover,
          image: AssetImage("assets/stori.jpg"),
        ),
      ),
    ),
    width: 70,
    height: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        colors: [
          Colors.yellow.shade600,
          Colors.orange,
          Colors.red,
          Colors.pink,
          Colors.purple.shade500,
        ],
      ),
    ),
  );
}

Widget _smallistories() {
  return const Padding(
    padding: EdgeInsets.only(left: 6),
    child: CircleAvatar(
      backgroundImage: AssetImage(
        "assets/facebook.png",
      ),
      radius: 20,
    ),
  );
}

Widget _smallestistories() {
  return const Padding(
    padding: EdgeInsets.only(left: 6),
    child: CircleAvatar(
      backgroundImage: AssetImage(
        "assets/facebook.png",
      ),
      radius: 12,
    ),
  );
}

Widget _postImage() {
  
  return Column(
    children: [
      Stack(
        children: [
          const Image(
            width: double.infinity,
            image: AssetImage(
              "assets/post.jpg",
            ),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2, top: 8),
            child: Row(
              children: [
                _smallistories(),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Facebook",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.verified_rounded,
                          size: 20,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    Text(
                      "Top-10 USA",
                      style:
                          TextStyle(fontSize: 13, color: Colors.grey.shade300),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.more_vert_sharp,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              SizedBox(
                width: 5,
              ),
              InkWell(
                  child: ImageIcon(
                AssetImage("assets/heart.png"),
                color: Colors.white,
                size: 25,
              )),
              SizedBox(
                width: 10,
              ),
              ImageIcon(
                AssetImage("assets/chat (1).png"),
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              ImageIcon(
                AssetImage("assets/send.png"),
                color: Colors.white,
                size: 25,
              ),
              Spacer(),
              ImageIcon(
                AssetImage("assets/save-instagram.png"),
                color: Colors.white,
                size: 25,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "24203 likes",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                const Text(
                  "Facebook",
                  style: TextStyle(color: Colors.white),
                ),
                const Icon(
                  Icons.verified_rounded,
                  size: 15,
                  color: Colors.blue,
                ),
                 Flexible(
                   child: Text(
                    
                    " Bu manzara eng ciroylisi edi chunki bu rasm",overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                                 ),
                 ),
               
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              _smallestistories(),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration.collapsed(
                    hintText: "Add a comment...",
                    hintStyle:
                        TextStyle(fontSize: 14, color: Colors.grey.shade400),
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text(
              "View all 3 comments",
              style: TextStyle(color: Colors.white54, fontSize: 16),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Text(
                  "23 hours ago •",
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
              ),
              Text(
                "See Translation",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
