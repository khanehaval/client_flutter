import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/location_Info.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/select_location_on_map.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

class MapInfoPage extends StatefulWidget {
  late LocationInfo locationInfo;

  MapInfoPage(this.locationInfo);

  @override
  State<MapInfoPage> createState() => _MapInfoPageState();
}

class _MapInfoPageState extends State<MapInfoPage> {
  final SaleApartemanServerModel saleApartemanServerModel =
      SaleApartemanServerModel();

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
    _addressController =
        TextEditingController(text: locationInfo.formatted_address);
    super.initState();
  }

  @override
  void dispose() {
    _addressController.dispose();
    super.dispose();
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
              color: const Color.fromRGBO(183, 183, 183, 1),
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
                        initialZoom: 14,
                        maxZoom: 18,
                        interactiveFlags: InteractiveFlag.pinchZoom |
                            InteractiveFlag.doubleTapZoom |
                            InteractiveFlag.rotate,
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
                                  saleApartemanServerModel.location;
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
                        MarkerLayer(
                          markers: [
                            Marker(
                                point: locationInfo.location,
                                width: 60,
                                height: 60,
                                child: IconButton(
                                    onPressed: () {
                                      Get.to(() => SelectLocationMap(
                                            lastLocation: locationInfo,
                                            onSelect: (_) {
                                              Get.back();
                                              locationInfo = _;
                                              _mapController.move(
                                                  locationInfo.location, 13);
                                              _addressController.text =
                                                  locationInfo
                                                      .formatted_address;
                                              saleApartemanServerModel.location;
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "انتخاب محله ",
                    style: TextStyle(
                      color: Color.fromRGBO(207, 207, 207, 1),
                      fontSize: 12,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    saleApartemanServerModel.cityId;
                  },
                  child: Container(
                      width: Get.width * 0.42,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(207, 207, 207, 1),
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
                                      color: Color.fromRGBO(207, 207, 207, 1),
                                      fontWeight: FontWeight.w600),
                                  locationInfo.locationName,
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
            const SizedBox(
              width: 6,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    "*انتخاب شهر",
                    style: TextStyle(
                        color: Color.fromRGBO(207, 207, 207, 1),
                        fontSize: 12,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 41,
                  width: getPageWidth(),
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(207, 207, 207, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: GestureDetector(
                      onTap: () {
                        saleApartemanServerModel.cityId;
                      },
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
                                    color: Color.fromRGBO(207, 207, 207, 1),
                                    fontWeight: FontWeight.w400),
                                locationInfo.cityName, // نمایش نام شهر
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
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.centerRight,
          child: Text(
            "توضیحات آدرس ",
            style: TextStyle(
                color: Color.fromRGBO(99, 99, 99, 1),
                fontSize: 12,
                fontFamily: MAIN_FONT_FAMILY),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextField(
            onTap: () {
              saleApartemanServerModel.description;
            },
            style: const TextStyle(
              fontFamily: MAIN_FONT_FAMILY,
            ),
            focusNode: FocusNode(),
            controller: _addressController,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'برای مثال: خیابان گلستان،کوچه احمدی،پلاک 2',
              hintStyle: const TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12,
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
