import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/intro_screen.dart';

Widget taeedvaemalefilter() {
  return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: GetGradient(),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent),
            child: const Text(
              'تائید و اعمال فیلتر',
              style: TextStyle(
                  color: Color.fromRGBO(48, 48, 48, 1),
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  fontFamily: MAIN_FONT_FAMILY),
            ),
          ),
        ),
      ]);
}
