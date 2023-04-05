import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    double deviseWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              snap: true,
              elevation: 0,
              toolbarHeight: 50,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                background: Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: 40,
                    child: TextField(
                      style: TextStyle(
                        fontSize: deviseWidth * .040,
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade900,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          hintText: 'Search',
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white54,
                          ),
                          hintStyle: TextStyle(color: Colors.white54)),
                    ),
                  ),
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildListDelegate(
                itemList(50),
              ),
            ),
          ],
        ));
  }
}

List<Widget> itemList(int count) {
  List<Widget> items = [];

  for (int i = 0; i <= count; i++) {
    items.add(_itemWidget(i));
  }
  return items;
}

Widget _itemWidget(int i) {
  return ListTile(
    title: Image(
      image: AssetImage("assets/post.jpg"),
    ),
  );
}
