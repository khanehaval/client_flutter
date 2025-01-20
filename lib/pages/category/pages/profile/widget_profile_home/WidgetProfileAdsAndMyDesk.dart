import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/category_Profile.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_my_desk/profile_my_desk.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            Get.to(() => const CategoryProfile(index: 0));
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
                )
              ],
            ),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // متن‌ها از چپ تراز می‌شوند
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0, top: 12.0), // فاصله از راست و بالا
                  child: Align(
                    alignment:
                        Alignment.topRight, // آیکون در سمت راست بالای کانتینر
                    child: SvgPicture.asset(
                      'assets/images/Agahi_man_profile_home.svg',
                      width: 24.w, // اندازه آیکون
                      height: 24.w,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 12.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'آگهی های من',
                          style: TextStyle(
                            color: const Color(0xFF303030),
                            fontSize: 18.sp,
                            fontFamily: 'Aban Light',
                          ),
                        ),
                      ),
                      const SizedBox(height: 4), // فاصله بین خطوط متن
                      Text(
                        'آگهی های ثبت شده',
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
            Get.to(() => const ProfileMyDesk(),
                duration: const Duration(milliseconds: 100),
                transition: Transition.leftToRight);
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
                      'assets/images/miz_kar_profile.svg',
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
                          'میزکار من',
                          style: TextStyle(
                            color: const Color(0xFF303030),
                            fontSize: 18.sp,
                            fontFamily: 'Aban Light',
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'توضیحات در ادامه',
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
