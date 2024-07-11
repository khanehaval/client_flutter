import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class City extends StatefulWidget {
  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  final selectedCity = <String>[].obs;
  final List<String> City = [
    'تهران',
    'مشهد',
    'قزوین ',
    'کرج',
  ];
  final searchController = TextEditingController();
  final filteredCity = <String>[].obs;

  @override
  void initState() {
    super.initState();
    filteredCity.addAll(City);
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
        City.where((City) => City.toLowerCase().contains(query)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text(
                'انتخاب شهر',
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 22),
              ),
            ),
            const SizedBox(height: 20),
            SvgPicture.asset(
              'assets/images/city.svg',
              semanticsLabel: 'City Illustration',
            ),
            const SizedBox(height: 10),
            Obx(() => selectedCity.isEmpty
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 5.0,
                        children: selectedCity
                            .map((City) => Chip(
                                  deleteIconColor: Colors.red,
                                  backgroundColor: Colors.white,
                                  label: Text(
                                    City,
                                    style: const TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 10),
                                  ),
                                  onDeleted: () {
                                    selectedCity.remove(City);
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                  )),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: TextField(
                controller: searchController,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  hintText: 'جستجو در همه شهر ها',
                  hintStyle: const TextStyle(
                      fontFamily: 'Iran Sans', fontWeight: FontWeight.w400),
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
            Center(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(99, 99, 99, 1),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(0.6),
                  child: Container(
                    width: 350,
                    height: 280,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Obx(() => ListView.builder(
                          itemCount: filteredCity.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                _buildCityRow(filteredCity[index]),
                                if (index < filteredCity.length - 1)
                                  _buildDivider(),
                              ],
                            );
                          },
                        )),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: GRADIANT_COLOR),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: SvgPicture.asset(
                        'assets/images/tic.svg',
                        width: 33,
                        height: 26,
                      ),
                    ),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCityRow(String City) {
    return Row(
      children: [
        Obx(() => SwitchItems(
              onSelected: (_) {
                if (selectedCity.contains(City)) {
                  selectedCity.remove(City);
                } else {
                  selectedCity.add(City);
                }
              },
              items: [selectedCity.contains(City) ? "" : ""],
            )),
        const SizedBox(width: 240),
        Text(
          City,
          style: const TextStyle(
            fontFamily: MAIN_FONT_FAMILY,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return const Divider(
      endIndent: 30,
      indent: 30,
    );
  }
}
