import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/map/adv_map.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/widget/Neighbourhood.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_controller.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_widget.dart';
import 'package:flutter_application_1/repo/advRepo.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:latlong2/latlong.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Advertisements extends StatefulWidget {
  int get index => 0;
  int get index1 => 0;

  @override
  State<Advertisements> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<Advertisements> {
  final _advRepo = GetIt.I.get<AdvRepo>();
  final cityController = Get.put(CityController()); // پیدا کردن کنترلر
  final neighborhoodController =
      Get.put(NeighborhoodController()); // پیدا کردن کنترلر
  final Rx<int> selectedNeighborhoodCount = 0.obs;

  MapController mapController = MapController();
  double initZoom = 14;
  final _controller = ItemScrollController();
  final _currentIndex = 0.obs;
  final _subIndex = 0.obs;
  final advertisments = [
    AdvertismentModel(
      location: const LatLng(35.73, 51.40),
      title: "12 میلیارد",
    ),
    AdvertismentModel(
      location: const LatLng(35.69, 51.44),
      title: "12 میلیارد",
    ),
    AdvertismentModel(
      location: const LatLng(35.69, 51.42),
      title: "12 میلیارد",
    ),
    AdvertismentModel(
      location: const LatLng(35.69, 51.50),
      title: "12 میلیارد",
    ),
    AdvertismentModel(
      location: const LatLng(35.69, 51.34),
      title: "12 میلیارد",
    ),
    AdvertismentModel(
      location: const LatLng(35.73, 51.40),
      title: "12 میلیارد",
    ),
    AdvertismentModel(
        location: const LatLng(35.69, 51.38),
        title: " ",
        type: AdvertismentType.AMALAK),
    AdvertismentModel(
        location: const LatLng(35.69, 51.39),
        title: "",
        type: AdvertismentType.REAL_ESTATE),
    AdvertismentModel(
        location: const LatLng(35.72, 51.40),
        title: "",
        type: AdvertismentType.REAL_ESTATE),
    AdvertismentModel(
        location: const LatLng(35.72, 52.40),
        title: "",
        type: AdvertismentType.REAL_ESTATE)
  ].obs;
  List<LatLng> selectedPins = [];
  @override
  void initState() {
    _currentIndex.value = widget.index;
    _currentIndex.listen((p0) {
      if (p0 == 0) {
        _subIndex.value = 0;
      }
    });
    super.initState();
  }

  final List<String> titles = [
    "املاک",
    "فروش مسکونی",
    "اجاره مسکونی",
    "فروش تجاری اداری",
    "اجاره تجاری اداری",
    "اجاره کوتاه مدت",
    "ساخت و ساز",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        AdvMap(advertisments, advertisments),
        const Align(
          alignment: Alignment.topRight,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 7),
              child: SizedBox(
                height: 95,
                child: ScrollablePositionedList.builder(
                  reverse: true,
                  itemScrollController: _controller,
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  initialScrollIndex: widget.index,
                  itemBuilder: (context, i) => GestureDetector(
                    onTap: () {
                      _controller.scrollTo(
                        index: i,
                        duration: const Duration(microseconds: 100),
                        opacityAnimationWeights: [10, 30, 10],
                        alignment: 0.5,
                      );
                      _currentIndex.value = i;
                    },
                    child: Obx(
                      () => Container(
                        margin: const EdgeInsets.only(
                            left: 0, right: 7, bottom: 15, top: 45),
                        padding: const EdgeInsets.all(1.2),
                        height: 98,
                        width: titles[i] == "املاک"
                            ? 80
                            : 140, // عرض املاک برابر 60
                        decoration: BoxDecoration(
                          gradient: _currentIndex.value == i
                              ? const LinearGradient(colors: GRADIANT_COLOR)
                              : const LinearGradient(
                                  colors: BLACK_12_GRADIANT_COLOR),
                          borderRadius: BorderRadius.circular(11),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.5),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  items[i].title, // Display the title text
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: _currentIndex.value == i
                                        ? MAIN_FONT_FAMILY_MEDIUM // فونت برای انتخاب شده
                                        : MAIN_FONT_FAMILY_LIGHT, // فونت برای غیر انتخاب شده
                                    fontSize: 12, // Set text size
                                    color: _currentIndex.value == i
                                        ? Colors.black
                                        : Colors
                                            .grey, // Change text color based on selection
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 6),
              child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromRGBO(166, 166, 166, 1)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const SizedBox(
                        height: 32,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(children: [
                              Text(
                                "تعداد اتاق",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  color: Color.fromRGBO(166, 166, 166, 1),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(166, 166, 166, 1)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const SizedBox(
                        height: 32,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(children: [
                              Text(
                                "محدوده متراژ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  color: Color.fromRGBO(166, 166, 166, 1),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(166, 166, 166, 1)),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const SizedBox(
                        height: 32,
                        width: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(children: [
                              Text(
                                "محدوده قیمت",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  color: Color.fromRGBO(166, 166, 166, 1),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                            ]),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => Neighbourhood(),
                            transition: Transition.leftToRight);
                      },
                      child: Obx(() => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color.fromRGBO(166, 166, 166, 1),
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: 32,
                              width: _advRepo.filters.isNotEmpty ? 130 : 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if (_advRepo.filters1.isNotEmpty) ...[
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                        ),
                                        child: Center(
                                          child: Text(
                                            _advRepo.filters1.length.toString(),
                                            style: const TextStyle(
                                              fontFamily:
                                                  MAIN_FONT_FAMILY_MEDIUM,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  const Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      "انتخاب محله",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                        color: const Color.fromRGBO(
                                            166, 166, 166, 1),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Obx(() => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(166, 166, 166, 1)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: 32,
                              width: _advRepo.filters.isNotEmpty ? 130 : 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Text(
                                      cityController
                                              .selectedCity.value.isNotEmpty
                                          ? cityController.selectedCity.value
                                          : "انتخاب شهر",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                        color: const Color.fromRGBO(
                                            166, 166, 166, 1),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: SvgPicture.asset(
                                      'assets/images/location1.svg',
                                      width: 15,
                                      height: 15,
                                      color: const Color.fromRGBO(
                                          166, 166, 166, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          () => Filter(index: 0),
                          transition: Transition.leftToRight,
                        );
                      },
                      child: Obx(() => Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(166, 166, 166, 1)),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SizedBox(
                              height: 32,
                              width: _advRepo.filters.isNotEmpty
                                  ? 130
                                  : 100, // تغییر عرض
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center, // مرکز چیدمان
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    // دایره تنها زمانی نمایش داده می‌شود که فیلترها وجود داشته باشند
                                    if (_advRepo.filters.isNotEmpty) ...[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Container(
                                          width: 25,
                                          decoration: const BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Text(
                                              _advRepo.filters.keys.length
                                                  .toString(),
                                              style: const TextStyle(
                                                  fontFamily:
                                                      MAIN_FONT_FAMILY_MEDIUM,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                    // متن فیلتر (همیشه نمایش داده می‌شود)
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 8.0), // فضای بین دایره و متن
                                      child: Text(
                                        "فیلتر",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: MAIN_FONT_FAMILY,
                                            color:
                                                Color.fromRGBO(99, 99, 99, 1),
                                            fontSize: 12),
                                      ),
                                    ),
                                    // آیکن فیلتر (همیشه نمایش داده می‌شود)
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: SvgPicture.asset(
                                        "assets/images/filter.svg",
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ]),
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                  ])),
            )
          ],
        ),
      ]),
    );
  }

  var items = [
    FilterModel(title: "املاک", subItems: []),
    FilterModel(
      title: "اجاره مسکونی",
      subItems: [],
    ),
    FilterModel(
      title: "فروش مسکونی",
      subItems: [],
    ),
    FilterModel(title: "فروش تجاری واداری", subItems: []),
    FilterModel(title: "اجاره تجاری اداری", subItems: []),
    FilterModel(title: "اجاره کوتاه مدت", subItems: []),
    FilterModel(title: "ساخت وساز", subItems: []),
  ];
}

class FilterModel {
  String title;
  List<SubItemModel> subItems;
  FilterModel({required this.title, required this.subItems});
}

class SubItemModel {
  SubFilterType type;
  String title;

  SubItemModel(this.title, this.type);
}

class AdvController extends GetxController {
  var selectedCity = ''.obs; // شهر انتخاب‌شده به صورت واکنش‌گرا
  var selectedCityCount = 0.obs; // تعداد شهرهای انتخاب‌شده

  void updateSelectedCity(String city) {
    selectedCity.value = city;
    selectedCityCount.value =
        city.length; // به‌روز رسانی تعداد شهرهای انتخاب‌شده
  }
}
