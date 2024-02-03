import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Advertisements.dart';
import 'package:flutter_application_1/pages/Messages.dart';
import 'package:flutter_application_1/pages/advertisement_registration.dart';
import 'package:flutter_application_1/pages/category/category.dart';
import 'package:flutter_application_1/pages/home.dart';
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
    const AdvertisementRegistration(),
    Category(),
    const Advertisements()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
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
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ());
                      },
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => ());
                        },
                        child: Image.asset(
                          'assets/images/Personal user panel.png',
                          width: 392,
                          height: 195,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ());
                      },
                      child: Image.asset(
                        "assets/images/Consultants user panel.png",
                        width: 392,
                        height: 195,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ());
                      },
                      child: Image.asset(
                        "assets/images/Real estate agency user panel.png",
                        width: 392,
                        height: 195,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
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
          indicatorColor: const Color(0x0036d859),
          selectedIndex: currentPageIndex.value,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(CupertinoIcons.home),
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.messenger),
              icon: Icon(Icons.message_rounded),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.add_circle_outline_rounded),
              icon: Icon(Icons.add_circle_outline_rounded),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.widgets),
              icon: Icon(Icons.widgets),
              label: '',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.location_on_outlined),
              icon: Icon(Icons.location_on_outlined),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
