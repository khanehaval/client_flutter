import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Advertisements.dart';
import 'package:flutter_application_1/pages/Messages.dart';
import 'package:flutter_application_1/pages/advertisement_registration.dart';
import 'package:flutter_application_1/pages/category.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:get/get.dart';

class EducationalTour extends StatelessWidget {
  var currentPageIndex = 0.obs;

  var page = [
    Home(),Messages(),AdvertisementRegistration(),Category(),Advertisements()
  ];

  EducationalTour({super.key});

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
      body: Container(
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
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          backgroundColor: Colors.white,
          onDestinationSelected: (int index) {
            currentPageIndex.update((val) {
              currentPageIndex.value = index;
            });
          },
          indicatorColor: Color(0x36D859),
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
      bottomSheet: Obx(() => page[currentPageIndex.value]),
    );
  }
}
