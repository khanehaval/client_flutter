import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetSaveSerch2 extends StatelessWidget {
  const WidgetSaveSerch2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.12,
      height: 41,
      decoration: ShapeDecoration(
        gradient: const LinearGradient(colors: GRADIANT_COLOR1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFE2E2E2)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'ذخیره جستجو',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 12,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 17.93,
                  height: 18,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFFDFDFD),
                    shape: OvalBorder(),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '2',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
