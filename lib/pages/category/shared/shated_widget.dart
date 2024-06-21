import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/Advertisements.dart';
import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/messages.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_application_1/pages/category/pages/window/window.dart';
import 'package:flutter_svg/svg.dart';
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
  return  ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Obx(
          () => Container(
            color: Colors.black,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: const Color.fromARGB(255, 130, 8, 8),
              unselectedItemColor: const Color(0xff757575),
              onTap: (int index) {
                currentPageIndex.value = index;
                showEducation.value = false;
              },
              currentIndex: currentPageIndex.value,
              items: <BottomNavigationBarItem>[
                 BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: SvgPicture.asset("assets/images/navigation1.svg",width: 30,height: 30,),
                  label: '',
                  activeIcon:
                      SvgPicture.asset("assets/images/navigation1-active.svg",width: 30,height: 30,),
                ),
                 BottomNavigationBarItem(
                 icon: SvgPicture.asset("assets/images/navigation2.svg",width: 30,height: 30,),
                  label: '',
                  activeIcon:
                      SvgPicture.asset("assets/images/navigation2-active.svg",width: 30,height: 30,),
                ),
                 BottomNavigationBarItem(
                icon: SvgPicture.asset("assets/images/navigation3.svg",width: 30,height: 30,),
                  label: '',
                  activeIcon:
                      SvgPicture.asset("assets/images/navigation3-active.svg",width: 30,height: 30,),
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/images/navigation4.svg",width: 30,height: 30,),
                  label: '',
                  activeIcon:
                      SvgPicture.asset("assets/images/navigation4-active.svg",width: 30,height: 30,),
                ),
                 BottomNavigationBarItem(
                   icon: SvgPicture.asset("assets/images/navigation5.svg",width: 30,height: 30,),
                  label: '',
                  activeIcon:
                      SvgPicture.asset("assets/images/navigation5-active.svg",width: 30,height: 30,),
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
