import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/under_profile/widget_profile_notification/Profile_Notification.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetProfileHomeTourRington extends StatelessWidget {
  const WidgetProfileHomeTourRington({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            Get.to(
              () => const ProfileNotification(),
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
                      'assets/images/rington.svg',
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
                          'اطلاع رسانی',
                          style: TextStyle(
                            color: const Color(0xFF303030),
                            fontSize: 18.sp,
                            fontFamily: 'Aban Light',
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'جستجو و اطلاع رسانی',
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
        Container(
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
                    'assets/images/tour_profile.svg',
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
                        'تورها',
                        style: TextStyle(
                          color: const Color(0xFF303030),
                          fontSize: 18.sp,
                          fontFamily: 'Aban Light',
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'تور آموزشی خانه اول',
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
      ],
    );
  }
}
