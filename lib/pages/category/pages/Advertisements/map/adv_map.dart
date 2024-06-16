import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/aghahi.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/methods.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AdvMap extends StatelessWidget {
  final _buildDateController = TextEditingController();

  RxList<AdvertismentModel> advertisements;

  AdvMap(this.advertisements, {super.key});
  @override
  Widget build(BuildContext context) {
    return DraggableHome(
        backgroundColor: Colors.white,
        bottomNavigationBar: bottomNavigationBar1(),
        stretchTriggerOffset: 100,
        headerExpandedHeight: 0.83,
        stretchMaxHeight: 0.86,
        headerBottomBar: const SizedBox.shrink(),
        title: const SizedBox.shrink(),
        headerWidget: Stack(
          children: [
            FlutterMap(
              options: MapOptions(
                initialZoom: 13,
                initialCenter: advertisements.first.location,
                maxZoom: 14,
                keepAlive: true,
                interactionOptions: const InteractionOptions(
                    enableMultiFingerGestureRace: true,
                    enableScrollWheel: true),
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                    markers: advertisements
                        .map(
                          (adv) => Marker(
                            alignment: Alignment.center,
                            point: adv.location,
                            width: 300,
                            height: 67,
                            child: GestureDetector(
                              onTap: () {
                                showAdvertisment(adv);
                              },
                              child: Stack(
                                // textDirection: TextDirection.rtl,
                                alignment: Alignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showAdvertisment(adv);
                                    },
                                    child: SvgPicture.asset(
                                      'assets/images/LOCATION.svg',
                                      width: 98,
                                      height: 50,
                                    ),
                                  ),
                                  Container(
                                    child: const Padding(
                                      padding:
                                          EdgeInsets.only(bottom: 15, left: 30),
                                      child: Text(
                                        "شخصی",
                                        style: TextStyle(
                                            fontFamily: MAIN_FONT_FAMILY,
                                            color:
                                                Color.fromRGBO(48, 48, 48, 1),
                                            fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                        .toList()),
              ],
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 15),
                child: IconButton(
                    onPressed: () {},
                    icon: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/images/icon zoom.png"))),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 43, left: 295),
                child: IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                      height: 70,
                      width: 70,
                      child: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            blurRadius: 5,
                          )
                        ]),
                        child: SvgPicture.asset(
                          "assets/images/list - consultant.svg",
                        ),
                      )),
                ),
              ),
            ),
          ],
        ),
        body: [
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromRGBO(166, 166, 166, 1)),
                          borderRadius: BorderRadius.circular(10)),
                      width: 37,
                      height: 2,
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "خرید و فروش، رهن و اجاره انواع املاک در تهران",
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY,
                            fontSize: 12,
                            color: Color.fromRGBO(99, 99, 99, 1)),
                      ),
                    ],
                  ),
                  Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 10,
                        )
                      ]),
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [viewaghahi()],
                      )),
                ],
              ))
        ]);
  }

  Color getColor(AdvertismentType type) {
    switch (type) {
      case AdvertismentType.PERSONAL:
        return Colors.green;
      case AdvertismentType.AMALAK:
        return const Color.fromARGB(255, 245, 18, 2);
      case AdvertismentType.REAL_ESTATE:
        return Colors.blue;
    }
  }
}
