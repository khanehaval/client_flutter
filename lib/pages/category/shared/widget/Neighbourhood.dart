import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_controller.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_filters.dart';
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
          const Text(
            'انتخاب محله',
            style: TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
              fontSize: 22,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 70),

          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              controller: searchController,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                hintText: 'جستجو در همه محله‌ها',
                hintStyle: const TextStyle(
                    fontFamily: MAIN_FONT_FAMILY_UltraLight,
                    fontSize: 12,
                    color: Color.fromRGBO(166, 166, 166, 1)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(23, 102, 175, 1),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(23, 102, 175, 1),
                  ),
                ),
                prefixIcon: const Icon(Icons.search),
                contentPadding: const EdgeInsets.only(bottom: 50, right: 15),
              ),
            ),
          ),

          const SizedBox(height: 20), // فاصله بین TextField و لیست محله‌ها

          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(99, 99, 99, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.6),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 270,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Obx(() => ListView.builder(
                      itemCount: filteredNeighborhood.length,
                      itemBuilder: (context, index) {
                        return buildNeighborhood(filteredNeighborhood[index]);
                      },
                    )),
              ),
            ),
          ),
          const SizedBox(height: 30),
          FiltersTaeedEnseraf(),
        ],
      ),
    );
  }

  Widget buildNeighborhood(String neighborhood) {
    return GestureDetector(
      onTap: () {
        selectedNeighborhood.value = neighborhood; // تنظیم محله انتخاب شده
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
                isSelected:
                    selectedNeighborhood.value == neighborhood, // بررسی انتخاب
                item: neighborhood,
                onTap: () {
                  selectedNeighborhood.value =
                      neighborhood; // مدیریت انتخاب از بیرون
                },
              ),
            ),
          )),
    );
  }
}
