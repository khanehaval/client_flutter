import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetSaveSerch1 extends StatelessWidget {
  const WidgetSaveSerch1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.12,
      height: 44,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'ذخیره جستجو',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF626262),
              fontSize: 12,
              fontFamily: MAIN_FONT_FAMILY,
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          const SizedBox(width: 20),
          SizedBox(
            width: Get.width / 3.0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: DottedBorder(
                borderType: BorderType.RRect,
                color: const Color.fromARGB(255, 168, 167, 167),
                strokeWidth: 1,
                radius: const Radius.circular(10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Color.fromRGBO(166, 166, 166, 1),
                      size: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
