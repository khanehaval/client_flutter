import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

showAdvertisment(AdvertismentModel advertismentModel) {
  showGeneralDialog(
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return SafeArea(child: Builder(
          builder: (context) {
            return Column(
              children: [
                Transform.translate(
                  offset: const Offset(20, 60),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 90, right: 40, bottom: 70),
                    child: Container(
                      width: 350,
                      height: 400,
                      decoration:
                          const BoxDecoration(color: Colors.transparent),
                      child: Stack(
                        // alignment: Alignment.topCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 130, right: 30, bottom: 30, left: 30),
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
                                          padding: const EdgeInsets.only(
                                              top: 115, left: 5),
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
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 20,
                                          width: 20,
                                          child: SvgPicture.asset(
                                            "assets/images/total price.svg",
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        const Text(
                                          "...ویلا 100 متری در زمین 250 متری",
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontFamily: MAIN_FONT_FAMILY,
                                              color: Color.fromRGBO(
                                                  99, 99, 99, 1)),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 30,
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SvgPicture.asset(
                                          "assets/images/price.svg",
                                          height: 20,
                                          width: 20,
                                        ),
                                        Container(
                                            child: SvgPicture.asset(
                                          "assets/images/property1.svg",
                                          height: 15,
                                          width: 15,
                                        ))
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
                                    )
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
                                Get.back();
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
                            backgroundColor:
                                const Color.fromRGBO(0, 189, 97, 1)),
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
                                  color: Colors.white,
                                  fontFamily: MAIN_FONT_FAMILY),
                            ),
                          ],
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(23, 102, 175, 1),
                        ),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "بعدی",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: MAIN_FONT_FAMILY),
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
        ));
      },
      barrierDismissible: false,
      context: Get.context!);
}
