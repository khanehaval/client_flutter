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

  MapController mapController = MapController();
  double initZoom = 16;
  final _controller = ItemScrollController();
  final _currentIndex = 0.obs;
  final _subIndex = 0.obs;
  final advertisments = [
    AdvertismentModel(
      location: const LatLng(35.73, 51.40),
      title: "شخصی",
    ),
    AdvertismentModel(
        location: const LatLng(35.74, 51.40),
        title: " ",
        type: AdvertismentType.AMALAK),
    AdvertismentModel(
        location: const LatLng(35.75, 51.41),
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
            SizedBox(
              height: 98,
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
                        alignment: 0.5);
                    _currentIndex.value = i;
                  },
                  child: Obx(
                    () => Container(
                      margin: const EdgeInsets.only(
                          left: 0, right: 10, bottom: 15, top: 45),
                      padding: const EdgeInsets.all(1.2),
                      height: 98,
                      width: 140,
                      decoration: BoxDecoration(
                        gradient: _currentIndex.value == i
                            ? const LinearGradient(colors: GRADIANT_COLOR)
                            : const LinearGradient(
                                colors: BLACK_12_GRADIANT_COLOR),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              titles[i],
                              style: TextStyle(
                                  fontSize: 14,
                                  color: _currentIndex.value == i
                                      ? Colors.black // متن مشکی برای انتخاب شده
                                      : Colors
                                          .grey, // متن طوسی برای انتخاب نشده
                                  fontWeight: _currentIndex.value == i
                                      ? FontWeight
                                          .bold // متن بولد برای انتخاب شده
                                      : FontWeight
                                          .w300, // متن عادی برای انتخاب نشده
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
                reverse: true,
                scrollDirection: Axis.horizontal,
                child: Padding(
                    padding: const EdgeInsets.only(right: 6.0),
                    child: Row(children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(166, 166, 166, 1)),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          height: 40,
                          width: 110,
                          child: Stack(children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: Text(
                                "تعداد اتاق",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Color.fromRGBO(99, 99, 99, 1)),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 30),
                              child: IconButton(
                                icon: SvgPicture.asset(
                                  "assets/images/Vector-20.svg",
                                  color: const Color.fromRGBO(
                                    166,
                                    166,
                                    166,
                                    1,
                                  ),
                                ),
                                onPressed: () {
                                  FocusScope.of(Get.context!).unfocus();
                                },
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
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
                                height: 40,
                                width: _advRepo.filters.isNotEmpty ? 130 : 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    if (_advRepo.filters.isNotEmpty) ...[
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
                                              _advRepo.filters.length
                                                  .toString(),
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
                                        "محله",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: MAIN_FONT_FAMILY,
                                          color: Color.fromRGBO(99, 99, 99, 1),
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: SvgPicture.asset(
                                        "assets/images/Vector-20.svg",
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
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(
                            () => City(),
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
                                height: 40,
                                width: _advRepo.filters.isNotEmpty ? 130 : 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        cityController
                                                .selectedCity.value.isNotEmpty
                                            ? cityController.selectedCity.value
                                            : "انتخاب شهر",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontFamily: MAIN_FONT_FAMILY,
                                          color: Color.fromRGBO(99, 99, 99, 1),
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: SvgPicture.asset(
                                        'assets/images/location1.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 10,
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
                                height: 40,
                                width: _advRepo.filters.isNotEmpty
                                    ? 130
                                    : 100, // تغییر عرض
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.center, // مرکز چیدمان
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                        width: 5,
                      ),
                    ])))
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
