import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/widget/app_bar.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/select_location_on_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FirstMapPage extends StatelessWidget {
  Function(LocationInfo) onSelect;
  FirstMapPage({required this.onSelect, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
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
                        height: 70,
                      ),
                      SvgPicture.asset(
                        'assets/images/map1.svg',
                        width: 123,
                        height: 63,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        'با ثبت موقعیت و یا محدوده ملک خود',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 16,
                          color: Color.fromRGBO(
                            41,
                            111,
                            226,
                            1,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'به هوش مصنوعی اجازه دهید بهترین ها را برای شما رقم بزند',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 11,
                          color: Color.fromRGBO(99, 99, 99, 1),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 302,
                        height: 300,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Get.to(
                              () => SelectLocationMap(
                                onSelect: (_) {
                                  Get.back();
                                  onSelect(_);
                                },
                              ),
                            );
                          },
                          child: Stack(children: [
                            Image.asset(
                              'assets/images/map22.png',
                              fit: BoxFit.cover,
                            ),
                            Align(
                                alignment: Alignment.center,
                                child:
                                    SvgPicture.asset('assets/images/text.svg'))
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ]))));
  }
}
