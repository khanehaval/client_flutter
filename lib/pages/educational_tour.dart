import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/advertisements.dart';
import 'package:flutter_application_1/pages/category/pages/messages.dart';

import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/add_new_advertisment.dart';
import 'package:flutter_application_1/pages/category/shared/app_bar.dart';
import 'package:get/get.dart';

import 'category/pages/window/window.dart';

class EducationalTour extends StatefulWidget {
  int index;
  bool showEducation;

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
    const Messages(),
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
                child: bottomNavigationBar(),
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
          // shadowColor: Colors.white,
          // surfaceTintColor: Colors.white,
          onTap: (int index) {
            currentPageIndex.value = index;
            showEducation.value = false;
          },
          currentIndex: currentPageIndex.value,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home navigator.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/messages.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/add.png',
                width: 46,
                height: 46,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/Category.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/viw.png',
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
}
