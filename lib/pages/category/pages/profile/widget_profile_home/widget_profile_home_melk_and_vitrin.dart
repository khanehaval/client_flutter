import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/req_melk/req_melk_profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/vitrin.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class WidgetProfileHomeMelkAndVitrin extends StatelessWidget {
  const WidgetProfileHomeMelkAndVitrin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => const Vitrin(),
                duration: const Duration(milliseconds: 100),
                transition: Transition.leftToRight);
          },
          child: Container(
            width: Get.width / 2.4,
            height: 100,
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
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/vitrin_profile_icon.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'ویترین',
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 18,
                          fontFamily: 'Aban Light',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'در ویترین دیده شوید',
                        style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(() => ReqMelkProfile(),
                duration: const Duration(milliseconds: 100),
                transition: Transition.leftToRight);
          },
          child: Container(
            width: Get.width / 2.4,
            height: 100,
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
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/home_icon_profile.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'درخواست ملک',
                        style: TextStyle(
                          color: Color(0xFF303030),
                          fontSize: 18,
                          fontFamily: 'Aban Light',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'درخواست های ملک',
                        style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 12,
                          fontFamily: MAIN_FONT_FAMILY_LIGHT,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
