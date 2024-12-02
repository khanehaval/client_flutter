import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/kolangi_adv_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv_location_page.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/vila_adv_location_page.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/first_map_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/adv_title_widget.dart';
import 'package:get/get.dart';

import '../../../../shared/widget/app_bar.dart';

class ForoshAdv extends StatelessWidget {
  const ForoshAdv({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: bottomNavigationBar2(2),
      appBar: buildAppBar(),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AdvTitleWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 35,
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
                              gradient: const LinearGradient(
                                colors: GRADIANT_COLOR3,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(0.6),
                            child: Container(
                              width: 140,
                              height: 80,
                              decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                    'assets/images/Frame_forosh.png'),
                              ),
                            ),
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
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: GRADIANT_COLOR3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: GRADIANT_COLOR3,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(0.6),
                          child: Container(
                            width: 140,
                            height: 80,
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                  'assets/images/Frame_forosh2.png'),
                            ),
                          ),
                        ),
                      ),
                    ),
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
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: GRADIANT_COLOR3,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(0.6),
                          child: Container(
                            width: 140,
                            height: 80,
                            decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                  'assets/images/Frame_forosh3.png'),
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            )
          ]),
    );
  }
}
