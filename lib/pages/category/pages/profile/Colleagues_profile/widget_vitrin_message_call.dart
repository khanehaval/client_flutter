import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WidgetVitrinMessageCall extends StatelessWidget {
  const WidgetVitrinMessageCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButton(
          gradient: GRADIANT_call,
          text: 'تماس',
          iconPath: 'assets/images/Call_icon_profile.svg',
        ),
        _buildButton(
          gradient: GRADIANT_message,
          text: 'پیام',
          iconPath: 'assets/images/Message_icon_profile.svg',
        ),
        _buildButton(
          gradient: GRADIANT_vitrin,
          text: 'ویترین',
          iconPath: 'assets/images/Vitrin_off_icon.svg',
        ),
      ],
    );
  }

  Widget _buildButton({
    required List<Color> gradient,
    required String text,
    required String iconPath,
  }) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: gradient),
        borderRadius: BorderRadius.circular(16.r), // استفاده از .r برای radius
      ),
      child: Padding(
        padding: EdgeInsets.all(1.w), // استفاده از .w برای padding
        child: Container(
          width: 75.w, // عرض ثابت برای دکمه‌ها
          height: 40.h, // ارتفاع ثابت برای دکمه‌ها
          padding: EdgeInsets.symmetric(
              horizontal: 13.w,
              vertical: 5.h), // استفاده از .w و .h برای padding
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(15.r), // استفاده از .r برای radius
            boxShadow: const [
              BoxShadow(
                color: Color(0x26000000),
                blurRadius: 3,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFF626262),
                  fontSize: 10.sp, // استفاده از .sp برای فونت
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
              SvgPicture.asset(
                iconPath,
                width: 18.w, // استفاده از .w برای عرض آیکون
                height: 18.h, // استفاده از .h برای ارتفاع آیکون
              ),
            ],
          ),
        ),
      ),
    );
  }
}
