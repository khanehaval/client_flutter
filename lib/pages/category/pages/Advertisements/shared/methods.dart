import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

showAdvertisment(AdvertismentModel advertismentModel) {
  showGeneralDialog(
    pageBuilder: (_, __, ___) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                bottom: 100, left: 50, right: 50, top: 220),
            child: Transform.translate(
              offset: const Offset(0, 20),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Stack(
                  fit: StackFit.passthrough,
                  // alignment: Alignment.topCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: 300,
                                  child: Image.asset(
                                    "assets/images/pic.png",
                                    fit: BoxFit.cover,
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
                                      top: 170, right: 10),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: SvgPicture.asset(
                                      "assets/images/save.svg",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 170, right: 40),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: SvgPicture.asset(
                                      "assets/images/loc and cam.svg",
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 170, left: 5),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: SvgPicture.asset(
                                      "assets/images/announcement.svg",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: SvgPicture.asset(
                                    "assets/images/total price.svg",
                                  ),
                                ),
                                const SizedBox(
                                  width: 50,
                                ),
                                const Text(
                                  "...ویلا 100 متری در زمین 250 متری",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontFamily: MAIN_FONT_FAMILY,
                                      color: Color.fromRGBO(99, 99, 99, 1)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/price.svg",
                                ),
                                Container(
                                    child: SvgPicture.asset(
                                  "assets/images/property1.svg",
                                  width: 10,
                                  height: 19,
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: SvgPicture.asset(
                                    "assets/images/Sqm.svg",
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 130,
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/images/delete.svg",
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
                      backgroundColor: const Color.fromRGBO(0, 189, 97, 1)),
                  onPressed: () {},
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        CupertinoIcons.back,
                        color: Colors.white,
                      ),
                      SizedBox(),
                      Text(
                        "قبلی",
                        style: TextStyle(
                            color: Colors.white, fontFamily: MAIN_FONT_FAMILY),
                      ),
                    ],
                  )),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(23, 102, 175, 1),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "بعدی",
                        style: TextStyle(
                            color: Colors.white, fontFamily: MAIN_FONT_FAMILY),
                      ),
                      SizedBox(),
                      Icon(
                        CupertinoIcons.forward,
                        color: Colors.white,
                      ),
                    ],
                  )),
            ],
          ),
        ],
      );
    },
    context: Get.context!,
  );
}
