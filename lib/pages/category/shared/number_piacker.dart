import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:numberpicker/numberpicker.dart';

void showNumberPicker(Function(String) onSelected) {
  final index = 6.obs;
  Get.bottomSheet(
    Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
      ),
      child: Padding(
          padding: const EdgeInsets.only(top: 2, left: 2, right: 2),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (index.value > 0) {
                            index.value = index.value - 1;
                          }
                        },
                        child: const GradientIcon(
                          icon: Icons.keyboard_arrow_up,
                          gradient: LinearGradient(
                            colors: GRADIANT_COLOR_Number,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          size: 40,
                        ),
                      ),
                      const SizedBox(width: 30),
                      Obx(
                        () => NumberPicker(
                          value: index.value,
                          minValue: 0,
                          maxValue: 20,
                          step: 1,
                          itemHeight: 70,
                          axis: Axis.vertical,
                          onChanged: (value) => index.value = value,
                          textStyle: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(137, 179, 171, 171),
                            fontFamily: MAIN_FONT_FAMILY,
                          ),
                          selectedTextStyle: const TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 30),
                      GestureDetector(
                        onTap: () {
                          if (index.value < 20) {
                            index.value = index.value + 1;
                          }
                        },
                        child: const GradientIcon(
                          icon: Icons.keyboard_arrow_down_sharp,
                          gradient: LinearGradient(
                            colors: GRADIANT_COLOR_Number,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 35),
                  TaeedEnserafNumberPicker(
                    selectedNumber: index.value.toString(),
                    onConfirm: () {
                      onSelected(index.value.toString());
                      Get.back();
                    },
                  )
                ],
              ),
            ),
          )),
    ),
  );
}
