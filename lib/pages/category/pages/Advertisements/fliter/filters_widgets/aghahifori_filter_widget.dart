import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // اضافه کردن ScreenUtil

class AghahiforiFilterWidget extends StatelessWidget {
  AghahiforiFilterWidget({super.key});
  final fori = false.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.h, // مقیاس‌دهی ارتفاع
          width: 370.w, // مقیاس‌دهی عرض
          decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15.r), // مقیاس‌دهی شعاع گوشه‌ها
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.scale(
                scale: 0.60,
                child: Obx(
                  () => Switch(
                    onChanged: (_) => fori.value = _,
                    value: fori.value,
                    activeColor: Colors.white,
                    activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                    inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                    inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w), // مقیاس‌دهی فاصله
                child: Text(
                  "آگهی فوری",
                  style: TextStyle(
                    fontFamily: MAIN_FONT_FAMILY,
                    fontSize: 12.sp, // مقیاس‌دهی اندازه فونت
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
