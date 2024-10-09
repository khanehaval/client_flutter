import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WidgetVitrinMessageCall extends StatelessWidget {
  const WidgetVitrinMessageCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: GRADIANT_call),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: Get.width / 4,
              height: 46,
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'تماس',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 12,
                      fontFamily: MAIN_FONT_FAMILY_LIGHT,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/Call_icon_profile.svg',
                    width: 17,
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: GRADIANT_message),
              borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: Get.width / 4,
              height: 46,
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'پیام',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 12,
                      fontFamily: MAIN_FONT_FAMILY_LIGHT,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/Message_icon_profile.svg',
                    width: 17,
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: GRADIANT_vitrin),
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              width: Get.width / 4,
              height: 46,
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x26000000),
                    blurRadius: 3,
                    offset: Offset(0, 0),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'ویترین',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF626262),
                      fontSize: 12,
                      fontFamily: MAIN_FONT_FAMILY_LIGHT,
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/images/Vitrin_off_icon.svg',
                    width: 17,
                    height: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
