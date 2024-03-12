import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari/ejara_tejari_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_tejari_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/kota_modat_pages/kota_modat_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/sakht%20v%20saz_pages/sakht%20v%20saz_adv.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CategoryAdvertisement extends StatelessWidget {
  final _selected = 0.obs;

  CategoryAdvertisement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                fontSize: 20,
                fontFamily: MAIN_FONT_FAMILY),
          ),
          SvgPicture.asset(
            'assets/images/key and home1.svg',
            width: 210,
            height: 190,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildItem(
                'assets/images/Frame_rentstore.png',
                1,
              ),
              const SizedBox(
                width: 20,
              ),
              _buildItem('assets/images/Frame_salehome.png', 2),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildItem('assets/images/Frame_rent.png', 3),
              const SizedBox(
                width: 20,
              ),
              _buildItem('assets/images/Frame_salestore.png', 4),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildItem('assets/images/Frame_Daily.png', 5),
              const SizedBox(
                width: 20,
              ),
              _buildItem('assets/images/Frame_Construction.png', 6),
            ],
          ),
          GestureDetector(
            onTap: () {
              if (_selected.value > 0) {
                int index = _selected.value;
                Widget finalWidget = const SizedBox.shrink();
                if (index == 2) {
                  finalWidget = UnderForosh();
                } else if (index == 1) {
                  finalWidget = finalWidget = EjaraAdv();
                  ();
                } else if (index == 4) {
                  finalWidget = finalWidget = ForoshTejariAdv();
                } else if (index == 3) {
                  finalWidget = finalWidget = EjaraTejariAdv();
                } else if (index == 5) {
                  finalWidget = finalWidget = KotaModat();
                } else if (index == 6) {
                  finalWidget = finalWidget = SakhVaSaz();
                }

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
                              fontSize: 15,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Colors.black38,
                            )
                          : const TextStyle(
                              fontSize: 15, fontFamily: MAIN_FONT_FAMILY),
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
              'assets/images/Category.png',
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
    );
  }

  Widget _buildItem(String assetPath, int index) {
    return GestureDetector(
      onTap: () {
        _selected.value = index;
      },
      child: SizedBox(
        height: 90,
        width: 140,
        child: Obx(() => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                    )
                  ],
                  border: Border.all(
                    color: _selected.value == index
                        ? Colors.greenAccent
                        : Colors.black38,
                    width: _selected.value == index ? 2.5 : 1.5,
                  )),
              child: Image.asset(
                assetPath,
              ),
            )),
      ),
    );
  }
}

PreferredSizeWidget buildaAppBar() {
  return AppBar(
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
              color: Colors.black12, borderRadius: BorderRadius.circular(60)),
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
  );
}
