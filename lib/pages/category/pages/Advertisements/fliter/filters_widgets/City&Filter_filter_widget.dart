import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class CityfilterFilterWidget extends StatelessWidget {
  const CityfilterFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Container for "سیستان و بلوچستان"
        Container(
          height: 40.h, // اندازه ارتفاع با استفاده از ScreenUtil
          width: 150.w, // عرض به صورت نسبی با ScreenUtil
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius:
                BorderRadius.circular(15.r), // برای تنظیم شعاع گوشه‌ها
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "سیستان و بلوچستان",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11.sp, // اندازه فونت با استفاده از ScreenUtil
                  fontFamily: MAIN_FONT_FAMILY,
                  color: const Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/images/location.city.filter.svg",
                  width: 13.w, // اندازه آیکون به صورت نسبی
                  height: 14.h, // ارتفاع آیکون به صورت نسبی
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),

        // Container for "فیلتر"
        Container(
          height: 40.h, // ارتفاع با استفاده از ScreenUtil
          width: 150.w, // عرض با استفاده از ScreenUtil
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 189, 97, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(
                15.r), // شعاع گوشه‌ها با استفاده از ScreenUtil
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "فیلتر",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.sp, // اندازه فونت با استفاده از ScreenUtil
                  fontFamily: MAIN_FONT_FAMILY,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5.w), // فاصله‌های افقی با استفاده از ScreenUtil
                child: IconButton(
                  icon: SvgPicture.asset(
                    "assets/images/filter.svg",
                    width: 18.w, // اندازه آیکون با استفاده از ScreenUtil
                    height: 18.h, // ارتفاع آیکون با استفاده از ScreenUtil
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
