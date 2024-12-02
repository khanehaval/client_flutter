import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/main_category_profile.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetProfileSeeAndSave extends StatelessWidget {
  const WidgetProfileSeeAndSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(() => MainCategoryProfile(
                  index: 1,
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
                    'assets/images/favoraite_profile.svg',
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
                        'نشان شده ها',
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
                        'آگهی های مورد علاقه شما',
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
            Get.to(() => MainCategoryProfile(
                  index: 2,
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
                    left: 90.0,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/see_profile.svg',
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
                        'دیده شده ها',
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
                        'آگهی های دیده شده شما',
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
