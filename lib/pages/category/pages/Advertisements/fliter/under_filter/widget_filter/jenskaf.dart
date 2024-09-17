import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

Widget jenskaf() {
  return Column(
    children: [
      Container(
        height: 41,
        width: 330,
        child: TextField(
            readOnly: true,
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                hintText: 'انتخاب کنید',
                hintStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: MAIN_FONT_FAMILY),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/left.svg",
                    width: 15,
                    height: 15,
                  ),
                ))),
      ),
    ],
  );
}
