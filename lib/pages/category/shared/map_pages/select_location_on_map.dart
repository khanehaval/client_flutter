import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/widget/Neighbourhood.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class SelectLocationMap extends StatefulWidget {
  LocationInfo? lastLocation;
  Function(LocationInfo) onSelect;

  SelectLocationMap({super.key, required this.onSelect, this.lastLocation});

  @override
  State<SelectLocationMap> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<SelectLocationMap> {
  MapController mapController = MapController();
  double initZoom = 16;
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

  void zoomOut() {
    initZoom = initZoom - 1;
    mapController.move(locationInfo.location, initZoom);
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
                        radius: 100,
                        useRadiusInMeter: true,
                        borderStrokeWidth: 3,
                        borderColor: Colors.blueAccent,
                        color: Colors.white54,
                      )
                    ],
                  )
                : SizedBox.shrink()),
            MarkerLayer(
              markers: [
                Marker(
                    point: locationInfo.location,
                    width: 30,
                    height: 50,
                    child: Obx(() => showLimit.isTrue
                        ? const Icon(
                            Icons.circle,
                            color: Colors.blue,
                          )
                        : Image.asset("assets/images/Group 1279.png"))),
              ],
            ),
          ],
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 10),
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Get.back();
              },
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("محدوده ملک\n را نشان بده",
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 12,
                          color: Color.fromRGBO(48, 48, 48, 1),
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(165, 161, 161, 0.247),
                                blurRadius: 3,
                                offset: Offset(0, 1)),
                          ]),
                      child: Transform.scale(
                        scale: 1.1,
                        child: Obx(
                          () => Switch(
                            onChanged: (_) => showLimit.value = _,
                            value: showLimit.value,
                            activeColor: Colors.white,
                            activeTrackColor:
                                const Color.fromRGBO(54, 216, 89, 1),
                            inactiveThumbColor:
                                const Color.fromRGBO(255, 255, 255, 1),
                            inactiveTrackColor:
                                Color.fromARGB(255, 204, 204, 204),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "انتخاب محله ",
                    style: TextStyle(
                      color: Color.fromRGBO(99, 99, 99, 1),
                      fontSize: 16,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => Neighbourhood(index1: 0,));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 11, 223, 106)),
                          borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                        width: getPageWidthlocation(),
                        height: 40,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Text(
                                  style: const TextStyle(
                                      fontFamily: 'Iran Sans Bold,',
                                      color: Color.fromRGBO(
                                        48,
                                        48,
                                        48,
                                        1,
                                      ),
                                      fontWeight: FontWeight.w400),
                                  locationInfo.locationName,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Row(
                    children: [
                      Text(
                        '*',
                        style: TextStyle(
                            color: Color.fromRGBO(156, 64, 64, 1),
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "انتخاب شهر",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(99, 99, 99, 1)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => City());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromARGB(255, 158, 147, 147)),
                          borderRadius: BorderRadius.circular(10)),
                      child: SizedBox(
                        height: 40,
                        width: getPageWidthlocation(),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Text(
                                  style: const TextStyle(
                                      fontFamily: 'Iran Sans Bold,',
                                      color: Color.fromRGBO(
                                        48,
                                        48,
                                        48,
                                        1,
                                      ),
                                      fontWeight: FontWeight.w400),
                                  locationInfo.cityName,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
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
                            child: Image.asset("assets/images/icon zoom.png"))),
                    const SizedBox(
                      height: 10,
                    ),
                    IconButton(
                        onPressed: () {
                          zoomOut();
                        },
                        icon: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset("assets/images/icon -.png"))),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                        onPressed: () {
                          widget.onSelect(locationInfo);
                          // Get.back();
                        },
                        icon: SizedBox(
                            height: 70,
                            width: 70,
                            child: Image.asset(
                              "assets/images/Ok.png",
                            ))),
                    IconButton(
                        onPressed: () {
                          zoomIn();
                        },
                        icon: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset("assets/images/icon +.png")))
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
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
