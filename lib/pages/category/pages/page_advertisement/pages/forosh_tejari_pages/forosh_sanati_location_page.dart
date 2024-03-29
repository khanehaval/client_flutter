
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_tejari_pages/forosh_sanati_page.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';

import 'package:get/get.dart';
import '../../../../shared/contant.dart';
import '../../../../shared/switchItem.dart';

class ForoshSanatiLocationPage extends StatelessWidget {
  LocationInfo locationInfo;
   ForoshSanatiLocationPage({required this.locationInfo,super.key});

  final submit = false.obs;

  final type = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             MapInfoPage(locationInfo),
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
              SwitchItem(
                  onSelected: (_){}, items: const ["کارگاه", "سوله", "زمین کشاورزی"]),
              const SizedBox(
                height: 45,
              ),
            SubmitRow(submit: submit, nextPage: ForoshSanatiPage())
            ],
          ),
        ),
      ),
    );
  }


}
