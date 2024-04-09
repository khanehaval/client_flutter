import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/kolangi_adv_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/vila_adv_location_page.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/first_map_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/adv_title_widget.dart';
import 'package:get/get.dart';

import '../../../../shared/app_bar.dart';

class ForoshAdv extends StatelessWidget {
  const ForoshAdv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigation(),
      appBar: buildAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AdvTitleWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => FirstMapPage(onSelect: (_) {
                            Get.back();
                            Get.to(() => ForshAdvLocationPage(
                                  locationInfo: _,
                                ));
                          }));
                    },
                    child: SizedBox(
                        height: 90,
                        width: 140,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child:
                                Image.asset('assets/images/Frame_forosh.png'),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => FirstMapPage(onSelect: (_) {
                            Get.to(() => VilaLocationAdvPage(
                                  locationInfo: _,
                                ));
                          }));
                    },
                    child: SizedBox(
                        height: 90,
                        width: 140,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child:
                                Image.asset('assets/images/Frame_forosh2.png'),
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => FirstMapPage(onSelect: (_) {
                            Get.to(() => KolangiAdvLocationPage(
                                  locationInfo: _,
                                ));
                          }));
                    },
                    child: SizedBox(
                        height: 90,
                        width: 140,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child:
                                Image.asset('assets/images/Frame_forosh3.png'),
                          ),
                        )),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
