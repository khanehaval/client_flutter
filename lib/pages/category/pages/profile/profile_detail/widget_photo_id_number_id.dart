import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetPhotoIdNumberId extends StatelessWidget {
  const WidgetPhotoIdNumberId({super.key});

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
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'آپلود تصویر شناسنامه',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(48, 48, 48, 1),
                      fontSize: 12,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  width: 140,
                  child: TextField(
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        isDense: true,
                        border: InputBorder.none,
                        hintText: 'انتخاب کنید',
                        hintStyle: const TextStyle(
                          fontSize: 11,
                          color: Color(0xFF626262),
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                        prefixIcon: Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(bottom: 5.0, right: 30),
                            child: SvgPicture.asset(
                              'assets/images/Del.svg',
                              width: 20,
                            ),
                          ),
                        )),
                    style: const TextStyle(
                      fontSize: 11,
                      color: Color(0xFF626262),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'شماره شناسنامه',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 12,
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
            ],
          ),
        ),
      ],
    );
  }
}
