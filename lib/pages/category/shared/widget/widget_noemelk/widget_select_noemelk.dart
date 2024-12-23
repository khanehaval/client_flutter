import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/enseraf.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switchItem_location.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed.dart';
import 'package:get/get.dart';

void showSelectNoeMelk(Function(String label, String key) onSelected) {
  String? selectedLabel;
  String? selectedKey;

  const items = [
    {"key": "apartment", "label": "آپارتمان"},
    {"key": "tower", "label": "برج"},
    {"key": "penthouse", "label": "پنت هاوس"},
    {"key": "suite", "label": "سوئیت"},
  ];

  Get.bottomSheet(
    Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              const Text(
                "نوع مـلـک شمــا",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "یک مورد را انتخاب کنید",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12,
                  color: Color.fromRGBO(156, 64, 64, 1),
                ),
              ),
              const SizedBox(height: 20),
              SwitchItemsLocation(
                items: items.map((e) => e['label'] as String).toList(),
                onSelected: (selectedItems) {
                  if (selectedItems.isNotEmpty) {
                    selectedLabel = selectedItems.first;
                    // پیدا کردن key مربوطه
                    selectedKey = items.firstWhere(
                        (item) => item['label'] == selectedLabel)['key'];
                  }
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Enseraf(),
                  taeed(
                    onPressed: () async {
                      if (selectedLabel != null && selectedKey != null) {
                        // ارسال label و key
                        onSelected(selectedLabel!, selectedKey!);
                        Get.back();
                      } else {
                        Get.snackbar("خطا", "لطفاً یک مورد را انتخاب کنید");
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
