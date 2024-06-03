import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/advertisements.dart';
import 'package:flutter_application_1/pages/category/pages/messages.dart';

import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/add_new_advertisment.dart';
import 'package:flutter_application_1/pages/category/shared/app_bar.dart';
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
    Messages(),
    const AddNewAdvertisement(),
    const Category(),
    Advertisements(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          appBar: currentPageIndex.value == 4 ? null : buildAppBar(),
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Obx(() => showEducation.value
                  ? Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => ());
                                  },
                                  child: Image.asset(
                                    'assets/images/Personal user panel.png',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => ());
                                  },
                                  child: Image.asset(
                                    "assets/images/Consultants user panel.png",
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(() => ());
                                  },
                                  child: Image.asset(
                                    "assets/images/Real estate agency user panel.png",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : pages[currentPageIndex.value]),
              Align(
                alignment: Alignment.bottomCenter,
                child: bottomNavigationBar1(),
              ),
            ],
          ),
        ));
  }

  Widget bottomNavigationBar() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xff6200ee),
          unselectedItemColor: const Color(0xff757575),
          onTap: (int index) {
            currentPageIndex.value = index;
            showEducation.value = false;
          },
          currentIndex: currentPageIndex.value,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/navigation1.svg',
                width: 30,
                height: 30,
              ),
              activeIcon: SvgPicture.asset(
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
              activeIcon: SvgPicture.asset(
                'assets/images/navigation2.svg',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/navigation3.svg',
                width: 30,
                height: 30,
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/navigation3.svg',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/navigation4.svg',
                width: 30,
                height: 30,
              ),
              activeIcon: SvgPicture.asset(
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
              activeIcon: SvgPicture.asset(
                'assets/images/navigation5.svg',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomNavigationBar1() {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Obx(() => Container(decoration: BoxDecoration(),
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
                        icon: Icon(Icons.person), label: 'پروفایل'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.message), label: 'چت'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'خانه'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.category_rounded), label: 'دسته بندی'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.view_week), label: 'آگهی'),
                  ]),
        )));
  }
}
