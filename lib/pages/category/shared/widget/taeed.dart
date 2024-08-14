import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

Widget taeed({required VoidCallback onPressed}) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: onPressed, // اجرای تابع هنگام کلیک
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
                  spreadRadius: 0,
                ),
              ],
            ),
            child: const Center(
              // مرکز کردن متن در دکمه
              child: Text(
                'تائید',
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
    ],
  );
}
