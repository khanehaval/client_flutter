import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_daftar_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_shop_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_sanati_location_page.dart';

import 'package:flutter_application_1/pages/category/shared/map_pages/first_map_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/adv_title_widget.dart';

import 'package:get/get.dart';

class ForoshTejariAdv extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigation(),
      appBar: buildaAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AdvTitleWidget(),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                _buildItem('assets/images/Frame_daftar.png', () {
                  Get.to(() => FirstMapPage(onSelect: (_) {
                        Get.back();
                        Get.to(() => ForoshDaftarLocationPage(locationInfo: _));
                      }));
                }),
                const SizedBox(
                  height: 10,
                ),
                _buildItem(
                  'assets/images/Frame_maqazeh.png',
                      () {
                    Get.to(() => FirstMapPage(onSelect: (_) {
                      Get.back();
                      Get.to(() => ForoshShopLocationPage(locationInfo: _));
                    }));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                _buildItem('assets/images/Frame_daftarsanati.png', () {
                  Get.to(() => FirstMapPage(onSelect: (_) {
                    Get.back();
                    Get.to(() => ForoshSanatiLocationPage(locationInfo: _));
                  }));
                }),

              ],
            )
          ]),
    );
  }

  Widget _buildItem(
    String assetPath,
    Function onTap,
  ) {
    return GestureDetector(
      onTap: () => onTap(),
      child: SizedBox(
          height: 90,
          width: 140,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black12,
                        width: 1.5,
                      )),
                  child: Image.asset(assetPath)),
            ),
          )),
    );
  }
}
