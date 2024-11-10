import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_Get/base_list.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_svg/flutter_svg.dart';

void TedadOtagh(Function(String) onSelected) async {
  // دریافت داده‌ها از سرور
  final advertisementService = AdvertisementService();
  final Base? baseData = await advertisementService.fetchDataFromServer();

  // فیلتر کردن داده‌ها بر اساس کلید "rooms"
  final List<String> options = baseData?.data
          ?.firstWhere(
            (data) =>
                data.key == "rooms", // Use the actual key name for "rooms"
            orElse: () => Data(list: []),
          )
          .list
          ?.map((item) => item.label ?? '')
          .toList() ??
      [];
  // ['بدون اتاق', '1', '2', '3', '4', 'بیشتر از 4'];

  final RxInt selectedIndex = 1.obs;
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: selectedIndex.value);

  // نمایش BottomSheet
  Get.bottomSheet(
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: Container(
          height: 400,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigationRow(selectedIndex, options, scrollController),
              const SizedBox(height: 50),
              TaeedEnserafNumberPicker(
                selectedNumber: options[selectedIndex.value],
                onConfirm: () {
                  final selectedOption = options[selectedIndex.value];
                  onSelected(selectedOption);
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

// تابع برای ایجاد دکمه‌های ناوبری
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
