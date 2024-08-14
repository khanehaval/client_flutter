import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';
import 'package:get/get.dart';

Widget Enseraf() {
  return Row(children: [
    Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Get.back();
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
                )
              ],
            ),
            child: const Row(
              children: [
                Expanded(
                  child: SizedBox(
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
              ],
            ),
          ),
        )),
  ]);
}
