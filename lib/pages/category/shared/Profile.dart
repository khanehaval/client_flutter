import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex: index.value,

        selectedItemColor: const Color(0xff6200ee),
        unselectedItemColor: const Color(0xff757575),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 34,
            ),
            label: 'خانه',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.arrow_right_arrow_left_square,
              size: 30,
            ),
            activeIcon: Icon(
              CupertinoIcons.arrow_right_arrow_left_square,
              size: 34,
            ),
            label: 'درخواست ها',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_rounded,
              size: 30,
            ),
            activeIcon: Icon(
              Icons.person_rounded,
              size: 34,
            ),
            label: 'پروفایل من',
          ),
        ],
        onTap: (_) {
          // index.value = _;
        },
      ),
      stretchTriggerOffset: 100,
      headerExpandedHeight: 0.1,
      stretchMaxHeight: 0.86,
      // leading: const Icon(Icons.arrow_back_ios),
      title: SizedBox.shrink(),
      actions: [
        // IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
      ],
      headerWidget: SizedBox.shrink(),
      headerBottomBar: SizedBox.shrink(),
      body: [Text("body")],
      fullyStretchable: true,
      expandedBody: Scaffold(
        body: Container(
          color: Colors.green,
          child: Center(
            child: Text("bbbbbbbbbb"),
          ),
        ),
        appBar: AppBar(
          title: Text("appbar"),
          backgroundColor: Colors.green,
        ),
      ),
      backgroundColor: Colors.white,
      appBarColor: Colors.blue,
    );
  }

  ListView listView() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (context, index) => Card(
        color: Colors.white70,
        child: ListTile(
          leading: CircleAvatar(
            child: Text("$index"),
          ),
          title: const Text("Title"),
          subtitle: const Text("Subtitle"),
        ),
      ),
    );
  }
}
// draggable_home: ^1.0.5