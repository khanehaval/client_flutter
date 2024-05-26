import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
Widget bottomNavigation() {
  return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        // shadowColor: Colors.white,
        // surfaceTintColor: Colors.white,
        onTap: (int index) {
          Get.to(() => EducationalTour(
                index: index,
                showEducation: false,
              ));
        },
        // currentIndex: currentPageIndex.value,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/navigation1.svg',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/navigation2.svg',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/navigation3.svg',
              width: 46,
              height: 46,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/navigation4.svg',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/navigation5.svg',
              width: 30,
              height: 30,
            ),
            label: '',
          ),
        ],
      ));
}

PreferredSizeWidget buildaAppBar() {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () => Get.back(),
    ),
  );
}
