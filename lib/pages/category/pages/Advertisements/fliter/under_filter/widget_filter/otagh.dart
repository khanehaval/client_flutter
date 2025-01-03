import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_svg/svg.dart';

Widget otagh() {
  TextEditingController controller = TextEditingController();
  return Column(
    children: [
      Container(
        height: 41,
        width: 330,
        child: TextField(
            controller: controller,
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
                  onPressed: () {
                    showNumberPicker((_) {
                      controller.text = _;
                    });
                  },
                  icon: SvgPicture.asset(
                    "assets/images/arrow_down.svg",
                    width: 10,
                    height: 10,
                  ),
                ))),
      ),
    ],
  );
}
