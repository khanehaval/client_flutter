import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget showAdvertisment(AdvertismentModel advertismentModel, Function onTap) {
  return SafeArea(
    child: Column(
      children: [
        Transform.translate(
          offset: const Offset(20, 60),
          child: Padding(
            padding: const EdgeInsets.only(top: 90, right: 40, bottom: 70),
            child: Container(
              width: 350,
              height: 400,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30)
                        .copyWith(top: 130, bottom: 30),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  width: 300,
                                  child: Image.asset(
                                    "assets/images/pic.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SvgPicture.asset(
                                    "assets/images/Score.svg",
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SvgPicture.asset(
                                    "assets/images/Pic Number.svg",
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 115, right: 10),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: SvgPicture.asset(
                                      "assets/images/save.svg",
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 115, right: 30),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: SvgPicture.asset(
                                      "assets/images/loc and cam.svg",
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 115, left: 5),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SvgPicture.asset(
                                      "assets/images/announcement.svg",
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: SvgPicture.asset(
                                      "assets/images/total price.svg"),
                                ),
                                const SizedBox(width: 20),
                                const Text(
                                  "...ویلا 100 متری در زمین 250 متری",
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Color.fromRGBO(99, 99, 99, 1),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/price.svg",
                                  height: 20,
                                  width: 20,
                                ),
                                SvgPicture.asset(
                                  "assets/images/property1.svg",
                                  height: 15,
                                  width: 15,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SvgPicture.asset(
                                    "assets/images/Sqm.svg",
                                    width: 20,
                                    height: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 160,
                    top: 110,
                    child: GestureDetector(
                      onTap: () {
                        onTap();
                      },
                      child: SvgPicture.asset(
                        "assets/images/delete.svg",
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(0, 189, 97, 1),
              ),
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(CupertinoIcons.back, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    "قبلی",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(23, 102, 175, 1),
              ),
              onPressed: () {},
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "بعدی",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(CupertinoIcons.forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

void deleteAdvertsment() {
  return null;
}
