import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/vila_adv_page.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class VilaLocationAdvPage extends StatelessWidget {
  LocationInfo locationInfo;
  VilaLocationAdvPage({required this.locationInfo, super.key});
  final _submit = false.obs;

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
              Padding(
                padding: const EdgeInsets.only(left: 75.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SwitchItems(
                      onSelected: (_) {},
                      items: const ["باغ ویلا", "باغ", "خانه ویلایی"]),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(() => VilaAdvPage());
                  },
                  child: Center(child: submit_row1()))
            ],
          ),
        ),
      ),
    );
  }
}
