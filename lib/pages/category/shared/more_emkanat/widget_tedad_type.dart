import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gradient_icon/gradient_icon.dart';

void TedadType(Function(String) onSelected) {
  final RxInt index = 1.obs; // Default index set to "Not Selected"
  final List<String> options = [
    '1',
    '2',
    '3',
    '4',
    '5',
    'بیشتر یا 5',
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
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 1.2, right: 1.2, left: 1.2),
        child: Container(
          height: 800,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
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
          child: SvgPicture.asset('assets/images/arrow-up.svg')),
      const SizedBox(width: 40),
      SizedBox(
        width: 130, // Fixed width for texts
        height: 200, // Limit the height for scrollable view
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
                      fontSize: i == index.value ? 18 : 12,
                      fontWeight: i == index.value
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: i == index.value
                          ? Colors.black
                          : const Color.fromARGB(255, 200, 199, 199),
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
      const SizedBox(width: 40),
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
          child: SvgPicture.asset('assets/images/arrow-down.svg')),
    ],
  );
}
