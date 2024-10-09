import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetTitrDetail extends StatelessWidget {
  const WidgetTitrDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: Get.width / 5,
          height: 100,
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 0.50, color: Color(0xFF4C8CEC)),
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ویرایش\nاطلاعات',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(48, 48, 48, 1),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY,
                    height: 2.0),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: Get.width / 2.2,
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
                  left: 100.0,
                ),
                child: SvgPicture.asset(
                  'assets/images/Group 1000004193.svg',
                  width: 24,
                  height: 24,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'پروفایل',
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
                padding: EdgeInsets.only(right: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'ویرایش و درسترسی ها',
                      style: TextStyle(
                        color: Color(0xFFA5A5A5),
                        fontSize: 10,
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
