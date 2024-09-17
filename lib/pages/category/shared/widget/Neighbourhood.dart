import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_controller.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_filters.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Neighbourhood extends StatefulWidget {
  @override
  _NeighbourhoodState createState() => _NeighbourhoodState();
}

class _NeighbourhoodState extends State<Neighbourhood> {
  final selectedNeighborhood = Rx<String?>(null); // برای ذخیره محله انتخاب شده
  final List<String> neighborhoodList = [
    'صادقیه',
    'مرزداران',
    'تجریش',
    'ولیعصر',
    'نیاوران',
    'انقلاب',
    'آزادی',
    'جی',
  ];
  final searchController = TextEditingController();
  final filteredNeighborhood = <String>[].obs;
  final neighborhoodController =
      Get.put(NeighborhoodController()); // پیدا کردن کنترلر

  @override
  void initState() {
    super.initState();
    filteredNeighborhood.addAll(neighborhoodList);
    searchController.addListener(_filterNeighborhoods);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterNeighborhoods() {
    final query = searchController.text.toLowerCase();
    filteredNeighborhood.value = neighborhoodList
        .where((neighborhood) => neighborhood.toLowerCase().contains(query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'انتخاب محله',
              style: TextStyle(fontFamily: 'MAIN_FONT_FAMILY', fontSize: 22),
            ),
          ),
          const SizedBox(height: 150),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: SizedBox(
              height: 40,
              child: TextField(
                controller: searchController,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  hintText: 'جستجو در همه شهر ها',
                  hintStyle: const TextStyle(
                    fontFamily: 'Iran Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(23, 102, 175, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(23, 102, 175, 1),
                    ),
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(99, 99, 99, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.6),
              child: Container(
                width: 300,
                height: 270,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Obx(() => ListView.builder(
                      itemCount: filteredNeighborhood.length,
                      itemBuilder: (context, index) {
                        return cityRow(filteredNeighborhood[index]);
                      },
                    )),
              ),
            ),
          ),
          const SizedBox(height: 50),
          FiltersTaeedEnseraf(
            onTaeed: () {
              Get.back(
                  result: neighborhoodController.selectedNeighborhood
                      .value); // بازگشت به صفحه قبلی با نتیجه انتخاب‌شده
            },
          ),
        ],
      ),
    );
  }

  Widget cityRow(String city) {
    return GestureDetector(
      onTap: () {
        neighborhoodController.selectedNeighborhood.value =
            city; // بلافاصله آپدیت کردن شهر انتخاب‌شده
      },
      child: Obx(() => Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey, // رنگ خط زیرین
                    width: 1.0, // عرض خط زیرین
                  ),
                ),
              ),
              child: SwitchItem(
                isSelected: neighborhoodController.selectedNeighborhood.value ==
                    city, // بررسی انتخاب
                item: city,
                onTap: () {
                  neighborhoodController.selectedNeighborhood.value =
                      city; // مدیریت انتخاب
                },
              ),
            ),
          )),
    );
  }
}
