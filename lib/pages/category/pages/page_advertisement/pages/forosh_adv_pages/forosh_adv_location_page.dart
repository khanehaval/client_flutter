import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/widget/submit_row.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class ForshAdvLocationPage extends StatelessWidget {
  LocationInfo locationInfo;

  ForshAdvLocationPage({required this.locationInfo, super.key});

  final _submit = false.obs;

  final type = "".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
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
              SwitchItems(
                items: const ["سوئیت", "برج", "پنت هاوس"],
                onSelected: (_) {},
              ),
              const SizedBox(
                height: 65,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(() => ForoshAdvPage());
                  },
                  child: Center(child: submit_row1()))
            ],
          ),
        ),
      ),
    );
  }
}
