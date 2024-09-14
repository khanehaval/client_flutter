import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/Neighbourhood.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_controller.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:get/get.dart';

class City extends StatefulWidget {
  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  final CityController cityController = Get.put(CityController());
  final List<String> cityList = [
    'تهران',
    'مشهد',
    'قزوین',
    'کرج',
    'اصفهان',
    'شیراز',
    'تبریز',
    'اهواز',
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

  void _onConfirm() {
    if (cityController.selectedCity.value.isNotEmpty) {
      // Navigate to Neighbourhood page and pass the selected city
      Get.to(() => Neighbourhood(),
          arguments: cityController.selectedCity.value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('انتخاب شهر'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 45,
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextField(
              controller: searchController,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                hintText: 'جستجو در همه شهر ها',
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
          const SizedBox(height: 15),
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
                      itemCount: filteredCity.length,
                      itemBuilder: (context, index) {
                        return _buildCityRow(filteredCity[index]);
                      },
                    )),
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: _onConfirm,
            child: Text('تایید'),
          ),
        ],
      ),
    );
  }

  Widget _buildCityRow(String city) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SwitchItem(
            isSelected: cityController.selectedCity.value == city,
            onSelected: () {
              cityController.selectedCity.value = city;
            },
            item: city,
            textStyle: const TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        if (city != filteredCity.value.last)
          Container(
            margin: const EdgeInsets.symmetric(),
            width: MediaQuery.of(context).size.width * 0.67,
            height: 1,
            color: Color.fromARGB(255, 238, 238, 238),
          ),
      ],
    );
  }
}
