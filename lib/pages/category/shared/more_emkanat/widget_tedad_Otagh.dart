import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_icon/gradient_icon.dart';

void TedadOtagh(Function(String) onSelected) {
  final RxInt index = 1.obs;
  final RxInt selectedIndex = 0.obs; // Default index set to "1401"
  // Default index set to "Not Selected"
  final List<String> options = [
    'بدون اتاق',
    '1',
    '2',
    '3',
    '4',
    'بیشتر از 4',
  ];
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: index.value);

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
          height: 400, // Adjusted height to better fit five items
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigationRow(selectedIndex, options, scrollController),
              const SizedBox(height: 20),
              TaeedEnserafNumberPicker(
                selectedNumber: options[selectedIndex.value],
                onConfirm: () {
                  onSelected(options[selectedIndex.value]);
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

Widget _buildNavigationRow(RxInt selectedIndex, List<String> options,
    FixedExtentScrollController controller) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          if (selectedIndex.value > 0) {
            selectedIndex.value--;
            controller.animateToItem(
              selectedIndex.value,
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
        width: 130,
        height: 200,
        child: ListWheelScrollView.useDelegate(
          controller: controller,
          itemExtent: 50,
          diameterRatio: 2.0,
          onSelectedItemChanged: (i) {
            selectedIndex.value = i;
          },
          physics: const FixedExtentScrollPhysics(),
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, i) {
              final distance = (i - selectedIndex.value).abs();
              final opacity = distance == 0 ? 1.0 : 0.4;
              return Center(
                child: Obx(
                  () => Text(
                    options[i],
                    style: TextStyle(
                      fontSize: 16,
                      color: selectedIndex.value == i
                          ? Colors.black
                          : Colors.black.withOpacity(opacity),
                      fontFamily: MAIN_FONT_FAMILY,
                      fontWeight: selectedIndex.value == i
                          ? FontWeight.bold
                          : FontWeight.w100,
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
          if (selectedIndex.value < options.length - 1) {
            selectedIndex.value++;
            controller.animateToItem(
              selectedIndex.value,
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
