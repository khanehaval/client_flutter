import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/category_items.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:get/get.dart';

class MainCategoryAdvertisement extends StatelessWidget {
  int index;
  MainCategoryAdvertisement(this.index, {super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Get.back(),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(
                  () => const Profile(),
                );
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(60)),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.person_2_rounded,
                      size: 30,
                    ),
                  )),
            ),
          ]),
      body: CategoryItems(
        index: index,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          Get.to(() => EducationalTour(
                index: index,
                showEducation: true,
              ));
        },
        indicatorColor: const Color(0x36D859),
        // selectedIndex: currentPageIndex.value,
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
    );
  }
}
