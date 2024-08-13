import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/forosh_adv_page.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';

import 'package:flutter_application_1/pages/category/shared/widget/widget_select_noemelk.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class ForshAdvLocationPage extends StatelessWidget {
  LocationInfo locationInfo;

  ForshAdvLocationPage({required this.locationInfo, super.key});

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
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("*",
                      style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: Color.fromRGBO(156, 64, 64, 1))),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 5.0),
                    child: Text(
                      "انتخاب نوع ملک ",
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 41,
                child: Center(
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'انتخاب نشده',
                      hintStyle: const TextStyle(
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA6A6A6),
                          fontSize: 12),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                      prefixIcon: IconButton(
                        icon: SvgPicture.asset("assets/images/Vector-20.svg"),
                        onPressed: () {
                          showSelectNoeMelk((_) {});
                        },
                      ),
                    ),
                  ),
                ),
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
