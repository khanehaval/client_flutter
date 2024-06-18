import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_aparteman_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila_location_page.dart';
import 'package:flutter_application_1/pages/category/shared/app_bar.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/first_map_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:get/get.dart';
import '../../../../shared/widget/adv_title_widget.dart';

class EjaraAdv extends StatelessWidget {
  var currentPageIndex = 0.obs;
  var showEducation = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigationBar2(),
      appBar: currentPageIndex.value == 4 ? null : buildAppBar(),
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
                _buildItem(
                  'assets/images/Frame_ejara1.png',
                  () => Get.to(() => FirstMapPage(onSelect: (_) {
                        Get.back();
                        Get.to(() => EjaraApartemanLocationPage(
                              locationInfo: _,
                            ));
                      })),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildItem(
                  'assets/images/Frame_ejara2.png',
                  () => Get.to(() => FirstMapPage(onSelect: (_) {
                        Get.back();
                        Get.to(() => EjaraVilaLocationPage(
                              locationInfo: _,
                            ));
                      })),
                ),
              ],
            )
          ]),
    );
  }

  Widget _buildItem(String assetPath, Function onTap) {
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
        ),
      ),
    );
  }
}
