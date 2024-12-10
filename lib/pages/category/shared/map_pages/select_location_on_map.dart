import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/widget/Neighbourhood.dart';
import 'package:flutter_application_1/pages/category/shared/widget/city_widget.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

const double INITIAL_ZOOM = 16;
const String API_KEY = "service.c70494317e644c12a395c53e83f440d8";
const String API_URL = "https://api.neshan.org/v5/reverse";

class SelectLocationMap extends StatefulWidget {
  final LocationInfo? lastLocation;
  final Function(LocationInfo) onSelect;

  const SelectLocationMap(
      {super.key, required this.onSelect, this.lastLocation});

  @override
  State<SelectLocationMap> createState() => _SelectLocationMapState();
}

class _SelectLocationMapState extends State<SelectLocationMap> {
  late MapController mapController;
  double initZoom = INITIAL_ZOOM;
  final RxBool showLimit = false.obs;
  Rx<String> selectedCity = ''.obs;

  late LocationInfo locationInfo;
  SaleApartemanServerModel saleApartemanServerModel =
      SaleApartemanServerModel();

  @override
  void initState() {
    super.initState();
    mapController = MapController();
    locationInfo = widget.lastLocation ??
        LocationInfo(
            location: const LatLng(35.699287, 51.338028),
            cityName: "تهران",
            locationName: "آزادی",
            formatted_address: '');
  }

