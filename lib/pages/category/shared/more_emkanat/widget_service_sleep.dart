import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_icon/gradient_icon.dart';

void ServiceSleep(Function(String) onSelected) {
  final RxInt index = 1.obs; // Default index set to "Not Selected"
  final List<String> options = [
    '1',
    '2',
    '3',
    '4',
    ' بیشتر از 4',
    'انتخاب نشده',
  ];

  Get.bottomSheet(
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: 800,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigationRow(index, options),
              const SizedBox(height: 130),
              TaeedEnserafNumberPicker(
                selectedNumber: index.value.toString(),
                onConfirm: () {
                  onSelected(options[index.value]);
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _buildNavigationRow(RxInt index, List<String> options) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          if (index.value > 0) {
            index.value--;
          }
        },
        child: const GradientIcon(
          icon: Icons.keyboard_arrow_up,
          gradient: LinearGradient(
            colors: GRADIANT_COLOR1,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          size: 50,
        ),
      ),
      const SizedBox(width: 50),
      SizedBox(
        width: 130, // Fixed width for texts
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                index.value > 0 ? options[index.value - 1] : '',
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black38,
                  fontFamily: MAIN_FONT_FAMILY,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Obx(
              () => Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  options[index.value],
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontFamily: MAIN_FONT_FAMILY,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Obx(
              () => Text(
                index.value < options.length - 1
                    ? options[index.value + 1]
                    : '',
                style: const TextStyle(
                  fontSize: 13,
                  color: Colors.black38,
                  fontFamily: MAIN_FONT_FAMILY,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(width: 50),
      GestureDetector(
        onTap: () {
          if (index.value < options.length - 1) {
            index.value++;
          }
        },
        child: const GradientIcon(
          icon: Icons.keyboard_arrow_down,
          gradient: LinearGradient(
            colors: GRADIANT_COLOR1,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          size: 50,
        ),
      ),
    ],
  );
}
