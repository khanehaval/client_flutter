import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

Widget AdvTitleWidget() {
  return Column(
    children: [
      const Text(
        "انتخاب نوع ملک",
        style: TextStyle(
            color: Color.fromRGBO(
              99,
              99,
              99,
              1,
            ),
            fontSize: 25,
            fontFamily: MAIN_FONT_FAMILY),
      ),
      const SizedBox(
        height: 25,
      ),
      Center(
        child: SvgPicture.asset(
          'assets/images/key and home1.svg',
        ),
      ),
    ],
  );
}
