import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

showAdvertisment(AdvertismentModel advertismentModel) {
  showGeneralDialog(
    pageBuilder: (_, __, ___) {
      return Column(
        children: [
          Transform.translate(
            offset: const Offset(0, 50),
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Stack(
                  fit: StackFit.passthrough,
                  // alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(60.0),
                      child: Container(
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
                                    padding: const EdgeInsets.only(
                                        top: 170, left: 5),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    width: 40,
                                    child: SvgPicture.asset(
                                      "assets/images/total price.svg",
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Text(
                                    "...ویلا 100 متری در زمین 250 متری",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontFamily: MAIN_FONT_FAMILY,
                                        color: Color.fromRGBO(99, 99, 99, 1)),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 50,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(
                                    "assets/images/price.svg",
                                    height: 19,
                                  ),
                                  Container(
                                      child: SvgPicture.asset(
                                    "assets/images/property1.svg",
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
                    ),
                    Positioned(
                      left: 177,
                      top: 40,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
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
