import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/req_melk/req_melk_profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/vitrin_profile/vitrin.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            Get.to(
              () => const Vitrin(),
              duration: const Duration(milliseconds: 100),
              transition: Transition.leftToRight,
            );
          },
          child: Container(
            width: 145.w,
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
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, top: 12.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      'assets/images/vitrin_profile_icon.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'ویترین',
                          style: TextStyle(
                            color: const Color(0xFF303030),
                            fontSize: 18.sp,
                            fontFamily: 'Aban Light',
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'در ویترین دیده شوید',
                        style: TextStyle(
                          color: const Color(0xFFA5A5A5),
                          fontSize: 12.sp,
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
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {
            Get.to(
              () => ReqMelkProfile(),
              duration: const Duration(milliseconds: 100),
              transition: Transition.leftToRight,
            );
          },
          child: Container(
            width: 145.w,
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
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12.0, top: 12.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset(
                      'assets/images/home_icon_profile.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'درخواست ملک',
                          style: TextStyle(
                            color: const Color(0xFF303030),
                            fontSize: 18.sp,
                            fontFamily: 'Aban Light',
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'درخواست های ملک',
                        style: TextStyle(
                          color: const Color(0xFFA5A5A5),
                          fontSize: 12.sp,
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
