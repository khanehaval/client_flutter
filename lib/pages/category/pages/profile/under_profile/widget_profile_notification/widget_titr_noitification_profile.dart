import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetTitrNoitificationProfile extends StatelessWidget {
  const WidgetTitrNoitificationProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 0.35.sw, // 35% از عرض صفحه
          height: 100.h, // ارتفاع 100 واحد
          padding: EdgeInsets.symmetric(
              horizontal: 5.w, vertical: 13.h), // padding واکنش‌گرا
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.r), // گوشه‌های گرد واکنش‌گرا
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 3,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'تعداد اطلاع رسانی ها',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3E3E3E),
                  fontSize: 14.sp, // فونت‌سایز واکنش‌گرا
                  fontFamily: 'Aban Bold',
                ),
              ),
              Text(
                '-',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp, // فونت‌سایز واکنش‌گرا
                  fontFamily: 'Aban Bold',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 20.w, right: 20.w), // padding واکنش‌گرا
                child: Container(
                  height: 20.h, // ارتفاع واکنش‌گرا
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF9F9F9),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color(0xFFAEAEAE),
                      ),
                      borderRadius:
                          BorderRadius.circular(10.r), // گوشه‌های گرد واکنش‌گرا
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '!', // علامت تعجب
                              style: TextStyle(
                                color: Colors.red, // رنگ قرمز برای علامت تعجب
                                fontSize: 11.sp, // فونت‌سایز واکنش‌گرا
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                            TextSpan(
                              text: ' هنوز شروع نکردید', // متن اصلی
                              style: TextStyle(
                                color:
                                    const Color(0xFF303030), // رنگ خاکستری تیره
                                fontSize: 10.sp, // فونت‌سایز واکنش‌گرا
                                fontFamily: 'Aban Bold',
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
          ),
        ),
        Container(
          width: 135.w,
          height: 100,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            shadows: [
              BoxShadow(
                color: const Color(0x26000000),
                blurRadius: 3.r,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 15.h),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: SvgPicture.asset(
                  'assets/images/rington.svg',
                  width: 24.w,
                  height: 24.h,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'اطلاع رسانی',
                      style: TextStyle(
                        color: Color(0xFF626262),
                        fontSize: 18,
                        fontFamily: 'Aban Light',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'ذخیره جستجو و اطلاع رسانی ملک',
                      style: TextStyle(
                        color: Color(0xFFA5A5A5),
                        fontSize: 9,
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
