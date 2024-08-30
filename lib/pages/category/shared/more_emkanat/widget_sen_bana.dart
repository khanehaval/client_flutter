import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

void SenBana(Function(String) onSelected) {
  final RxInt index = 2.obs; // Default index set to "1401"
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: index.value);

  final List<String> options = [
    '1403',
    '1402',
    '1401',
    '1400',
    '1399',
    '1398',
    '1397',
    '1396',
    '1395',
    '1394',
    '1393',
    '1392',
    '1391',
    '1390',
    '1389',
    '1388',
    '1387',
    '1386',
    'قبل از 1370',
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
              _buildNavigationRow(index, options, scrollController),
              const SizedBox(height: 130),
              TaeedEnserafNumberPicker(
                selectedNumber: options[index.value],
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

Widget _buildNavigationRow(
    RxInt index, List<String> options, FixedExtentScrollController controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          if (index.value > 0) {
            index.value--;
            controller.animateToItem(
              index.value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
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
        height: 130, // Fixed height for scroll area
        child: ListWheelScrollView.useDelegate(
          controller: controller,
          itemExtent: 50,
          diameterRatio: 2.0,
          onSelectedItemChanged: (i) {
            index.value = i;
          },
          physics: const FixedExtentScrollPhysics(),
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, i) {
              return Center(
                child: Obx(
                  () => Text(
                    options[i],
                    style: TextStyle(
                      fontSize: 14,
                      color: index.value == i
                          ? Colors.black
                          : Colors.grey, // Selected item is black, others are grey
                      fontFamily: MAIN_FONT_FAMILY,
                      fontWeight: index.value == i
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              );
            },
            childCount: options.length,
          ),
        ),
      ),
      const SizedBox(width: 50),
      GestureDetector(
        onTap: () {
          if (index.value < options.length - 1) {
            index.value++;
            controller.animateToItem(
              index.value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
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
