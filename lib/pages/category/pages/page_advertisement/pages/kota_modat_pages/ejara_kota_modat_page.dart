import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/kota_modat_pages/ejara_km_vila_loation_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/kota_modat_pages/ejara_km_aparteman_location_page.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/first_map_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/adv_title_widget.dart';
import 'package:get/get.dart';

class EjaraKotaModatPage extends StatelessWidget {
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
              height: 80,
            ),
            Column(
              children: [
                _buildItem('assets/images/Frame_kota1.png', () {
                  Get.to(() => FirstMapPage(onSelect: (_) {
                        Get.to(() =>
                            EjaraKMApartemanLocationPage(locationInfo: _));
                      }));
                }),
                const SizedBox(
                  height: 20,
                ),
                _buildItem(
                  'assets/images/Frame_kota2.png',
                  () {
                    Get.to(() => FirstMapPage(onSelect: (_) {
                          Get.to(() => EjaraKmLocationPage(locationInfo: _));
                        }));
                  },
                ),
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
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(assetPath)),
                    ),
                  )),
            )));
  }
}
