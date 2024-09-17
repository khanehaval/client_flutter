import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/enseraf.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switchItem_location.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed.dart';
import 'package:get/get.dart';

void showNoeMelkSakhtMosharekat(Function(String) onSelected) {
  String? selectedMelk;
  Get.bottomSheet(
    Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: GRADIANT_COLOR,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 1.3, left: 1.3, right: 1.3),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          ),
          child: Column(
            children: [
              const SizedBox(height: 40),
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
                    color: Color.fromRGBO(156, 64, 64, 1)),
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  SwitchItemsLocation(
                    onSelected: (selectedItems) {
                      if (selectedItems.isNotEmpty) {
                        selectedMelk = selectedItems.first;
                      }
                    },
                    items: const [
                      "آپارتمان",
                      "شهرک ویلایی",
                      "مجتمع اداری تجاری",
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Enseraf(),
                      taeed(
                        onPressed: () {
                          if (selectedMelk != null) {
                            onSelected(selectedMelk!);
                            Get.back();
                          } else {
                            Get.snackbar("خطا", "لطفاً یک مورد را انتخاب کنید");
                          }
                        },
                      ),
                      const SizedBox(width: 10),
                    ],
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
