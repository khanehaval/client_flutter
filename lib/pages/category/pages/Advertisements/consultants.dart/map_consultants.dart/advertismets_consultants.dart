import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_consultants.dart/advertismets_axans.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_consultants.dart/mapconsultants_.dart';
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

class AdvertismetsConsultants extends StatefulWidget {
  int get index => 0;
  int get index1 => 0;

  @override
  State<AdvertismetsConsultants> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<AdvertismetsConsultants> {
  final _advRepo = GetIt.I.get<AdvRepo>();
  MapController mapController = MapController();
  final cityController = Get.put(CityController()); // پیدا کردن کنترلر

  double initZoom = 16;
  final _controller = ItemScrollController();
  final _currentIndex = 0.obs;
  final _subIndex = 0.obs;
  final advertisments = [
    AdvertismentModel(
        location: const LatLng(35.73, 51.40),
        title: "",
        type: AdvertismentType.REAL_ESTATE),
    AdvertismentModel(
        location: const LatLng(35.74, 51.40),
        title: " ",
        type: AdvertismentType.REAL_ESTATE),
    AdvertismentModel(
        location: const LatLng(35.75, 51.41),
        title: "",
        type: AdvertismentType.REAL_ESTATE)
  ].obs;
  List<LatLng> selectedPins = [];
  @override
  @override
  void initState() {
    super.initState();
    _currentIndex.value = 1; // مقدار پیش‌فرض را به 1 تغییر دهید
    _currentIndex.listen((p0) {
      if (p0 == 0) {
        _subIndex.value = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          MapConsultants(advertisments, advertisments),
          const Align(
            alignment: Alignment.topRight,
          ),
          Column(
            children: [
              SizedBox(
                  height: 95,
                  child: ScrollablePositionedList.builder(
                    reverse: true,
                    itemScrollController: _controller,
                    itemCount: items
                        .length, // تعداد آیتم‌ها را بر اساس تعداد items تنظیم کنید
                    scrollDirection: Axis.horizontal,
                    initialScrollIndex: widget.index,
                    itemBuilder: (context, i) => GestureDetector(
                      onTap: () {
                        if (i == 0) {
                          // اگر "آژانس املاک" انتخاب شد
                          Get.to(
                            () => AdvertismetsAxans(),
                            transition:
                                Transition.noTransition, // غیرفعال کردن انیمیشن
                          );
                        } else {
                          _controller.scrollTo(
                            index: i,
                            duration: const Duration(milliseconds: 100),
                            opacityAnimationWeights: [10, 30, 10],
                            alignment: 0.5,
                          );
                          _currentIndex.value =
                              i; // بروزرسانی ایندکس انتخاب شده
                        }
                      },
                      child: Obx(() => Container(
                            margin: const EdgeInsets.only(
                                left: 0, right: 10, bottom: 10, top: 50),
                            padding: const EdgeInsets.all(
                                1.2), // Padding for the outer gradient border
                            height: 95,
                            width: 115,
                            decoration: BoxDecoration(
                              gradient: _currentIndex.value == i
                                  ? const LinearGradient(colors: GRADIANT_COLOR)
                                  : const LinearGradient(
                                      colors: BLACK_12_GRADIANT_COLOR),
                              borderRadius: BorderRadius.circular(
                                  10), // Rounded corners for the outer container
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color:
                                    Colors.white, // Color inside the container
                                borderRadius: BorderRadius.circular(
                                    10), // Rounded corners for the inner container
                              ),
                              child: Center(
                                child: Text(
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
                              ),
                            ),
                          )),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 3),
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
                                  "نوع تخصص",
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
                                  "امتیاز",
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
                                              _advRepo.filters1.length
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
                                        "محدوده فعالیت",
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
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
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
                        width: 7,
                      ),
                    ])),
              )
            ],
          ),
        ]));
  }

  var items = [
    FilterModel(
      title: "آژانس املاک",
      assetPath: 'assets/images/axans_amlak_story.png',
      subItems: [],
    ),
    FilterModel(
        title: "مشاور املاک",
        assetPath: 'assets/images/moshaveramlak_icon.png',
        subItems: []),
    FilterModel(
      title: "مشاور و آژانس",
      assetPath: 'assets/images/moshaver_axans.png',
      subItems: [],
    ),
  ];
}

class FilterModel {
  final String title;
  final String assetPath;
  final List subItems;

  FilterModel({
    required this.title,
    required this.assetPath,
    required this.subItems,
  });
}
