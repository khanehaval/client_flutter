import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

Widget switchable(RxBool rValue, String title, [Container? container]) {
  //onchabged
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        title,
        style: const TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 13,
            color: Color.fromRGBO(99, 99, 99, 1)),
      ),
      Transform.scale(
        scale: 0.80,
        child: Obx(
          () => Switch(
              onChanged: (_) => rValue.value = _,
              value: rValue.value,
              activeColor: Colors.white,
              activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
              inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
              inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
    ],
  );
}
