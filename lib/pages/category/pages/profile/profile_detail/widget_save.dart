import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetSave extends StatelessWidget {
  const WidgetSave({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 119,
          height: 32,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
              borderRadius: BorderRadius.circular(15),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x7FC7D8CA),
                blurRadius: 7,
                offset: Offset(0, 1),
              )
            ],
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'ذخیره',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE2E2E2),
                  fontSize: 14,
                  fontFamily: MAIN_FONT_FAMILY,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
