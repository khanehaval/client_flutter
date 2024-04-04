import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/app_bar.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/select_location_on_map.dart';
import 'package:get/get.dart';

class FirstMapPage extends StatelessWidget {
  Function(LocationInfo) onSelect;

  FirstMapPage({required this.onSelect, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "ثبت آگهی اکونومی",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: MAIN_FONT_FAMILY),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: 400,
                        height: 620,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1.50, color: Color(0xFF36D859)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: GestureDetector(
                            onTap: () {
                              Get.to(() => SelectLocationMap(
                                    onSelect: (_) {
                                      Get.back();
                                      onSelect(_);
                                    },
                                  ));
                            },
                            child: Image.asset(
                              'assets/images/Map1.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ]))));
  }
}
