import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

class WidgetNumberShaba extends StatelessWidget {
  const WidgetNumberShaba({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: Get.width / 1.14,
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
                'شماره شبا',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 13,
                  fontFamily: MAIN_FONT_FAMILY,
                ),
              ),
              const SizedBox(height: 6),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFE2E2E2),
                      width: 1,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 320,
                child: Row(
                  children: [
                    Text(
                      'IR', // متن ثابت سمت چپ
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF626262),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
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
                          fontSize: 12,
                          color: Color(0xFF626262),
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
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
