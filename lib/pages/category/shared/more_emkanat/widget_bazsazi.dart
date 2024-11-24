import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_Get/base_list.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

void BazSazi(Function(String key, String label) onSelected) async {
  final RxInt index = 0.obs; // Index شروع از 0
  final advertisementService = AdvertisementService();

  // بارگیری داده‌ها با مدیریت خطا
  final Base? baseData;
  try {
    baseData = await advertisementService.fetchDataFromServer();
  } catch (e) {
    Get.snackbar('Error', 'Failed to fetch data from server');
    return;
  }

  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: index.value);

  // استخراج داده‌های بازسازی
  final Data? reconstructionsData = baseData?.data?.firstWhere(
    (data) => data.key == "reconstructions",
    orElse: () => Data(key: "", list: []),
  );
  final List<Item>? items = reconstructionsData?.list;

  // بررسی خالی بودن داده‌ها
  if (items == null || items.isEmpty) {
    Get.snackbar('No Data', 'No reconstruction data available');
    return;
  }

  final List<String> options = items.map((item) => item.label ?? '').toList();

  Get.bottomSheet(
    Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          height: Get.height * 0.7, // تنظیم ارتفاع پویا
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            children: [
              _buildNavigationRow(index, options, scrollController),
              const SizedBox(height: 100),
              TaeedEnserafNumberPicker(
                selectedNumber: index.value.toString(),
                onConfirm: () {
                  final selectedItem = items[index.value];
                  final selectedKey = selectedItem.value ?? '';
                  final selectedLabel = selectedItem.label ?? '';
                  onSelected(selectedKey, selectedLabel);
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
  RxInt index,
  List<String> options,
  FixedExtentScrollController scrollController,
) {
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
        child: SvgPicture.asset('assets/images/arrow-up.svg'),
      ),
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
                      fontSize: i == index.value ? 15 : 12,
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
        child: SvgPicture.asset('assets/images/arrow-down.svg'),
      ),
    ],
  );
}
