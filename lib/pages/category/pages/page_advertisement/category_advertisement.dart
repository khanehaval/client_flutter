import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari_edari/ejara_tejari_edari_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_tejari_adv.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/kota_modat_pages/ejara_kota_modat_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/sakht_v_saz_pages/sakht_v_saz_adv.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../shared/app_bar.dart';

class CategoryAdvertisement extends StatelessWidget {
  const CategoryAdvertisement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const Text(
                "انتخاب دسته بندی",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  color: Color.fromRGBO(
                    99,
                    99,
                    99,
                    1,
                  ),
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SvgPicture.asset(
                'assets/images/key and home1.svg',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildItem(
                      'assets/images/Frame_rentstore.png',
                      EjaraAdv(),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    _buildItem(
                        'assets/images/Frame_salehome.png', const ForoshAdv()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildItem(
                        'assets/images/Frame_rent.png', EjaraTejariAdv()),
                    const SizedBox(
                      width: 20,
                    ),
                    _buildItem(
                        'assets/images/Frame_salestore.png', ForoshTejariAdv()),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildItem(
                        'assets/images/Frame_Daily.png', EjaraKotaModatPage()),
                    const SizedBox(
                      width: 20,
                    ),
                    _buildItem(
                        'assets/images/Frame_Construction.png', SakhVaSaz()),
                  ],
                ),
              ],
            ),
          )
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

  Widget _buildItem(
    String assetPath,
    Widget nextPage,
  ) {
    return GestureDetector(
      onTap: () {
        Get.to(() => nextPage);
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10)),
        child: SizedBox(
          height: 90,
          width: 140,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset(assetPath),
          ),
        ),
      ),
    );
  }
}
