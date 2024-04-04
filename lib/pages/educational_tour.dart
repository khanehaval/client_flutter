import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Advertisements.dart';
import 'package:flutter_application_1/pages/Messages.dart';
import 'package:flutter_application_1/pages/category/category.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/advertisement_registration.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

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
    AdvertisementRegistration(
      index: 0,
      showEducation: true,
    ),
    const Category(),
    const Advertisements()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () => Get.back(),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(() => Profile());
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(60)),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.person_2_rounded,
                  size: 30,
                ),
              ),
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
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            currentPageIndex.value = index;
            showEducation.value = false;
          },
          indicatorColor: Color(0x0036d859),
          selectedIndex: currentPageIndex.value,
          destinations: <Widget>[
            NavigationDestination(
              icon: Image.asset(
                'assets/images/home navigator.png',
                width: 24,
                height: 24,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'assets/images/messages.png',
                width: 24,
                height: 24,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'assets/images/add.png',
                width: 24,
                height: 24,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'assets/images/category.png',
                width: 24,
                height: 24,
              ),
              label: '',
            ),
            NavigationDestination(
              icon: Image.asset(
                'assets/images/viw.png',
                width: 24,
                height: 24,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
