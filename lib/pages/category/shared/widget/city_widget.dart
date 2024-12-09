import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switch_onr_item.dart';
import 'package:flutter_application_1/pages/category/shared/widget/taeed_enseraf_filters.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman_Get/city_id.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class CityWidget extends StatefulWidget {
  final Rx<String> selectedCity;

  CityWidget(this.selectedCity);

  @override
  _CityState createState() => _CityState();
}

class _CityState extends State<CityWidget> {
  final advertisementService = AdvertisementService();
  final searchController = TextEditingController();
  final filteredCity = <Item>[].obs;
  final allCities = <Item>[].obs;
  late Future<List<Item>> citiesFuture;
  SaleApartemanServerModel saleApartemanServerModel =
      SaleApartemanServerModel();
  LocationInfo locationInfo = LocationInfo(
    location: const LatLng(0.0, 0.0),
    cityName: "",
    locationName: "",
    formatted_address: "",
  );

  @override
  void initState() {
    super.initState();
    citiesFuture = fetchCities();
    searchController.addListener(_filterCity);
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  Future<List<Item>> fetchCities() async {
    try {
      final response = await advertisementService.fetchCityFromServer();

      if (response != null &&
          response.status == true &&
          response.data != null &&
          response.data!.list != null) {
        final cityList = response.data!.list!;
        allCities.value = cityList;
        filteredCity.value = cityList;
        return cityList;
      }

      return [];
    } catch (e) {
      return [];
    }
  }

  void _filterCity() {
    final query = searchController.text.toLowerCase();
    filteredCity.value = allCities
        .where((city) => city.name!.toLowerCase().contains(query))
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
              'انتخاب شهر',
              style: TextStyle(fontFamily: 'MAIN_FONT_FAMILY', fontSize: 22),
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
                child: FutureBuilder<List<Item>>(
                  future: citiesFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return const Center(child: Text('No cities available.'));
                    }

                    return Obx(() {
                      return ListView.builder(
                        itemCount: filteredCity.length,
                        itemBuilder: (context, index) {
                          return cityRow(filteredCity[index]);
                        },
                      );
                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          FiltersTaeedEnseraf(
            onTaeed: () {
              Get.back();
              if (widget.selectedCity.value.isNotEmpty) {
                final selectedCityItem = filteredCity.value.firstWhere(
                  (item) => item.name == widget.selectedCity.value,
                  orElse: () => Item(),
                );
                saleApartemanServerModel.cityId = selectedCityItem.id!;
                if (selectedCityItem.location != null &&
                    selectedCityItem.location!.length == 2) {
                  final latLng = LatLng(selectedCityItem.location![0],
                      selectedCityItem.location![1]);
                }
              }
            },
          ),
        ],
      ),
    );
  }

  Widget cityRow(Item city) {
    return GestureDetector(
      onTap: () {
        widget.selectedCity.value = city.name!;
        saleApartemanServerModel.cityId = city.id!;
      },
      child: Obx(() => Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                ),
              ),
              child: SwitchItem(
                isSelected: widget.selectedCity.value == city.name,
                item: city.name!,
                onTap: () {
                  widget.selectedCity.value = city.name!;
                  saleApartemanServerModel.cityId = city.id!;
                },
              ),
            ),
          )),
    );
  }
}
