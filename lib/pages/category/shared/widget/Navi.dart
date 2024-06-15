import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:draggable_home/draggable_home.dart';

Widget Navi() {
  return DraggableHome(
    bottomNavigationBar: BottomNavigationBar(
      // currentIndex: index.value,

      selectedItemColor: const Color(0xff6200ee),
      unselectedItemColor: const Color(0xff757575),
      items: const <BottomNavigationBarItem>[
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
    title: const SizedBox.shrink(),
    actions: const [
      // IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
    ],
    headerWidget: const SizedBox.shrink(),
    headerBottomBar: const SizedBox.shrink(),
    body: [Text("body")],
    fullyStretchable: true,
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
// draggable_home: ^1.0.5