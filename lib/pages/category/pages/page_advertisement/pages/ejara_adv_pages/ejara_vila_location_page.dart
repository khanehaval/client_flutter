import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/ejara_adv_pages/ejara_vila_page.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class EjaraVilaLocationPage extends StatelessWidget {
  LocationInfo locationInfo;
  EjaraVilaLocationPage({required this.locationInfo, super.key});
  final submit = false.obs;
  final type = "".obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildaAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  fontSize: 12,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
            ),
            SwitchItem(
                onSelected: (_) {
                  submit.value = true;
                },
                items: const ["باغ ویلا", "باغ", "خانه ویلایی"]),
            const SizedBox(
              height: 60,
            ),
            SubmitRow(submit: submit, nextPage: EjaraVilaPage())
          ],
        ),
      ),
    );
  }
}
