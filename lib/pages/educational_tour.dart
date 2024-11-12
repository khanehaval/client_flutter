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
          appBar: currentPageIndex.value == 1 ? null : buildAppBar(),
          body: Stack(
            children: [
              Obx(() => showEducation.value
                  ? Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          SvgPicture.asset(
                            'assets/images/Personal user panel.svg',
                            width: Get.width / 1.3,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: SvgPicture.asset(
                              'assets/images/Consultants user panel.svg',
                              width: Get.width / 1.3,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SvgPicture.asset(
                            'assets/images/Real estate agency user panel.svg',
                            width: Get.width / 1.3,
                          ),
                        ],
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
            offset: const Offset(-1, 0), // changes position of shadow
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Obx(
          () => Container(
            child: BottomNavigationBar(
              showSelectedLabels: true,
              selectedItemColor: Colors.black,
              selectedFontSize: 11,
              unselectedFontSize: 9,
              selectedLabelStyle: const TextStyle(
                  fontFamily: MAIN_FONT_FAMILY, color: Colors.black),
              unselectedLabelStyle: const TextStyle(
                  fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                  color: Color.fromRGBO(166, 166, 166, 1)),
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              onTap: (int index) {
                currentPageIndex.value = index;
                showEducation.value = false;
              },
              currentIndex: currentPageIndex.value,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: Colors.white,
                  icon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: SvgPicture.asset(
                        "assets/images/navigation11.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                  label: 'پروفایل',
                  activeIcon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: SvgPicture.asset(
                        "assets/images/navigation11-active.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: SvgPicture.asset(
                        "assets/images/navigation22.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                  label: 'پیام',
                  activeIcon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: SvgPicture.asset(
                        "assets/images/navigation22-active.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Center(
                    child: SvgPicture.asset(
                      "assets/images/navigation33.svg",
                      width: 44,
                      height: 44,
                    ),
                  ),
                  label: 'ثبت آگهی',
                  activeIcon: Center(
                    child: SvgPicture.asset(
                      "assets/images/navigation33-active.svg",
                      width: 44,
                      height: 44,
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Center(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                        child: SvgPicture.asset(
                          "assets/images/navigation44.svg",
                          width: 33,
                          height: 33,
                        ),
                      ),
                    ),
                  ),
                  label: 'دسته بندی',
                  activeIcon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: SvgPicture.asset(
                        "assets/images/navigation44-active.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: SvgPicture.asset(
                        "assets/images/navigation55.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                  label: 'نقشه',
                  activeIcon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 3.0, bottom: 5),
                      child: SvgPicture.asset(
                        "assets/images/navigation55-active.svg",
                        width: 33,
                        height: 33,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
