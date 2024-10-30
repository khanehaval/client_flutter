import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

void showMizanRahnMaxBottomSheet(Function(String) onSelected) {
  final TextEditingController _MaxAmountController = TextEditingController();

  final RxInt index = 0.obs;
  final List<String> options = [
    'وارد کردن مبلغ دلخواه',
    '50 میلیون تومان',
    '100 میلیون تومان',
    '150 میلیون تومان',
    '200 میلیون تومان',
    '250 میلیون تومان',
    '300 میلیون تومان',
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
              const SizedBox(height: 20),
              const SizedBox(height: 100),
              TaeedEnserafNumberPicker(
                selectedNumber: index.value.toString(),
                onConfirm: () {
                  final selectedValue =
                      options[index.value] == 'وارد کردن مبلغ دلخواه'
                          ? _MaxAmountController.text // گرفتن مقدار از کنترلر
                          : options[index.value];
                  onSelected(selectedValue); // ارسال مقدار انتخابی
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
        width: 130,
        height: 200,
        child: ListWheelScrollView.useDelegate(
          controller: scrollController,
          itemExtent: 50,
          physics: const FixedExtentScrollPhysics(),
          onSelectedItemChanged: (selectedIndex) {
            index.value = selectedIndex; // به روزرسانی اندیس انتخاب شده
          },
          childDelegate: ListWheelChildBuilderDelegate(
            builder: (context, i) {
              return Center(
                child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          options[i].replaceAll(RegExp(r'\d+'), ''),
                          style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: i == index.value ? 12 : 10,
                            fontWeight: i == index.value
                                ? FontWeight.bold
                                : FontWeight.normal,
                            color: i == index.value
                                ? Colors.black
                                : const Color.fromARGB(255, 200, 199, 199),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Text(
                        RegExp(r'\d+').stringMatch(options[i]) ?? '',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: i == index.value ? 12 : 10,
                          fontWeight: i == index.value
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: i == index.value
                              ? Colors.black
                              : const Color.fromARGB(255, 200, 199, 199),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
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
