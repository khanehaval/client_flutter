import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetTitrColleagues extends StatelessWidget {
  const WidgetTitrColleagues({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
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
                    left: 110.0,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/Colleagues_icon_profile.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'همکاران',
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
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'مدیریت و ارتباط با همکاران',
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
        ),
      ],
    );
  }
}
