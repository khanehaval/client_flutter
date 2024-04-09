import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Advertisements.dart';
import 'package:flutter_application_1/pages/category/pages/messages.dart';

import 'package:flutter_application_1/pages/category/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/add_new_advertisment.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/svg.dart';
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
    AddNewAdvertisement(),
    const Category(),
    const Advertisements()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            CupertinoIcons.back,
            size: 30,
          ),
          onPressed: () => Get.back(),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              openProfile();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(60)),
                  child: SvgPicture.asset(
                    'assets/images/profile.svg',
                  )),
            ),
          ),
        ],
      ),
      body: Obx(() => showEducation.value
          ? Container(
              color: Colors.white60,
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
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Color.fromRGBO(248, 248, 248, 1),
          onDestinationSelected: (int index) {
            currentPageIndex.value = index;
            showEducation.value = false;
          },
          selectedIndex: currentPageIndex.value,
          destinations: <Widget>[
            NavigationDestination(
              icon: Image.asset(
                'assets/images/home navigator.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'assets/images/messages.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'assets/images/add.png',
                width: 46,
                height: 46,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'assets/images/Category.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            NavigationDestination(
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
