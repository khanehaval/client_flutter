import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetCityMahale extends StatelessWidget {
  const WidgetCityMahale({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: Get.width / 2.8,
            height: 80,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'محدوده فعالیت',
                        style: TextStyle(
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontSize: 12,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/images/mahdodeh_activeted_profile.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Text(
                      'انتخاب محدوده',
                      style: TextStyle(
                        color: Color(0xFFA5A5A5),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: Get.width / 2.8,
            height: 80,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'شهر محل فعالیت',
                        style: TextStyle(
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontSize: 12,
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/images/location_profile.svg',
                      width: 24,
                      height: 24,
                    ),
                    const Text(
                      'انتخاب شهر',
                      style: TextStyle(
                        color: Color(0xFFA5A5A5),
                        fontSize: 10,
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
