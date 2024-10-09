import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetPhoneNumber extends StatelessWidget {
  const WidgetPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: Get.width / 2.4,
          height: 85,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'شماره تلفن ثابت',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 12,
                  fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 137,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE2E2E2),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 137,
                child: const TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: 'وارد کنید',
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
            ],
          ),
        ),
        Container(
          width: Get.width / 2.4,
          height: 85,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'شماره تلفن همراه',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 12,
                  fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 137,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE2E2E2),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 137,
                child: const TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                    isDense: true,
                    border: InputBorder.none,
                    hintText: 'وارد کنید',
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
            ],
          ),
        ),
      ],
    );
  }
}
