import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CategoryAdvertisement extends StatelessWidget {
  final _selected = 0.obs;

  CategoryAdvertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "انتخاب دسته بندی",
            style: TextStyle(
                color: Color.fromRGBO(
                  99,
                  99,
                  99,
                  1,
                ),
                fontSize: 30,
                fontFamily: MAIN_FONT_FAMILY),
          ),
          const SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            'assets/images/key and home1.svg',
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildItem('assets/images/Category.png', 1),
                  _buildItem('assets/images/Sale home.png', 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildItem('assets/images/Rent store.png', 3),
                  _buildItem('assets/images/Sale store.png', 4),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildItem('assets/images/Daily.png', 5),
                  _buildItem('assets/images/Construction.png', 6),
                ],
              ),
            ]),
          ),
          GestureDetector(
            onTap: () {
              if (_selected.value > 0) {
                int index = _selected.value;
                Widget finalWidget = const SizedBox.shrink();
                if (index == 2) {
                  finalWidget = UnderForosh();
                } else if (index == 2) {
                } else if (index == 3) {}
          
                Get.to(() => finalWidget);
              }
            },
            child: Obx(() => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "...تایید و ادامه",
                      style: _selected.value == 0
                          ? const TextStyle(
                              fontSize: 20,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Colors.black38,
                            )
                          : const TextStyle(
                              fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                    ),
                    Icon(
                      Icons.double_arrow,
                      color: _selected.value == 0
                          ? Colors.black54
                          : const Color.fromRGBO(76, 140, 237, 1),
                      size: 35,
                    ),
                  ],
                )),
          ),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          Get.to(() => EducationalTour(
                index: index,
                showEducation: false,
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

  Widget _buildItem(String assetPath, int index) {
    return GestureDetector(
      onTap: () {
        _selected.value = index;
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Obx(() => Container(
              // height: 96,
              // width: 144,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 1,
                      blurRadius: 5,
                    )
                  ],
                  border: Border.all(
                    color: _selected.value == index
                        ? Colors.greenAccent
                        : Colors.black38,
                    width: _selected.value == index ? 2.5 : 1.5,
                  )),
              child: Image.asset(assetPath),
            )),
      ),
    );
  }
}
