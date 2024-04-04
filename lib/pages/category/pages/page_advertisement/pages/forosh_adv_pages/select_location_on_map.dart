import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/pages/forosh_adv_pages/sale_home2.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map1.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';

class SelectLocationOnMap extends StatefulWidget {
  const SelectLocationOnMap({super.key});

  @override
  State<SelectLocationOnMap> createState() => _SelectLocationOnMapState();
}

class _SelectLocationOnMapState extends State<SelectLocationOnMap> {
  bool isChecked = false;
  final _selected = 0.obs;
  MapController mapController = MapController();
  double initZoom = 12;
  final _currentCenter = const LatLng(35.699287, 51.338028).obs;
  List<LatLng> selectedPins = [];
  String address = "";
  final showLimit = false.obs;

  final cityName = "تهران".obs;
  final locationName = "آزادی".obs;

  final type = "".obs;

  void _onLocationSelected(LocationInfo info) {
    cityName.value = info.cityName;
    locationName.value = info.locationName;
    _currentCenter.value = info.location;
    mapController.move(_currentCenter.value, initZoom);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "ثبت آگهی اکونومی",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: MAIN_FONT_FAMILY),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 284,
                height: 254,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: GRADIANT_COLOR),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        child: Obx(() => FlutterMap(
                              mapController: mapController,
                              options: MapOptions(
                                initialCenter: _currentCenter.value,
                                initialZoom: initZoom,
                                maxZoom: 18,
                                keepAlive: true,
                                interactionOptions: const InteractionOptions(
                                    enableMultiFingerGestureRace: true,
                                    enableScrollWheel: true),
                                onTap: (tapPosition, point) {
                                  Get.to(() => Map1(
                                        lastLocation: LocationInfo(
                                            location: _currentCenter.value,
                                            cityName: cityName.value,
                                            locationName: locationName.value),
                                        onSelect: _onLocationSelected,
                                      ));
                                },
                              ),
                              children: [
                                TileLayer(
                                  urlTemplate:
                                      'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                  userAgentPackageName: 'com.example.app',
                                ),
                                CircleLayer(
                                  circles: [
                                    CircleMarker(
                                      point: _currentCenter.value,
                                      radius: 100,
                                      useRadiusInMeter: true,
                                      color: Colors.green.withOpacity(0.3),
                                    )
                                  ],
                                ),
                                MarkerLayer(
                                  markers: [
                                    Marker(
                                        point: _currentCenter.value,
                                        width: 52,
                                        height: 67,
                                        child: IconButton(
                                            onPressed: () {
                                              Get.to(() => Map1(
                                                    lastLocation: LocationInfo(
                                                        location: _currentCenter
                                                            .value,
                                                        cityName:
                                                            cityName.value,
                                                        locationName:
                                                            locationName.value),
                                                    onSelect:
                                                        _onLocationSelected,
                                                  ));
                                            },
                                            icon: Image.asset(
                                                "assets/images/Group 1279.png"))),
                                  ],
                                ),
                              ],
                            )),
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "برای تغییر آدرس انتخابی رو نقشه ضربه بزنید",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.deepOrangeAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "انتخاب محله ",
                        style: TextStyle(
                          color: Color.fromRGBO(166, 166, 166, 1),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 41,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Obx(() => Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        locationName.value,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ))),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "*انتخاب شهر",
                        style:
                            TextStyle(color: Color.fromRGBO(166, 166, 166, 1)),
                        textAlign: TextAlign.start,
                      ),
                      Container(
                        height: 41,
                        width: MediaQuery.of(context).size.width * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Obx(() => Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Text(
                                      cityName.value,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Directionality(
                textDirection: TextDirection.rtl,
                child: TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      label: const Text(
                        "آدرس",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            color: Color.fromRGBO(166, 166, 166, 1)),
                        textAlign: TextAlign.right,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "نوع ملک شما",
                  style: TextStyle(
                    color: Color.fromRGBO(
                      166,
                      166,
                      166,
                      1,
                    ),
                    fontSize: 12,
                    fontFamily: MAIN_FONT_FAMILY,
                  ),
                ),
              ),
              SwitchItem(type: type, items: const ["سوئیت", "برج", "پنت هاوس"]),
              const SizedBox(
                height: 65,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => SaleHome2());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "...تایید و ادامه",
                      style: _selected.value == 0
                          ? const TextStyle(
                              fontSize: 20,
                              fontFamily: MAIN_FONT_FAMILY,
                              color: Colors.black38,
                            )
                          : const TextStyle(
                              fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                    ),
                    Icon(
                      Icons.double_arrow,
                      color: _selected.value == 0
                          ? Colors.black54
                          : const Color.fromRGBO(76, 140, 237, 1),
                      size: 35,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget buildaAppBar() {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
      ),
      onPressed: () => Get.back(),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Get.to(
            () => Profile(),
          );
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(60)),
          child: const Padding(
            padding: EdgeInsets.all(5.0),
            child: Icon(
              Icons.person_2_rounded,
              size: 30,
            ),
          ),
        ),
      ),
    ],
  );
}
