import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/filter.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/map/adv_map.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
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
              child: Obx(() => _currentIndex.value == 0
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
                  : const SizedBox.shrink())),
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
                    borderRadius: BorderRadius.circular(10),
                  ),
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
