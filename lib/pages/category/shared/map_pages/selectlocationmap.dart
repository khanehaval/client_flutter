import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class SelectLocationMap extends StatefulWidget {
  LocationInfo lastLocation;
  Function(LocationInfo) onSelect;

  SelectLocationMap(
      {super.key, required this.onSelect, required this.lastLocation});

  @override
  State<SelectLocationMap> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<SelectLocationMap> {
  MapController mapController = MapController();
  double initZoom = 16;
  List<LatLng> selectedPins = [];
  String address = "";
  final showLimit = false.obs;

  final cityName = "".obs;
  final locationName = "".obs;

  @override
  void initState() {
    cityName.value = widget.lastLocation.cityName;
    locationName.value = widget.lastLocation.locationName;
  }

  Future getUserCurrentLocation() async {
    final permissionResult = await Geolocator.requestPermission();
    if (permissionResult == LocationPermission.always ||
        permissionResult == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      widget.lastLocation.location =
          LatLng(position.latitude, position.longitude);
      mapController.move(widget.lastLocation.location, initZoom);
      _getLocationInfo();

      setState(() {});
    }
  }

  void zoomOut() {
    initZoom = initZoom - 1;
    mapController.move(widget.lastLocation.location, initZoom);
  }

  void zoomIn() {
    initZoom = initZoom + 1;
    mapController.move(widget.lastLocation.location, initZoom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        FlutterMap(
          mapController: mapController,
          options: MapOptions(
            initialCenter: widget.lastLocation.location,
            initialZoom: initZoom,
            maxZoom: 18,
            keepAlive: true,
            onPositionChanged: (position, hasGesture) {
              widget.lastLocation.location =
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
            onLongPress: (tapPosition, point) async {
              setState(() {
                widget.lastLocation.location =
                    LatLng(point.latitude, point.longitude);
              });
              await _getLocationInfo();
            },
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
            CircleLayer(
              circles: [
                CircleMarker(
                  point: widget.lastLocation.location,
                  radius: 100,
                  useRadiusInMeter: true,
                  color: Colors.green.withOpacity(0.3),
                )
              ],
            ),
            MarkerLayer(
              markers: [
                Marker(
                    point: widget.lastLocation.location,
                    width: 52,
                    height: 67,
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("assets/images/Group 1279.png"))),
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
                    const Text(
                      "محدوده ملک را نشان بده",
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12,
                        color: Color.fromRGBO(99, 99, 99, 1),
                      ),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                    ),
                    Container(
                      child: Transform.scale(
                        scale: 0.80,
                        child: Obx(
                          () => Switch(
                              onChanged: (_) => showLimit.value = _,
                              value: showLimit.value,
                              activeColor: Colors.white,
                              activeTrackColor: Color.fromRGBO(54, 216, 89, 1),
                              inactiveThumbColor: Color.fromRGBO(11, 8, 8, 0.2),
                              inactiveTrackColor:
                                  Color.fromRGBO(255, 255, 255, 1)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "انتخاب محله ",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 40,
                      child: Center(
                        child: Obx(
                          () => Text(
                            locationName.value,
                            textAlign: TextAlign.center,
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
                  const Text(
                    "*انتخاب شهر",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Center(
                        child: Obx(() => Text(
                              cityName.value,
                              textAlign: TextAlign.center,
                            )),
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () async {
                          getUserCurrentLocation();
                          // if (getUserCurrentLocation != null) {
                          //   mapController.move(
                          //       LatLng(currentCenter.latitude,
                          //           currentCenter.longitude),
                          //       17);
                          // }
                        },
                        icon: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset("assets/images/icon zoom.png"))),
                    IconButton(
                        onPressed: () {
                          widget.onSelect(LocationInfo(
                              location: widget.lastLocation.location,
                              cityName: cityName.value,
                              locationName: locationName.value));
                          Get.back();
                        },
                        icon: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              "assets/images/Ok.png",
                            )))
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          zoomOut();
                        },
                        icon: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset("assets/images/icon -.png"))),
                    IconButton(
                        onPressed: () {
                          zoomIn();
                        },
                        icon: SizedBox(
                            width: 50,
                            height: 50,
                            child: Image.asset("assets/images/icon +.png")))
                  ],
                )
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
          "https://api.neshan.org/v5/reverse?lat=${widget.lastLocation.location.latitude}&lng=${widget.lastLocation.location.longitude}",
          options: Options(headers: {
            "Api-Key": "service.c70494317e644c12a395c53e83f440d8"
          }));
      cityName.value = result.data["city"] as String;
      locationName.value = result.data["neighbourhood"] as String;
      if (locationName.isEmpty) {
        locationName.value = result.data["place"];
      }
      if (locationName.isEmpty) {
        locationName.value = result.data["route_name"];
      }
    } catch (_) {
      Fluttertoast.showToast(
          msg:
              "خطا در ارزیابی آدرس، دوباره تلاش کنید، اینترنت خود را بررسی کنید");
    }
  }
}
