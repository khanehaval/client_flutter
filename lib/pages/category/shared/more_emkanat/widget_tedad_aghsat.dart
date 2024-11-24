import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_Get/base_list.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

void TedadAghsat(Function(String key, String label) onSelected) async {
  final RxInt selectedIndex = 0.obs; // Default index set to "1401"

  final advertisementService = AdvertisementService();
  final Base? baseData = await advertisementService.fetchDataFromServer();

  // دریافت داده‌ها برای تعداد اقساط
  final Data? totalInstallmentsData = baseData?.data?.firstWhere(
    (data) => data.key == "total_installments", // کلید برای تعداد اقساط
    orElse: () => Data(list: []),
  );

  final List<Item>? items = totalInstallmentsData?.list;
  final List<String> options =
      items?.map((item) => item.label ?? '').toList() ?? [];

  // تعریف کنترلر اسکرول
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: selectedIndex.value);

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
          height: 400, // ارتفاع بهینه شده برای نمایش بهتر
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavigationRow(selectedIndex, options, scrollController),
              const SizedBox(height: 20),
              TaeedEnserafNumberPicker(
                selectedNumber: options[selectedIndex.value],
                onConfirm: () {
                  final selectedItem = items?[selectedIndex.value];
                  final selectedKey =
                      selectedItem?.value ?? ''; // کلید انتخاب‌شده
                  final selectedLabel =
                      selectedItem?.label ?? ''; // برچسب انتخاب‌شده
                  onSelected(selectedKey,
                      selectedLabel); // ارسال کلید و برچسب به تابع onSelected
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
        width: 130, // عرض ثابت برای متن‌ها
        height: 200, // محدود کردن ارتفاع برای نمایش درست لیست
        child: ListWheelScrollView.useDelegate(
          controller: scrollController,
          itemExtent: 50, // ارتفاع هر آیتم
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
