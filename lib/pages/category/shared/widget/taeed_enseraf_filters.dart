import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

Widget FiltersTaeedEnseraf({required Function onTaeed}) {
  return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Get.back(); // بازگشت بدون انتخاب (انصراف)
        },
        child: Container(
          width: 83,
          height: 38,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFF9C4040)),
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x7F9C4040),
                blurRadius: 2,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'انصراف',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF636363),
                fontSize: 13,
                fontFamily: MAIN_FONT_FAMILY,
              ),
            ),
          ),
        ),
      ),
    ),
    GestureDetector(
      onTap: () {
        onTaeed(); // فراخوانی تابع تایید
      },
      child: Container(
        width: 83,
        height: 38,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF4C8CED)),
            borderRadius: BorderRadius.circular(20),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x7F36D859),
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'تائید',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              color: Color(0xFF636363),
              fontSize: 13,
            ),
          ),
        ),
      ),
    ),
  ]);
}
