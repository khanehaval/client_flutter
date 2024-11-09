import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_numberpicker.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_Get/base_list.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

void SenBana(Function(String) onSelected) async {
  // ابتدا اطلاعات از سرور دریافت می‌شود
  final advertisementService = AdvertisementService();

  final Base? baseData = await advertisementService.fetchDataFromServer();

  // در صورتی که داده‌ها موجود باشد، لیست تاریخ‌ها را استخراج می‌کنیم
  final List<String> options =
      baseData?.data?.first.list?.map((item) => item.label ?? '').toList() ??
          [
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
            '1385',
            '1384',
            '1383',
            '1382',
            '1381',
            '1380',
            '1379',
            '1378',
            '1377',
            '1376',
            '1375',
            '1374',
            '1373',
            '1372',
            '1371',
            '1370',
            'قبل از 1370',
          ];

  final RxInt selectedIndex = 1.obs; // Default index set to "1401"
  final FixedExtentScrollController scrollController =
      FixedExtentScrollController(initialItem: selectedIndex.value);

  // نمایش BottomSheet با داده‌ها
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
          height: 400, // Adjusted height to better fit five items
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

// Future<Base?> fetchDataFromServer() async {
//   // URL سرور را وارد کنید
//   final url = Uri.parse('https://api.khaneaval.com/api/v1/base');
//   try {
//     // ارسال درخواست GET به سرور
//     final response = await http.get(url);
//     // بررسی وضعیت پاسخ سرور
//     if (response.statusCode == 200) {
//       // اگر درخواست موفقیت‌آمیز بود، داده‌های JSON را به مدل `Base` تبدیل می‌کنیم
//       final Map<String, dynamic> jsonData = json.decode(response.body);
//       return Base.fromJson(jsonData);
//     } else {
//       // اگر وضعیت پاسخ موفق نبود، یک پیام خطا چاپ کنید
//       print("Failed to load data: ${response.statusCode}");
//       return null;
//     }
//   } catch (e) {
//     // مدیریت خطاهای احتمالی
//     print("Error occurred: $e");
//     return null;
//   }
// }
