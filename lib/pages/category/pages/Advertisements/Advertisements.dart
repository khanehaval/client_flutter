import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/number_piacker.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_rating_stars/generated/assets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class Advertisements extends StatefulWidget {
  LocationInfo? lastLocation;
  Function(LocationInfo) onSelect;

  Advertisements({super.key, required this.onSelect, this.lastLocation});

  @override
  State<Advertisements> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<Advertisements> {
  MapController mapController = MapController();
  double initZoom = 16;
  final _buildFloorController = TextEditingController();

  List<LatLng> selectedPins = [];
  String address = "";
  final showLimit = false.obs;

  var locationInfo = LocationInfo(
      location: LatLng(35.699287, 51.338028),
      cityName: "تهران",
      locationName: "آزادی",
      formatted_address: '');

  @override
  void initState() {
    if (widget.lastLocation != null) {
      locationInfo = widget.lastLocation!;
    }
    super.initState();
  }

  Future getUserCurrentLocation() async {
    final permissionResult = await Geolocator.requestPermission();
    if (permissionResult == LocationPermission.always ||
        permissionResult == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      locationInfo.location = LatLng(position.latitude, position.longitude);
      mapController.move(locationInfo.location, initZoom);
      _getLocationInfo();
      setState(() {});
    }
  }

  void zoomIn() {
    initZoom = initZoom + 1;
    mapController.move(locationInfo.location, initZoom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      FlutterMap(
        mapController: mapController,
        options: MapOptions(
          initialCenter: locationInfo.location,
          initialZoom: initZoom,
          maxZoom: 18,
          keepAlive: true,
          onPositionChanged: (position, hasGesture) {
            locationInfo.location =
                LatLng(position.center!.latitude, position.center!.longitude);
          },
          interactionOptions: const InteractionOptions(
              enableMultiFingerGestureRace: true, enableScrollWheel: true),
          onTap: (tapPosition, point) {
            Fluttertoast.showToast(
                msg: "برای انتخاب محدوده پیوسته فشار دهید",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          },
          onLongPress: (tapPosition, point) {
            locationInfo.location = LatLng(point.latitude, point.longitude);
            _getLocationInfo();
          },
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          Obx(() => showLimit.value
              ? CircleLayer(
                  circles: [
                    CircleMarker(
                      point: locationInfo.location,
                      radius: 150,
                      useRadiusInMeter: true,
                      borderStrokeWidth: 3,
                      borderColor: Colors.blueAccent,
                      color: Colors.white54,
                    )
                  ],
                )
              : SizedBox.shrink()),
        ],
      ),
      const Align(
        alignment: Alignment.topRight,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 140, top: 5),
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
                          Padding(
                            padding: const EdgeInsets.only(right: 3),
                            child: Text(
                              locationInfo.cityName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
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
      Padding(
        padding: const EdgeInsets.only(
          top: 55,
        ),
        child: SingleChildScrollView(
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
      ),
      Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              getUserCurrentLocation();
                            },
                            icon: SizedBox(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                    "assets/images/icon zoom.png"))),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 100,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20)),
                                child: const SizedBox(
                                    height: 40,
                                    width: 260,
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Text(
                                            "خرید و فروش، رهن و اجاره انواع املاک در تهران",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 10,
                                                fontFamily: MAIN_FONT_FAMILY,
                                                color: Color.fromRGBO(
                                                    48, 48, 48, 1)),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])
                  ])))
    ]));
  }

  Future<void> _getLocationInfo() async {
    try {
      final result = await Dio().get(
          "https://api.neshan.org/v5/reverse?lat=${locationInfo.location.latitude}&lng=${locationInfo.location.longitude}",
          options: Options(headers: {
            "Api-Key": "service.c70494317e644c12a395c53e83f440d8"
          }));
      locationInfo.cityName = result.data["city"] as String;
      locationInfo.locationName = result.data["neighbourhood"] as String;
      if (locationInfo.locationName.isEmpty) {
        locationInfo.locationName = result.data["place"];
      }
      if (locationInfo.locationName.isEmpty) {
        locationInfo.locationName = result.data["route_name"];
      }
      locationInfo.formatted_address =
          result.data["formatted_address"] as String;
      if (locationInfo.formatted_address.isEmpty) {
        locationInfo.locationName = result.data["formatted_address"];
      }
      setState(() {});
    } catch (_) {
      Fluttertoast.showToast(
          msg:
              "خطا در ارزیابی آدرس، دوباره تلاش کنید، اینترنت خود را بررسی کنید");
    }
  }
}
