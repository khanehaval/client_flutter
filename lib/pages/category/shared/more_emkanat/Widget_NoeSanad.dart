import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_icon/gradient_icon.dart';

void NoeSanad(Function(String) onSelected) {
  final RxInt index = 2.obs; // Default index set to "Not Selected"
  final List<String> options = [
    'تکبرگ',
    'قولنامه ای',
    'منگوله دار',
    'اوقاف',
    'سایر',
    'انتخاب نشده',
  ];
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: index.value);

  Get.bottomSheet(
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 1.2, right: 1.2, left: 1.2),
        child: Container(
          height: 800,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigationRow(index, options, scrollController),
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

Widget _buildNavigationRow(RxInt index, List<String> options,
    FixedExtentScrollController scrollController) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () {
          if (index.value > 0) {
            index.value--;
            scrollController.animateToItem(
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
        height: 150, // Limit the height for scrollable view
        child: ListWheelScrollView.useDelegate(
          controller: scrollController,
          itemExtent: 50, // Height of each item
          physics: const FixedExtentScrollPhysics(),
          onSelectedItemChanged: (selectedIndex) {
            index.value = selectedIndex;
          },
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, i) {
              return Center(
                child: Obx(() {
                  return Text(
                    options[i],
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: i == index.value ? 15 : 13,
                      fontWeight: i == index.value
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: i == index.value ? Colors.black : Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  );
                }),
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
            scrollController.animateToItem(
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
