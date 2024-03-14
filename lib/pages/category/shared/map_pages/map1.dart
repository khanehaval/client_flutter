import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/category_advertisement.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/selectlocationmap.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class Map1 extends StatelessWidget {
  LocationInfo lastLocation;
  Function(LocationInfo) onSelect;

  Map1({required this.onSelect, super.key, required this.lastLocation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildaAppBar(),
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
                                    lastLocation: lastLocation,
                                    onSelect: (_) {
                                      onSelect(_);
                                      Get.back();
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
