import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_filters.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class City extends StatefulWidget {
  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  final selectedCity = Rx<String?>(
      null); // نگهداری شهر انتخاب شده در اینجا انجام می‌شود (فقط یک شهر)
  final List<String> cityList = [
    'تهران',
    'مشهد',
    'قزوین',
    'کرج',
    'شیراز',
    'اصفهان',
    'رودبار',
    'رشت',
  ];
  final searchController = TextEditingController();
  final filteredCity = <String>[].obs;

  @override
  void initState() {
    super.initState();
    filteredCity.addAll(cityList);
    searchController.addListener(_filterCity);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterCity() {
    final query = searchController.text.toLowerCase();
    filteredCity.value =
        cityList.where((city) => city.toLowerCase().contains(query)).toList();
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
              'انتخاب شهر',
              style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 22),
            ),
          ),
          const SizedBox(height: 10),
          SvgPicture.asset('assets/images/Iran.svg'),
          const SizedBox(height: 30),
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
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(99, 99, 99, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.6),
              child: Container(
                width: 300,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Obx(() => ListView.builder(
                      itemCount: filteredCity.length,
                      itemBuilder: (context, index) {
                        return cityRow(filteredCity[index]);
                      },
                    )),
              ),
            ),
          ),
          const SizedBox(height: 50),
          FiltersTaeedEnseraf(),
        ],
      ),
    );
  }

  Widget cityRow(String city) {
    return GestureDetector(
      onTap: () {
        selectedCity.value = city; // انتخاب شهر در اینجا تنظیم می‌شود
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
                isSelected: selectedCity.value == city, // بررسی انتخاب
                item: city,
                onTap: () {
                  selectedCity.value = city; // مدیریت انتخاب از بیرون
                },
              ),
            ),
          )),
    );
  }
}
