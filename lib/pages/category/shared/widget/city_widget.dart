

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
class City extends StatefulWidget {
  City({super.key});

  @override
  State<City> createState() => _CityState();
}

class _CityState extends State<City> {
  final selectedCity = <String>[].obs;
  final List<String> cityList = [
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
          const SizedBox(height: 50),
          Obx(() => selectedCity.isEmpty
              ? Container()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 15.0,
                      children: selectedCity
                          .map((neighborhood) => Text(
                                neighborhood,
                                style: const TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                )),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
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
                          .map((city) => Chip(
                                deleteIconColor: Colors.red,
                                backgroundColor: Colors.white,
                                label: Text(
                                  city,
                                  style: const TextStyle(
                                      fontFamily: MAIN_FONT_FAMILY,
                                      fontSize: 10),
                                ),
                                onDeleted: () {
                                  selectedCity.remove(city);
                                },
                              ))
                          .toList(),
                    ),
                  ),
                )),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(99, 99, 99, 1),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(0.6),
              child: Container(
                width: 346,
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
                            _buildNeighborhoodRow(filteredCity[index]),
                            if (index < filteredCity.length - 1)
                              _buildDivider(),
                          ],
                        );
                      },
                    )),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          GestureDetector(
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
        ],
      ),
    );
  }

  Widget _buildNeighborhoodRow(String neighborhood) {
    return SwitchItem(
      IsSelected: selectedCity.contains(neighborhood),
      onSelected: (_) {
        if (selectedCity.contains(neighborhood)) {
          selectedCity.remove(neighborhood);
        } else {
          selectedCity.add(neighborhood);
        }
      },
      item: neighborhood,
    );
  }

  Widget _buildDivider() {
    return const Divider(
      endIndent: 30,
      indent: 30,
    );
  }
}
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/category/shared/constant.dart';
// import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';

// class City extends StatefulWidget {
//   City({super.key});

//   @override
//   State<City> createState() => _CityState();
// }

// class _CityState extends State<City> {
//   final selectedCity = <String>[].obs;
//   final List<String> cityList = [
//     'تهران',
//     'مشهد',
//     'قزوین ',
//     'کرج',
//   ];
//   final searchController = TextEditingController();
//   final filteredCity = <String>[].obs;

//   @override
//   void initState() {
//     super.initState();
//     filteredCity.addAll(cityList);
//     searchController.addListener(_filterCity);
//   }

//   @override
//   void dispose() {
//     searchController.dispose();
//     super.dispose();
//   }

//   void _filterCity() {
//     final query = searchController.text.toLowerCase();
//     filteredCity.value =
//         cityList.where((city) => city.toLowerCase().contains(query)).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             const Center(
//               child: Text(
//                 'انتخاب شهر',
//                 style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 22),
//               ),
//             ),
//             const SizedBox(height: 50),
//             Obx(() => selectedCity.isNotEmpty
//                 ?Container()
//                 :
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                   child: Align(
//                     alignment: Alignment.center,
//                     child: Wrap(
//                       direction: Axis.horizontal,
//                       spacing: 5.0,
//                       children: selectedCity
//                           .map((neighborhood) => Text(
//                                 neighborhood,
//                                 style: const TextStyle(
//                                   fontFamily: MAIN_FONT_FAMILY,
//                                   fontSize: 20,
//                                   color: Colors.black,
//                                 ),
//                               ))
//                           .toList(),
//                     ),
//                   ),
//                 )),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
//               child: TextField(
//                 controller: searchController,
//                 textAlign: TextAlign.end,
//                 decoration: InputDecoration(
//                   hintText: 'جستجو در همه شهر ها',
//                   hintStyle: const TextStyle(
//                       fontFamily: 'Iran Sans', fontWeight: FontWeight.w400),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(
//                       color: Color.fromRGBO(23, 102, 175, 1),
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: const BorderSide(
//                       color: Color.fromRGBO(23, 102, 175, 1),
//                     ),
//                   ),
//                   prefixIcon: const Icon(Icons.search),
//                 ),
//               ),
//             ),
//             Obx(() => selectedCity.isEmpty
//                 ? Container()
//                 : Padding(
//                     padding: const EdgeInsets.only(right: 20.0),
//                     child: Align(
//                       alignment: Alignment.centerRight,
//                       child: Wrap(
//                         direction: Axis.horizontal,
//                         spacing: 5.0,
//                         children: selectedCity
//                             .map((city) => Chip(
//                                   deleteIconColor: Colors.red,
//                                   backgroundColor: Colors.white,
//                                   label: Text(
//                                     city,
//                                     style: const TextStyle(
//                                         fontFamily: MAIN_FONT_FAMILY,
//                                         fontSize: 10),
//                                   ),
//                                   onDeleted: () {
//                                     selectedCity.remove(city);
//                                   },
//                                 ))
//                             .toList(),
//                       ),
//                     ),
//                   )),
//             Center(
//               child: Container(
//                 decoration: const BoxDecoration(
//                   color: Color.fromRGBO(99, 99, 99, 1),
//                   borderRadius: BorderRadius.all(Radius.circular(15)),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(0.6),
//                   child: Container(
//                     width: 350,
//                     height: 280,
//                     decoration: const BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(Radius.circular(15)),
//                     ),
//                     child: Obx(() => ListView.builder(
//                           itemCount: filteredCity.length,
//                           itemBuilder: (context, index) {
//                             return Column(
//                               children: [
//                                 _buildCityRow(filteredCity[index]),
//                                 if (index < filteredCity.length - 1)
//                                   _buildDivider(),
//                               ],
//                             );
//                           },
//                         )),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             GestureDetector(
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 10),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     gradient: const LinearGradient(colors: GRADIANT_COLOR),
//                     borderRadius: BorderRadius.circular(50),
//                   ),
//                   child: IconButton(
//                     icon: Padding(
//                       padding: const EdgeInsets.only(top: 5.0),
//                       child: SvgPicture.asset(
//                         'assets/images/tic.svg',
//                         width: 33,
//                         height: 26,
//                       ),
//                     ),
//                     onPressed: () {
//                       Get.back();
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildCityRow(String city) {
//     return Row(
//       children: [
//         Obx(() => SwitchItems(
//               onSelected: (_) {
//                 if (selectedCity.contains(city)) {
//                   selectedCity.remove(city);
//                 } else {
//                   selectedCity.add(city);
//                 }
//               },
//               items: [selectedCity.contains(city) ? "" : ""],
//             )),
//         const SizedBox(width: 240),
//         Text(
//           city,
//           style: const TextStyle(
//             fontFamily: MAIN_FONT_FAMILY,
//             fontSize: 12,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildDivider() {
//     return const Divider(
//       endIndent: 30,
//       indent: 30,
//     );
//   }
// }
