import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/advertisements.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/first_page_messages.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/messages.dart';
import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'category/pages/window/window.dart';

class EducationalTour extends StatefulWidget {
  int index;
  bool showEducation;
  int mycurrentindex = 0;

  EducationalTour({super.key, this.index = 0, this.showEducation = true});

  @override
  State<EducationalTour> createState() => _EducationalTourState();
}

class _EducationalTourState extends State<EducationalTour> {
  var currentPageIndex = 0.obs;
  var showEducation = false.obs;

  @override
  void initState() {
    showEducation.value = widget.showEducation;
    currentPageIndex.value = widget.index;
    super.initState();
  }

  var pages = [
    Home(),
    FirstPageMessages(),
    // Messages(),
    const CategoryAdvertisement(),
    const Category(),
    Advertisements(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          appBar: (currentPageIndex.value == 0 ||
                  currentPageIndex.value ==
                      4) // فقط برای صفحه Home اپ بار نمایش داده نشود
              ? null
              : buildAppBar(),
          body: Stack(
            children: [
              Obx(() => showEducation.value
                  ? _buildEducationalTour()
                  : pages[currentPageIndex.value]),
              Align(
                alignment: Alignment.bottomCenter,
                child: bottomNavigationBar1(),
              ),
            ],
          ),
        ));
  }

  Widget _buildEducationalTour() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/Personal user panel.svg',
            width: Get.width / 1.3,
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SvgPicture.asset(
              'assets/images/Consultants user panel.svg',
              width: Get.width / 1.3,
            ),
          ),
          const SizedBox(height: 10),
          SvgPicture.asset(
            'assets/images/Real estate agency user panel.svg',
            width: Get.width / 1.3,
          ),
        ],
      ),
    );
  }

  Widget bottomNavigationBar1() {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            spreadRadius: 0,
            blurRadius: 5,
            offset: const Offset(-1, 0),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Obx(
          () => BottomNavigationBar(
            elevation: 5,
            showSelectedLabels: true,
            selectedItemColor: Colors.black,
            selectedFontSize: 11,
            unselectedFontSize: 9,
            selectedLabelStyle: const TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              color: Colors.black,
            ),
            unselectedLabelStyle: const TextStyle(
              fontFamily: MAIN_FONT_FAMILY_MEDIUM,
              color: Color.fromRGBO(166, 166, 166, 1),
            ),
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            onTap: (int index) {
              currentPageIndex.value = index;
              showEducation.value = false;
            },
            currentIndex: currentPageIndex.value,
            items: [
              _buildBottomNavItem(
                "assets/images/navigation11.svg",
                "assets/images/navigation11-active.svg",
                'پروفایل',
              ),
              _buildBottomNavItem(
                "assets/images/navigation22.svg",
                "assets/images/navigation22-active.svg",
                'پیام',
              ),
              _buildBottomNavItem(
                "assets/images/navigation33.svg",
                "assets/images/navigation33-active.svg",
                'ثبت آگهی',
              ),
              _buildBottomNavItem(
                "assets/images/navigation44.svg",
                "assets/images/navigation44-active.svg",
                'دسته بندی',
              ),
              _buildBottomNavItem(
                "assets/images/navigation55.svg",
                "assets/images/navigation55-active.svg",
                'نقشه',
              ),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(
    String iconPath,
    String activeIconPath,
    String label,
  ) {
    return BottomNavigationBarItem(
      icon: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0, bottom: 5),
          child: SvgPicture.asset(
            iconPath,
            width: 33,
            height: 33,
          ),
        ),
      ),
      label: label,
      activeIcon: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 3.0, bottom: 5),
          child: SvgPicture.asset(
            activeIconPath,
            width: 33,
            height: 33,
          ),
        ),
      ),
    );
  }
}
