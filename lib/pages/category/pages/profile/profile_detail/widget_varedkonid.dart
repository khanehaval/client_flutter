import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/profile/profile_detail/widget_color_text.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetVaredkonid extends StatelessWidget {
  const WidgetVaredkonid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: Get.width / 2.4,
            height: 41,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Center(
              child: Container(
                width: 137,
                child: const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: '--  --  -- -- --',
                    hintStyle: TextStyle(
                      fontSize: 11,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 11,
                    color: Color(0xFF626262),
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: Get.width / 3.5,
            height: 41,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3,
                  offset: Offset(0, 0),
                  spreadRadius: 0,
                )
              ],
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GradientTextWidget(
                  text: "D578ghe",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'YourFontFamily',
                  ),
                ),
              ],
            ),
          ),
          SvgPicture.asset('assets/images/refresh_icon_profile_detail.svg')
        ],
      ),
    );
  }
}
