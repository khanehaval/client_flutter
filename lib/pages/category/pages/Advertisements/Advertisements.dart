import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/shared.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/Forosh_tejari/Forosh_tejari_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/amlak_display.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejar_filter/EjaraFilter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/ejara_tejari/Ejara_tejari_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/forosh_filter/ForoshFilter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/kota_modat/kota_modat_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/sakht_va_saz/sakht_va_saz_filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/map/adv_map.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class Advertisements extends StatefulWidget {
  int get index => 0;

  @override
  State<Advertisements> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<Advertisements> {
  MapController mapController = MapController();
  double initZoom = 16;
  final _controller = ItemScrollController();

  final _currentIndex = 0.obs;
  final _subIndex = 0.obs;
  final _subFilterType = SubFilterType.None.obs;
  final advertisments = [
    AdvertismentModel(
      location: const LatLng(35.73, 51.40),
      title: "شخصی",
    ),
    AdvertismentModel(
        location: const LatLng(35.74, 51.40),
        title: "    املاک صادقی",
        type: AdvertismentType.AMALAK),
    AdvertismentModel(
        location: const LatLng(35.75, 51.41),
        title: "مشاور",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      AdvMap(advertisments),
      const Align(
        alignment: Alignment.topRight,
      ),
      Column(
        children: [
          SizedBox(
            height: 100,
            child: Obx(
              () => _currentIndex.value == 0
                  ? ScrollablePositionedList.builder(
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
                                left: 10, right: 10, bottom: 11, top: 40),
                            padding: const EdgeInsets.all(1),
                            height: 98,
                            width: 130,
                            decoration: BoxDecoration(
                              gradient: _currentIndex.value == i
                                  ? const LinearGradient(
                                      colors: GRADIANT_COLOR,
                                    )
                                  : const LinearGradient(
                                      colors: BLACK_12_GRADIANT_COLOR,
                                    ),
                              borderRadius: BorderRadius.circular(20),
                              // border:
                              //     Border.all(width: _currentIndex.value == i ? 1 : 1),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 12),
                                child: Image.asset(
                                  items[i].assetPath,
                                  width: 35,
                                  height: 35,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: ScrollablePositionedList.builder(
                          reverse: true,
                          itemScrollController: _controller,
                          itemCount:
                              items[_currentIndex.value].subItems.length + 2,
                          scrollDirection: Axis.horizontal,
                          initialScrollIndex: widget.index,
                          itemBuilder: (context, i) {
                            if (i == 0) {
                              return GestureDetector(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                        left: 5,
                                        right: 5,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 1),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Text("املاک"),
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios_rounded)
                                  ],
                                ),
                                onTap: () {
                                  _currentIndex.value = 0;
                                },
                              );
                            }
                            if (i == 1) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Icon(Icons.arrow_back_ios),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      left: 0,
                                      right: 1,
                                    ),
                                    padding: const EdgeInsets.all(0.7),
                                    width: 130,
                                    decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: GRADIANT_COLOR,
                                      ),
                                      border: Border.all(width: 0.5),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(
                                        items[_currentIndex.value].assetPath,
                                        width: 51,
                                        height: 51,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                              return GestureDetector(
                                onTap: () {
                                  _subIndex.value = i;
                                  _subFilterType.value =
                                      items[_currentIndex.value]
                                          .subItems[i - 2]
                                          .type;
                                },
                                child: Obx(
                                  () => Container(
                                    margin: const EdgeInsets.only(
                                      left: 3,
                                      right: 3,
                                    ),
                                    padding: const EdgeInsets.all(.7),
                                    width: 85,
                                    decoration: BoxDecoration(
                                      gradient: _subIndex.value == i
                                          ? const LinearGradient(
                                              colors: GRADIANT_COLOR,
                                            )
                                          : const LinearGradient(
                                              colors: BLACK_12_GRADIANT_COLOR,
                                            ),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          width: _currentIndex.value ==
                                                  _currentIndex.value
                                              ? 0.5
                                              : 0.5),
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          items[_currentIndex.value]
                                              .subItems[i - 2]
                                              .title,
                                          style: const TextStyle(
                                              fontFamily: MAIN_FONT_FAMILY,
                                              fontSize: 8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                          }),
                    ),
            ),
          ),
          SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
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
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 1)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 60, top: 10),
                        child: Text(
                          "محله",
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
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 1)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 40,
                    width: getPageWidth(),
                    child: Center(
                      child: Stack(children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Text(
                            "تهران",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                color: Color.fromRGBO(99, 99, 99, 1),
                                fontSize: 12),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 50),
                          child: SvgPicture.asset(
                            'assets/images/location1.svg',
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 1)),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 30, top: 10),
                        child: Text(
                          "فیلتر",
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
                        padding: const EdgeInsets.only(left: 60),
                        child: IconButton(
                          icon: SvgPicture.asset("assets/images/filter.svg"),
                          onPressed: () {
                            Get.to(
                                () => Filter(
                                      index: 0,
                                    ),
                                transition: Transition.leftToRight);
                          },
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
    ]));
  }

  var items = [
    FilterModel(
        title: "املاک",
        assetPath: 'assets/images/Property 1=House.png',
        subItems: []),
    FilterModel(
      title: "اجاره مسکونی",
      assetPath: 'assets/images/Property 2=Maskoni.png',
      subItems: [],
    ),
    FilterModel(
      title: "فروش مسکونی",
      assetPath: 'assets/images/Property 3=Maskoni.png',
      subItems: [],
    ),
    FilterModel(
        title: "فروش تجاری واداری",
        assetPath: 'assets/images/forosh_tejari_filter1.png',
        subItems: []),
    FilterModel(
        title: "اجاره تجاری اداری",
        assetPath: 'assets/images/ejara_tejari_filter.png',
        subItems: []),
    FilterModel(
        title: "اجاره کوتاه مدت",
        assetPath: 'assets/images/kotamodat_filter.png',
        subItems: []),
    FilterModel(
        title: "ساخت وساز",
        assetPath: 'assets/images/SakhtvasazFilter.png',
        subItems: []),
  ];
}
