import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget ReadOnlyTextField(TextEditingController controller, Function onTap,
    {double? width, double? fontSize}) {
  return SizedBox(
    height: 41,
    width: width,
    child: Center(
      child: TextField(
        readOnly: true,
        textAlign: TextAlign.right,
        controller: controller,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
          hintText: 'انتخاب نشده',
          hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromRGBO(23, 102, 175, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Color.fromRGBO(23, 102, 175, 1),
            ),
          ),
          prefixIcon: IconButton(
            icon: SvgPicture.asset("assets/images/Vector-20.svg"),
            onPressed: () {
              FocusScope.of(Get.context!).unfocus();
              onTap();
            },
          ),
        ),
      ),
    ),
  );
}

Widget InputTextField(TextEditingController controller, {double? width}) {
  return Container(
    height: 41,
    width: width,
    child: TextField(
      keyboardType: TextInputType.number,
      controller: controller,
      textAlign: TextAlign.right,
      decoration: InputDecoration(
        hintText: 'تایپ کنید',
        hintStyle: const TextStyle(color: Color(0xFFA6A6A6), fontSize: 13),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromRGBO(23, 102, 175, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromRGBO(23, 102, 175, 1),
          ),
        ),
      ),
    ),
  );
}