  Future<void> getUserCurrentLocation() async {
    final permissionResult = await Geolocator.requestPermission();
    if (permissionResult == LocationPermission.always ||
        permissionResult == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        locationInfo.location = LatLng(position.latitude, position.longitude);
        mapController.move(locationInfo.location, initZoom);
        _getLocationInfo();
      });
    }
  }

  void zoomOut() {
    setState(() {
      initZoom -= 1;
      mapController.move(locationInfo.location, initZoom);
    });
  }

  void zoomIn() {
    setState(() {
      initZoom += 1;
      mapController.move(locationInfo.location, initZoom);
    });
  }

  void _getLocationInfo() async {
    try {
      final response = await Dio().get(
        '$API_URL?lat=${locationInfo.location.latitude}&lng=${locationInfo.location.longitude}',
        options: Options(headers: {"Api-Key": API_KEY}),
      );
      final data = response.data;
      setState(() {
        locationInfo.cityName = data["city"] ?? '';
        locationInfo.locationName =
            data["neighbourhood"] ?? data["place"] ?? data["route_name"] ?? '';
        locationInfo.formatted_address = data["formatted_address"] ?? '';
        selectedCity.value = locationInfo.cityName;
      });
    } catch (_) {
      Fluttertoast.showToast(
        msg: "خطا در ارزیابی آدرس، دوباره تلاش کنید، اینترنت خود را بررسی کنید",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            mapController: mapController,
            options: MapOptions(
              center: locationInfo.location,
              zoom: initZoom,
              maxZoom: 18,
              keepAlive: true,
              onPositionChanged: (position, hasGesture) {
                if (position.center != null) {
                  setState(() {
                    locationInfo.location = LatLng(
                      position.center!.latitude,
                      position.center!.longitude,
                    );
                  });
                }
              },
              interactionOptions: const InteractionOptions(
                enableMultiFingerGestureRace: true,
                enableScrollWheel: true,
              ),
              onTap: (tapPosition, point) {
                Fluttertoast.showToast(
                  msg: "برای انتخاب محدوده پیوسته فشار دهید",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0,
                );
              },
              onLongPress: (tapPosition, point) {
                setState(() {
                  locationInfo.location =
                      LatLng(point.latitude, point.longitude);
                  _getLocationInfo();
                });
              },
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              Obx(
                () => showLimit.value
                    ? CircleLayer(
                        circles: [
                          CircleMarker(
                            point: locationInfo.location,
                            radius: 70,
                            borderStrokeWidth: 3,
                            borderColor: Colors.blueAccent,
                            color: Colors.white54,
                          )
                        ],
                      )
                    : const SizedBox.shrink(),
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: locationInfo.location,
                    width: 45,
                    height: 45,
                    child: Obx(
                      () => showLimit.isTrue
                          ? const Icon(
                              Icons.circle,
                              color: Colors.blue,
                            )
                          : Image.asset("assets/images/Group 1279.png"),
                    ),
                  ),
                ],
              ),
            ],
          ),
          _buildTopLeftIconButton(),
          _buildBottomRightSwitch(),
          _buildLocationSelection(),
          _buildZoomControls(),
        ],
      ),
    );
  }

  Widget _buildTopLeftIconButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 10),
        child: IconButton(
          icon: SvgPicture.asset('assets/images/left_icon.svg'),
          onPressed: () => Get.back(),
        ),
      ),
    );
  }

  Widget _buildBottomRightSwitch() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(
              "محدوده ملک\n را نـشان بـده",
              style: TextStyle(
                fontFamily: MAIN_FONT_FAMILY,
                fontSize: 12,
                color: Color.fromRGBO(48, 48, 48, 1),
              ),
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
            const SizedBox(width: 10),
            Container(
              width: 45,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(165, 161, 161, 0.247),
                    blurRadius: 10,
                    offset: Offset(-2, 0),
                  ),
                ],
              ),
              child: Transform.scale(
                scale: 0.9,
                child: Obx(
                  () => Switch(
                    onChanged: (value) => showLimit.value = value,
                    value: showLimit.value,
                    activeColor: Colors.white,
                    activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                    inactiveThumbColor: const Color.fromRGBO(255, 255, 255, 1),
                    inactiveTrackColor:
                        const Color.fromARGB(255, 204, 204, 204),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationSelection() {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNeighbourhoodSelector(),
          _buildCitySelector(),
        ],
      ),
    );
  }

  Widget _buildNeighbourhoodSelector() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Text(
            "انتخاب محله ",
            style: TextStyle(
              color: Color.fromRGBO(99, 99, 99, 1),
              fontSize: 14,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => Get.to(() => Neighbourhood()),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 158, 147, 147),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
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
                        locationInfo.locationName,
                        style: const TextStyle(
                          fontFamily: 'Iran Sans',
                          color: Color.fromRGBO(48, 48, 48, 1),
                          fontWeight: FontWeight.w400,
                        ),
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
    );
  }

  Widget _buildCitySelector() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          GestureDetector(
            onTap: () async {
              var selectedCityId = await Get.to(() => CityWidget(selectedCity));
              if (selectedCityId != null && selectedCityId.isNotEmpty) {
                setState(() {
                  locationInfo.cityName = selectedCityId;
                  saleApartemanServerModel.cityId = selectedCityId;
                });
              }
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: const Color.fromARGB(255, 158, 147, 147),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
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
                        child: Obx(
                          () => Text(
                            selectedCity.value.isEmpty
                                ? 'شهر را انتخاب کنید'
                                : selectedCity.value,
                            style: const TextStyle(
                              fontFamily: 'Iran Sans Bold',
                              color: Color.fromRGBO(48, 48, 48, 1),
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
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
    );
  }

  Widget _buildZoomControls() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    getUserCurrentLocation();
                  },
                  icon: SizedBox(
                    height: 50,
                    width: 50,
                    child: SvgPicture.asset("assets/images/icon zoom.svg"),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    widget.onSelect(locationInfo);
                  },
                  icon: SizedBox(
                    height: 65,
                    width: 65,
                    child: SvgPicture.asset("assets/images/Ok.svg"),
                  ),
                ),
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
                    child: SvgPicture.asset("assets/images/icon -.svg"),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    zoomIn();
                  },
                  icon: SizedBox(
                    width: 50,
                    height: 50,
                    child: SvgPicture.asset("assets/images/icon +.svg"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
