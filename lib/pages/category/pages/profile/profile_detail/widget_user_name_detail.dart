import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetUserNameDetail extends StatelessWidget {
  const WidgetUserNameDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: Get.width / 2.4,
          height: 85,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
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
                'نمایش نام کاربری شما',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 13,
                  fontFamily: MAIN_FONT_FAMILY, // تغییر به فونت مورد نظر
                ),
              ),
              const SizedBox(height: 6),
              Container(
                width: 137,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE2E2E2),
                    ),
                  ),
                ),
              ),
              Container(
                width: 137,
                child: const TextField(
                  readOnly: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    isDense: true,
                    border: InputBorder.none,
                    hintText: 'Agancy-',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 12,
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
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '(Ayande) ',
                          style: TextStyle(
                            color: Color(0xFFA5A5A5),
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                        TextSpan(
                          text: 'نام کاربری ',
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 12,
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Container(
                width: 137,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0xFFE2E2E2),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 140,
                  child: const TextField(
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'وارد کنید',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF626262),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
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