import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/map/adv_map.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class Advertisements extends StatefulWidget {
  @override
  State<Advertisements> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<Advertisements> {
  MapController mapController = MapController();
  double initZoom = 16;

  final advertisments = [
    AdvertismentModel(
      location: LatLng(35.73, 51.40),
      title: "شخصی",
    ),
    AdvertismentModel(
        location: LatLng(35.74, 51.40),
        title: "    املاک صادقی",
        type: AdvertismentType.AMALAK),
    AdvertismentModel(
        location: LatLng(35.75, 51.41),
        title: "مشاور",
        type: AdvertismentType.REAL_ESTATE)
  ].obs;

  List<LatLng> selectedPins = [];

  @override
  void initState() {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   showModalBottomSheet(
    //       elevation: 0.5,
    //       context: Get.context!,
    //       builder: (c) {
    //         return DraggableScrollableSheet(
    //           initialChildSize: 0.1,
    //           expand: true,
    //           snap: false,
    //           maxChildSize: 0.3,
    //           controller: DraggableScrollableController(),
    //           minChildSize: 0.1,
    //           builder: (c, controller) {
    //             return Column(
    //               children: [
    //                 Container(
    //                     decoration: const BoxDecoration(
    //                         color: Colors.white,
    //                         borderRadius: BorderRadius.only(
    //                             topLeft: Radius.circular(20),
    //                             topRight: Radius.circular(20))),
    //                     child: const Column(
    //                       mainAxisSize: MainAxisSize.min,
    //                       children: [
    //                         SizedBox(
    //                           width: 60,
    //                           child: Divider(),
    //                         ),
    //                         Text(
    //                             "خرید و فروش، رهن و اجاره انواع املاک در تهران"),
    //                       ],
    //                     ))
    //               ],
    //             );
    //           },
    //         );
    //       });
    // });
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
          SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: SizedBox(
                      height: 40,
                      width: 100,
                      child: Stack(children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 50, top: 10),
                          child: Text(
                            "آگهی ها",
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
                            icon:
                                SvgPicture.asset("assets/images/Vector-20.svg"),
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
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: SizedBox(
                          height: 40,
                          width: getPageWidth(),
                          child: Center(
                            child: Stack(children: [
                              const Padding(
                                padding: EdgeInsets.only(right: 3),
                                child: Text(
                                  "",
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
                      SvgPicture.asset(
                        'assets/images/Map and list.svg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 40,
                    width: 140,
                    child: Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 50, top: 10),
                        child: Text(
                          "محدوده قیمت",
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 40,
                    width: 110,
                    child: Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 50, top: 10),
                        child: Text(
                          "نوع ملک",
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
                          icon: SvgPicture.asset("assets/images/Vector-20.svg"),
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
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 40,
                    width: 110,
                    child: Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 50, top: 10),
                        child: Text(
                          " املاک",
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
              ],
            ),
          ),
        ],
      ),
    ]));
  }
}
