import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/shared/methods.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class AdvMap extends StatelessWidget {
  RxList<AdvertismentModel> advertisements;

  AdvMap(this.advertisements);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FlutterMap(
          options: MapOptions(
            initialZoom: 14,
            initialCenter: advertisements.first.location,
            maxZoom: 18,
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
                    .map((adv) => Marker(
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
                                Icon(
                                  Icons.location_on,
                                  size: 80,
                                  color: getColor(adv.type),
                                ),
                                Positioned(
                                  left: 132,
                                  top: 15,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 1),
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: getColor(adv.type),
                                              ),
                                              Text(
                                                adv.title,
                                                textDirection:
                                                    TextDirection.ltr,
                                              ),
                                            ],
                                          ),
                                        )),
                                  ),
                                ),
                              ],
                            ))))
                    .toList()),
          ],
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 100, left: 15),
            child: IconButton(
                onPressed: () {},
                icon: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset("assets/images/icon zoom.png"))),
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
