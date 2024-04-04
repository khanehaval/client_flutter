import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:get/get.dart';

Widget bottomNavigation() {
  return NavigationBar(
    backgroundColor: Colors.white,
    onDestinationSelected: (int index) {
      Get.to(() => EducationalTour(
            index: index,
            showEducation: false,
          ));
    },
    indicatorColor: const Color(0x36D859),
    // selectedIndex: currentPageIndex.value,
    destinations: <Widget>[
      NavigationDestination(
        icon: Image.asset(
          'assets/images/home navigator.png',
          width: 24,
          height: 24,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: Image.asset(
          'assets/images/messages.png',
          width: 24,
          height: 24,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: Image.asset(
          'assets/images/add.png',
          width: 24,
          height: 24,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: Image.asset(
          'assets/images/Category.png',
          width: 24,
          height: 24,
        ),
        label: '',
      ),
      NavigationDestination(
        icon: Image.asset(
          'assets/images/viw.png',
          width: 24,
          height: 24,
        ),
        label: '',
      ),
    ],
  );
}

PreferredSizeWidget buildaAppBar() {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () => Get.back(),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Get.to(
            () => Profile(),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(60)),
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.person_2_rounded,
              size: 30,
            ),
          ),
        ),
      ),
    ],
  );
}
