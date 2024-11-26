import 'package:flutter/material.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/models/filterModel.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'city_controller.dart';
import 'switch_onr_item.dart';
import 'taeed_enseraf_filters.dart';

class City extends StatefulWidget {
  final Rx<String> selectedCity; // متغیر برای نگهداری city انتخاب شده

  City(this.selectedCity);

  @override
  _CityState createState() => _CityState();
}

Map<String, AdvretismentFilter> CityFilter = Map();
final _advRepo = GetIt.I.get<AdvRepo>();

List<AdvretismentFilter> _CityFilter = [];

class _CityState extends State<City> {
  final cityController = Get.put(CityController());
  final advertisementService = AdvertisementService();
  final searchController = TextEditingController();
  final filteredCity = <String>[].obs;
  late Future<List<String>> citiesFuture;
  final selectedCity = Rx<String>('');

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

  Future<List<String>> fetchCities() async {
    try {
      final response = await advertisementService.fetchCityFromServer();

      if (response != null &&
          response.status == true &&
          response.data != null) {
        List<String> cityList = [];

        // بررسی null بودن و دسترسی به لیست در داده‌ها
        if (response.data?.list != null) {
          for (var item in response.data!.list!) {
            // دسترسی به list داخل Data
            cityList.add(item.name ?? ''); // اضافه کردن نام شهر به لیست
          }
        }

        // برگشت لیست نهایی از نام شهرها
        return cityList;
      }

      // در صورت نادرست بودن پاسخ یا عدم وجود داده‌ها، لیستی خالی برگشت داده می‌شود
      return [];
    } catch (e) {
      // چاپ خطا در صورت بروز مشکل
      print("Error fetching cities: $e");
      return [];
    }
  }

  // Filter cities based on search query
  void _filterCity() {
    final query = searchController.text.toLowerCase();
    filteredCity.value = filteredCity
        .where((city) => city.toLowerCase().contains(query))
        .toList();
  }

  void addFilters(List<AdvretismentFilter> filter) {
    for (var f in filter) {
      CityFilter[f.key()] = f;
    }
  }

  void removeFilters(List<AdvretismentFilter> filter) {
    for (var f in filter) {
      CityFilter.remove(f.key());
    }
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
                child: FutureBuilder<List<String>>(
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
                    filteredCity.value = snapshot.data!;

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
              if (cityController.selectedCity.isNotEmpty) {
                _advRepo.filters[cityController.selectedCity.value];
              }
            },
          ),
        ],
      ),
    );
  }

  Widget cityRow(String city) {
    return GestureDetector(
      onTap: () {
        // به‌روزرسانی selectedCity
        widget.selectedCity.value = city; // اگر از متغیر `Rx` استفاده می‌کنید
        Get.back(); // برگشت به صفحه قبلی
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
                isSelected: widget.selectedCity.value == city,
                item: city,
                onTap: () {
                  widget.selectedCity.value = city; // انتخاب شهر
                },
              ),
            ),
          )),
    );
  }
}
