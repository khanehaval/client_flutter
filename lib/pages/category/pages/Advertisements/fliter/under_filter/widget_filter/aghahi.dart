import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

Widget viewaghahi() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40), topRight: Radius.circular(40)),
    ),
    child: SingleChildScrollView(
      child: Column(children: [
        Transform.translate(
          offset: const Offset(0, 0),
          child: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Stack(
                fit: StackFit.passthrough,
                // alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromRGBO(250, 250, 250, 1)),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: 362,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // You can adjust the radius value as needed
                                    child: Image.asset(
                                      "assets/images/pic.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right:10.0,top: 5),
                                    child: SvgPicture.asset(
                                      "assets/images/Score.svg",
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:10.0,top: 5),
                                    child: SvgPicture.asset(
                                      "assets/images/Pic Number.svg",
                                    ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: Column(children: [
            Transform.translate(
              offset: const Offset(0, 20),
              child: Container(
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Stack(
                  fit: StackFit.passthrough,
                  // alignment: Alignment.topCenter,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromRGBO(250, 250, 250, 1)),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height: 200,
                                  width: 362,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // You can adjust the radius value as needed
                                    child: Image.asset(
                                      "assets/images/pic.png",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(right:10.0,top: 5),
                                    child: SvgPicture.asset(
                                      "assets/images/Score.svg",
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left:10.0,top: 5),
                                    child: SvgPicture.asset(
                                      "assets/images/Pic Number.svg",
                                    ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ]),
        ),
      ]),
    ),
  );
}
