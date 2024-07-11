import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';

class Neighbourhood extends StatefulWidget {
  Neighbourhood({super.key});

  @override
  _NeighbourhoodState createState() => _NeighbourhoodState();
}

class _NeighbourhoodState extends State<Neighbourhood> {
  var selectedNeighborhoods = <String>[].obs;
  final List<String> neighborhoods = [
    'شهران',
    'محله 1',
    'محله 2',
    'محله 3',
  ];
  final searchController = TextEditingController();
  final filteredNeighborhoods = <String>[].obs;

  final _advRepo = GetIt.I.get<AdvRepo>();

  @override
  void initState() {
    selectedNeighborhoods.addAll(_advRepo.selectedCity);
    super.initState();
    filteredNeighborhoods.addAll(neighborhoods);
    searchController.addListener(_filterNeighborhoods);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _filterNeighborhoods() {
    final query = searchController.text.toLowerCase();
    filteredNeighborhoods.value = neighborhoods
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
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text(
                'انتخاب محله',
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 22),
              ),
            ),
            const SizedBox(height: 20),
            SvgPicture.asset(
              'assets/images/city.svg',
              semanticsLabel: 'City Illustration',
            ),
            const SizedBox(height: 10),
            Obx(() => selectedNeighborhoods.isEmpty
                ? Container()
                : Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 5.0,
                        children: selectedNeighborhoods
                            .map((neighborhood) => Chip(
                                  deleteIconColor: Colors.red,
                                  backgroundColor: Colors.white,
                                  label: Text(
                                    neighborhood,
                                    style: const TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY,
                                        fontSize: 10),
                                  ),
                                  onDeleted: () {
                                    selectedNeighborhoods.remove(neighborhood);
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
                    width: 346,
                    height: 280,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Obx(() => ListView.builder(
                          itemCount: filteredNeighborhoods.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                _buildNeighborhoodRow(
                                    filteredNeighborhoods[index]),
                                if (index < filteredNeighborhoods.length - 1)
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
                      _advRepo.mangeCity(selectedNeighborhoods);
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

  Widget _buildNeighborhoodRow(String neighborhood) {
    return SwitchItem(
      IsSelected: selectedNeighborhoods.contains(neighborhood),
      onSelected: (_) {
        if (selectedNeighborhoods.contains(neighborhood)) {
          selectedNeighborhoods.remove(neighborhood);
        } else {
          selectedNeighborhoods.add(neighborhood);
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
