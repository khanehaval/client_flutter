import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/select_location_on_map.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class MapInfoPage extends StatefulWidget {
  LocationInfo locationInfo;

  MapInfoPage(this.locationInfo);

  @override
  State<MapInfoPage> createState() => _MapInfoPageState();
}

class _MapInfoPageState extends State<MapInfoPage> {
  var locationInfo = LocationInfo(
      location: LatLng(0, 0),
      cityName: "",
      locationName: "",
      formatted_address: "");

  final _mapController = MapController();

  TextEditingController _addressController = TextEditingController();

  @override
  void initState() {
    locationInfo = widget.locationInfo;
    _addressController.text = widget.locationInfo.formatted_address;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "ثبت آگهی اکونومی",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontFamily: MAIN_FONT_FAMILY),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: Get.width * 2 / 3,
          height: Get.width * 2 / 3,
          decoration: BoxDecoration(
              color: Color.fromRGBO(183, 183, 183, 1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: FlutterMap(
                      mapController: _mapController,
                      options: MapOptions(
                        initialCenter: locationInfo.location,
                        initialZoom: 12,
                        maxZoom: 18,
                        keepAlive: true,
                        interactionOptions: const InteractionOptions(
                            enableMultiFingerGestureRace: true,
                            enableScrollWheel: true),
                        onTap: (tapPosition, point) {
                          Get.to(() => SelectLocationMap(
                                lastLocation: locationInfo,
                                onSelect: (_) {
                                  Get.back();
                                  locationInfo = _;
                                  _mapController.move(
                                      locationInfo.location, 16);
                                  _addressController.text =
                                      locationInfo.formatted_address;

                                  setState(() {});
                                },
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
                              point: locationInfo.location,
                              radius: 100,
                              useRadiusInMeter: true,
                              color: Colors.green.withOpacity(0.3),
                            )
                          ],
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                                point: locationInfo.location,
                                width: 52,
                                height: 67,
                                child: IconButton(
                                    onPressed: () {
                                      Get.to(() => SelectLocationMap(
                                            lastLocation: locationInfo,
                                            onSelect: (_) {
                                              Get.back();
                                              locationInfo = _;
                                              _mapController.move(
                                                  locationInfo.location, 16);
                                              _addressController.text =
                                                  locationInfo
                                                      .formatted_address;
                                              setState(() {});
                                            },
                                          ));
                                    },
                                    icon: Image.asset(
                                        "assets/images/Group 1279.png"))),
                          ],
                        ),
                      ],
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => SelectLocationMap);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: SvgPicture.asset(
                        'assets/images/Notif.svg',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
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
                      color: Color.fromRGBO(99, 99, 99, 1),
                      fontSize: 16,
                      fontFamily: 'Iran Sans',
                      fontWeight: FontWeight.w500),
                ),
                Container(
                    width: Get.width * 0.4,
                    height: 41,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(166, 166, 166, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                style: const TextStyle(
                                    fontFamily: 'Iran Sans Bold,',
                                    fontWeight: FontWeight.w400),
                                locationInfo.locationName,
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "*انتخاب شهر",
                  style: TextStyle(
                      color: Color.fromRGBO(99, 99, 99, 1),
                      fontSize: 16,
                      fontFamily: 'Iran Sans',
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
                Container(
                  height: 41,
                  width: getPageWidth(),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(166, 166, 166, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Text(
                                style: const TextStyle(
                                    fontFamily: 'Iran Sans Bold,',
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                    fontWeight: FontWeight.w400),
                                locationInfo.cityName,
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
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "توضیحات",
            style: TextStyle(
                color: Color.fromRGBO(226, 226, 226, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontFamily: MAIN_FONT_FAMILY),
          ),
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextField(
            controller: _addressController,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'برای مثال: پلاک 9، طبقه اول، واحد 2',
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(166, 166, 166, 1)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(23, 102, 175, 1),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Color.fromRGBO(23, 102, 175, 1),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
