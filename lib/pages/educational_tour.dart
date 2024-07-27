import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/advertisements.dart';
import 'package:flutter_application_1/pages/category/pages/messages.dart';
import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
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
    Messages(),
    const CategoryAdvertisement(),
    const Category(),
    Advertisements(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          appBar: currentPageIndex.value == 4 ? null : buildAppBar(),
          body: Stack(
            children: [
              Obx(() => showEducation.value
                  ? Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Container(
                        color: Colors.white,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Get.to(() => ());
                                  },
                                  child: SvgPicture.asset(
                                      width: 350,
                                      height: 185,
                                      'assets/images/Personal user panel.svg')),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Get.to(() => ());
                                  },
                                  child: SvgPicture.asset(
                                      width: 350,
                                      height: 185,
                                      'assets/images/Consultants user panel.svg')),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Get.to(() => ());
                                  },
                                  child: SvgPicture.asset(
                                      width: 350,
                                      height: 185,
                                      'assets/images/Real estate agency user panel.svg')),
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
            offset: Offset(-1, 0), // changes position of shadow
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
              showSelectedLabels: false,
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
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SvgPicture.asset(
                        "assets/images/navigation1.svg",
                        width: 30,
                        height: 31,
                      ),
                    ),
                  ),
                  label: '',
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation1-active.svg",
                        width: 30,
                        height: 31,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation2.svg",
                        width: 31,
                        height: 31,
                      ),
                    ),
                  ),
                  label: '',
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation2-active.svg",
                        width: 31,
                        height: 31,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation3.svg",
                        width: 34,
                        height: 32,
                      ),
                    ),
                  ),
                  label: '',
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation3-active.svg",
                        width: 34,
                        height: 32,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/images/navigation4.svg",
                          width: 29,
                          height: 29,
                        ),
                      ),
                    ),
                  ),
                  label: '',
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation4-active.svg",
                        width: 29,
                        height: 29,
                      ),
                    ),
                  ),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation5.svg",
                        width: 32,
                        height: 32,
                      ),
                    ),
                  ),
                  label: '',
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/images/navigation5-active.svg",
                        width: 32,
                        height: 32,
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
