import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_daftar_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_shop_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_sanati_location_page.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/first_map_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/adv_title_widget.dart';
import 'package:get/get.dart';

class ForoshTejariAdv extends StatelessWidget {
  const ForoshTejariAdv({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigationBar2(3),
      appBar: buildaAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AdvTitleWidget(),
            const SizedBox(
              height: 40,
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
                  gradient: const LinearGradient(
                    colors: GRADIANT_COLOR3,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                  padding: const EdgeInsets.all(0.6),
                  child: Container(
                    width: 144,
                    height: 96,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(assetPath)),
                  )),
            )));
  }
}
