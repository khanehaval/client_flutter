import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/Advertisements.dart';
import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/messages.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_application_1/pages/category/pages/window/window.dart';
import 'package:get/get.dart';

Widget bottomNavigationBar2() {
  var currentPageIndex = 0.obs;
  var showEducation = false.obs;

  var pages = [
    Home(),
    Messages(),
    const CategoryAdvertisement(),
    const Category(),
    Advertisements(),
  ];
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.circular(20),
    ),
    child: Obx(
      () => Container(
        color: Colors.black,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xff6200ee),
          unselectedItemColor: const Color(0xff757575),
          onTap: (int index) {
            currentPageIndex.value = index;
            showEducation.value = false;
          },
          currentIndex: currentPageIndex.value,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(CupertinoIcons.add),
              label: 'پروفایل',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'چت',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'خانه',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_rounded),
              label: 'دسته بندی',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_week),
              label: 'آگهی',
            ),
          ],
        ),
      ),
    ),
  );
}

PreferredSizeWidget buildaAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () => Get.back(),
    ),
  );
}
