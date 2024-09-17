import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget bottomNavigationBar2(int currentMainPageIndex) {
  var currentPageIndex = currentMainPageIndex.obs;
  var showEducation = false.obs;

  var pages = [
    // Home(),
    // Messages(),
    // const CategoryAdvertisement(),
    // const Category(),
    // Advertisements()
  ];
  return Container(
    height: 76,
    decoration: BoxDecoration(boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.01),
        spreadRadius: 0,
        blurRadius: 5,
        offset: const Offset(-1, 0),
      )
    ]),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Obx(
        () => Container(
          child: BottomNavigationBar(
            unselectedFontSize: 10,
            selectedFontSize: 10,
            selectedItemColor: Colors.black,
            selectedLabelStyle: const TextStyle(
                fontFamily: MAIN_FONT_FAMILY_MEDIUM, color: Colors.black),
            unselectedLabelStyle:
                const TextStyle(fontFamily: MAIN_FONT_FAMILY_MEDIUM),
            showSelectedLabels: true,
            showUnselectedLabels: true,

            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            // selectedItemColor: const Color.fromARGB(255, 130, 8, 8),
            // unselectedItemColor: const Color(0xff757575),
            onTap: (int index) {
              Get.off(EducationalTour(
                index: index,
                showEducation: false,
              ));
              // currentPageIndex.value = index;
              // Get.offAll(() => pages[index]);
              // // showEducation.value = false;
            },
            currentIndex: currentPageIndex.value,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.white,
                icon: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation1.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
                label: 'پروفایل',
                activeIcon: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation1-active.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation2.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
                label: 'پیام',
                activeIcon: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation2-active.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation3.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
                label: 'ثبت آگهی',
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation3-active.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(
                    "assets/images/navigation4.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
                label: 'دسته بندی',
                activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: SvgPicture.asset(
                    "assets/images/navigation4-active.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation5.svg",
                    width: 30,
                    height: 30,
                  ),
                ),
                label: 'نقشه',
                activeIcon: Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 7),
                  child: SvgPicture.asset(
                    "assets/images/navigation5-active.svg",
                    width: 30,
                    height: 30,
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

PreferredSizeWidget buildaAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: SvgPicture.asset('assets/images/left_icon.svg'),
      onPressed: () => Get.back(),
    ),
  );
}

Widget submit_row1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text(
        "...تائید و ادامه ",
        style: TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 16,
            color: Color.fromRGBO(
              48,
              48,
              48,
              1,
            )),
      ),
      IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/right_icon.svg'))
    ],
  );
}
