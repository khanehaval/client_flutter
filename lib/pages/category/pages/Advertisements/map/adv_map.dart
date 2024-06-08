import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/methods.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/fliter/under_filter/widget_filter/aghahi.dart';
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
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            initialZoom: 13,
            initialCenter: advertisements.first.location,
            maxZoom: 14,
            keepAlive: true,
            interactionOptions: const InteractionOptions(
                enableMultiFingerGestureRace: true, enableScrollWheel: true),
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
                                  height: 48,
                                ),
                              ),
                              Container(
                                child: const Padding(
                                  padding:
                                      EdgeInsets.only(bottom: 15, left: 30),
                                  child: Text("شخصی"),
                                ),
                              )
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
            padding: const EdgeInsets.only(bottom: 155, left: 15),
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
            padding: const EdgeInsets.only(bottom: 150, left: 295),
            child: IconButton(
              onPressed: () {},
              icon: SizedBox(
                  height: 70,
                  width: 70,
                  child: SvgPicture.asset(
                    "assets/images/list - consultant.svg",
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 680),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: GestureDetector(
              onTap: () {
                aghahi((aghahi) => _buildDateController.text = aghahi);
              },
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromRGBO(166, 166, 166, 1)),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(10)),
                  width: 383,
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromRGBO(166, 166, 166, 1)),
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(10)),
                        width: 37,
                        height: 2,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 60, top: 20),
                  child: Text(
                    "خرید و فروش، رهن و اجاره انواع املاک در تهران",
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12,
                        color: Color.fromRGBO(99, 99, 99, 1)),
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
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
