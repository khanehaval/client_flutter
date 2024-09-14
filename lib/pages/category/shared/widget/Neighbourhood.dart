import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_filters.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Neighbourhood extends StatefulWidget {
  @override
  _NeighbourhoodState createState() => _NeighbourhoodState();
}

class _NeighbourhoodState extends State<Neighbourhood> {
  var selectedNeighborhoods = <String>[].obs;
  final List<String> cityList = [
    'صادقیه',
    'مرزداران',
    'تجریش',
    'ولیعصر',
    'نیاوران',
    'انقلاب',
    'آزادی',
    'جی ',
  ];
  final searchController = TextEditingController();
  final filteredCity = <String>[].obs;

  @override
  void initState() {
    super.initState();
    filteredCity.addAll(cityList);
    searchController.addListener(flterneighborhoods);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  flterneighborhoods() {
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

          const SizedBox(height: 20), // فاصله بین TextField و لیست شهرها

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
                        return _buildNeighborhoodsRow(filteredCity[index]);
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

  Widget _buildNeighborhoodsRow(String Neighborhoods) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: SwitchItem(
            isSelected: selectedNeighborhoods.value.isNotEmpty &&
                selectedNeighborhoods.value.first == Neighborhoods,
            onSelected: () {
              setState(() {
                selectedNeighborhoods.value = [Neighborhoods];
              });
            },
            item: Neighborhoods,
            textStyle: const TextStyle(
              // Adding TextStyle for city names
              fontSize: 20, // Setting font size to 14
              color: Colors.black, // Color of the city names
            ),
          ),
        ),
        if (Neighborhoods !=
            filteredCity
                .value.last) // Only show border line if not the last item
          Container(
            margin: const EdgeInsets.symmetric(), // Adjust spacing if needed
            width: MediaQuery.of(context).size.width *
                0.67, // Width of the border line
            height: 1, // Height of the border line
            color:
                Color.fromARGB(255, 238, 238, 238), // Color of the border line
          ),
      ],
    );
  }
}
