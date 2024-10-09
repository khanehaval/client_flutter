import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/category_Profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/profile_my_desk.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetProfileAdsAndMyDesk extends StatelessWidget {
  const WidgetProfileAdsAndMyDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => const CategoryProfile(
                  index: 0,
                ));
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
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/Agahi_man_profile_home.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'آگهی های من',
                        style: TextStyle(
                          color: Color(0xFF626262),
                          fontSize: 18,
                          fontFamily: 'Aban Light',
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'آگهی های ثبت شده',
                        style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 10,
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
            Get.to(() => const ProfileMyDesk(),
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
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 100.0,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/miz_kar_profile.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'میزکـار مـن',
                        style: TextStyle(
                          color: Color(0xFF626262),
                          fontSize: 18,
                          fontFamily: 'Aban Light',
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'توضیحات در ادامه ...',
                        style: TextStyle(
                          color: Color(0xFFA5A5A5),
                          fontSize: 10,
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
