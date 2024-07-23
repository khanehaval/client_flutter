import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_tejari_edari/ejara_daftar_page.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';

import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';

import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import '../../../../shared/switchItem.dart';

class EjaraDaftarLocationPage extends StatelessWidget {
  LocationInfo locationInfo;

  EjaraDaftarLocationPage({required this.locationInfo, super.key});

  final submit = false.obs;

  final type = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildaAppBar(),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MapInfoPage(locationInfo),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "نوع ملک شما",
                              style: TextStyle(
                                color: Color.fromRGBO(
                                  166,
                                  166,
                                  166,
                                  1,
                                ),
                                fontSize: 13,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ),
                          SwitchItems(
                              onSelected: (_) {},
                              items: const ["اتاق اداری", "مطب", "ملک اداری"]),
                          const SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                              onTap: () {
                                Get.to(() => EjaraDafterPage());
                              },
                              child: Center(child: submit_row1()))
                        ])
                  ])),
        ));
  }
}
